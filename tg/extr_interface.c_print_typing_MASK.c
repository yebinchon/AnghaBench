#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct in_ev {int dummy; } ;
typedef  enum tgl_typing_status { ____Placeholder_tgl_typing_status } tgl_typing_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in_ev*,char*) ; 
#define  tgl_typing_cancel 138 
#define  tgl_typing_choose_contact 137 
#define  tgl_typing_geo 136 
#define  tgl_typing_none 135 
#define  tgl_typing_record_audio 134 
#define  tgl_typing_record_video 133 
#define  tgl_typing_typing 132 
#define  tgl_typing_upload_audio 131 
#define  tgl_typing_upload_document 130 
#define  tgl_typing_upload_photo 129 
#define  tgl_typing_upload_video 128 

void FUNC1 (struct in_ev *ev, enum tgl_typing_status status) {
  switch (status) {
  case tgl_typing_none:
    FUNC0 (ev, "doing nothing");
    break;
  case tgl_typing_typing:
    FUNC0 (ev, "typing");
    break;
  case tgl_typing_cancel:
    FUNC0 (ev, "deleting typed message");
    break;
  case tgl_typing_record_video:
    FUNC0 (ev, "recording video");
    break;
  case tgl_typing_upload_video:
    FUNC0 (ev, "uploading video");
    break;
  case tgl_typing_record_audio:
    FUNC0 (ev, "recording audio");
    break;
  case tgl_typing_upload_audio:
    FUNC0 (ev, "uploading audio");
    break;
  case tgl_typing_upload_photo:
    FUNC0 (ev, "uploading photo");
    break;
  case tgl_typing_upload_document:
    FUNC0 (ev, "uploading document");
    break;
  case tgl_typing_geo:
    FUNC0 (ev, "choosing location");
    break;
  case tgl_typing_choose_contact:
    FUNC0 (ev, "choosing contact");
    break;
  }
}