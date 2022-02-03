/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import '../modal_recover/modal_recover_style.dart';
import '../screen_email/screen_email_style.dart';
import '../screen_inbox/screen_inbox_style.dart';
import '../screen_intro/screen_intro_style.dart';
import '../screen_terms/screen_terms_style.dart';

class FlowStyle {
  ScreenIntroStyle intro;
  ScreenTermsStyle terms;
  ScreenInboxStyle inbox;
  ScreenEmailStyle email;
  ModalRecoverStyle recover;

  FlowStyle(
      {ScreenIntroStyle? intro,
      ScreenTermsStyle? terms,
      ScreenInboxStyle? inbox,
      ScreenEmailStyle? email,
      ModalRecoverStyle? recover})
      : this.intro = intro ?? ScreenIntroStyle(),
        this.terms = terms ?? ScreenTermsStyle(),
        this.inbox = inbox ?? ScreenInboxStyle(),
        this.email = email ?? ScreenEmailStyle(),
        this.recover = recover ?? ModalRecoverStyle();
}