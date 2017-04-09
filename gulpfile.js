var gulp = require('gulp');
var riot = require('gulp-riot');
var connect = require('gulp-connect');

gulp.task('build', function () {
	gulp.src('./src/*.html')
		.pipe(riot())
		.pipe(gulp.dest('./dist'));
});

gulp.task('watch', function () {
	gulp.watch('./src/*.html', ['build']);
});

gulp.task('connect', function () {
	connect.server({
		root: '.'
	});
});

gulp.task('default', ['connect', 'watch']);
