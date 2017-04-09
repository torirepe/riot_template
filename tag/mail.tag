<mail>
  <style>
    mail input{
      width:200px;
      padding:10px;
    }
    mail label{
      padding:10px;
    }
  </style>

  <div>
    <label>mail</label>
    <input id="mail_input" type="mail" value={address}>
    <input id="button_input" type="button" value="OK" onclick={click}>
  </div>
  <p>入力されたアドレスは {out_mail} です。</p>

  <script>
    // mailタグの中で使う変数を定義
    this.address="test@test";
    this.out_mail="";

    // クリックイベント
    click(e){
      // #mail_inputの値を取得する。
      this.out_mail = this.mail_input.value;
    }
  </script>

</mail>