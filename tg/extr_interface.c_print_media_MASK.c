#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  longitude; int /*<<< orphan*/  latitude; } ;
struct TYPE_9__ {int title; int address; int provider; int venue_id; TYPE_3__ geo; } ;
struct TYPE_7__ {int /*<<< orphan*/  longitude; int /*<<< orphan*/  latitude; } ;
struct tgl_message_media {int type; int caption; int flags; int mime_type; int duration; int size; int phone; int url; int title; int description; int author; TYPE_4__ venue; struct tgl_message_media* webpage; int /*<<< orphan*/  last_name; int /*<<< orphan*/  first_name; TYPE_2__ geo; TYPE_1__* encr_document; struct tgl_message_media* document; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_5__* photo; } ;
struct in_ev {int dummy; } ;
struct TYPE_10__ {int caption; } ;
struct TYPE_6__ {int flags; int caption; int mime_type; int duration; int size; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_RED ; 
 int TGLDF_AUDIO ; 
 int TGLDF_IMAGE ; 
 int TGLDF_STICKER ; 
 int TGLDF_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct tgl_message_media*) ; 
 int /*<<< orphan*/  FUNC1 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
#define  tgl_message_media_audio 138 
#define  tgl_message_media_contact 137 
#define  tgl_message_media_document 136 
#define  tgl_message_media_document_encr 135 
#define  tgl_message_media_geo 134 
#define  tgl_message_media_none 133 
#define  tgl_message_media_photo 132 
#define  tgl_message_media_unsupported 131 
#define  tgl_message_media_venue 130 
#define  tgl_message_media_video 129 
#define  tgl_message_media_webpage 128 

void FUNC5 (struct in_ev *ev, struct tgl_message_media *M) {
  FUNC0 (M);
  switch (M->type) {
    case tgl_message_media_none:
      return;
    case tgl_message_media_photo:
      if (!M->photo) {
        FUNC2 (ev, "[photo bad]");
      } else if (M->photo->caption && FUNC4 (M->photo->caption)) {
        FUNC2 (ev, "[photo %s]", M->photo->caption);
      } else {
        FUNC2 (ev, "[photo]");
      }
      if (M->caption) {
        FUNC2 (ev, " %s", M->caption);
      }
      return;
    case tgl_message_media_document:
    case tgl_message_media_audio:
    case tgl_message_media_video:
      FUNC2 (ev, "[");
      FUNC0 (M->document);
      if (M->document->flags & TGLDF_IMAGE) {
        FUNC2 (ev, "image");
      } else if (M->document->flags & TGLDF_AUDIO) {
        FUNC2 (ev, "audio");
      } else if (M->document->flags & TGLDF_VIDEO) {
        FUNC2 (ev, "video");
      } else if (M->document->flags & TGLDF_STICKER) {
        FUNC2 (ev, "sticker");
      } else {
        FUNC2 (ev, "document");
      }

      if (M->document->caption && FUNC4 (M->document->caption)) {
        FUNC2 (ev, " %s:", M->document->caption);
      } else {
        FUNC2 (ev, ":");
      }
      
      if (M->document->mime_type) {
        FUNC2 (ev, " type=%s", M->document->mime_type);
      }

      if (M->document->w && M->document->h) {
        FUNC2 (ev, " size=%dx%d", M->document->w, M->document->h);
      }

      if (M->document->duration) {
        FUNC2 (ev, " duration=%d", M->document->duration);
      }
      
      FUNC2 (ev, " size=");
      if (M->document->size < (1 << 10)) {
        FUNC2 (ev, "%dB", M->document->size);
      } else if (M->document->size < (1 << 20)) {
        FUNC2 (ev, "%dKiB", M->document->size >> 10);
      } else if (M->document->size < (1 << 30)) {
        FUNC2 (ev, "%dMiB", M->document->size >> 20);
      } else {
        FUNC2 (ev, "%dGiB", M->document->size >> 30);
      }
      
      FUNC2 (ev, "]");
      
      if (M->caption) {
        FUNC2 (ev, " %s", M->caption);
      }

      return;
    case tgl_message_media_document_encr:
      FUNC2 (ev, "[");
      if (M->encr_document->flags & TGLDF_IMAGE) {
        FUNC2 (ev, "image");
      } else if (M->encr_document->flags & TGLDF_AUDIO) {
        FUNC2 (ev, "audio");
      } else if (M->encr_document->flags & TGLDF_VIDEO) {
        FUNC2 (ev, "video");
      } else if (M->encr_document->flags & TGLDF_STICKER) {
        FUNC2 (ev, "sticker");
      } else {
        FUNC2 (ev, "document");
      }

      if (M->encr_document->caption && FUNC4 (M->encr_document->caption)) {
        FUNC2 (ev, " %s:", M->encr_document->caption);
      } else {
        FUNC2 (ev, ":");
      }
      
      if (M->encr_document->mime_type) {
        FUNC2 (ev, " type=%s", M->encr_document->mime_type);
      }

      if (M->encr_document->w && M->encr_document->h) {
        FUNC2 (ev, " size=%dx%d", M->encr_document->w, M->encr_document->h);
      }

      if (M->encr_document->duration) {
        FUNC2 (ev, " duration=%d", M->encr_document->duration);
      }
      
      FUNC2 (ev, " size=");
      if (M->encr_document->size < (1 << 10)) {
        FUNC2 (ev, "%dB", M->encr_document->size);
      } else if (M->encr_document->size < (1 << 20)) {
        FUNC2 (ev, "%dKiB", M->encr_document->size >> 10);
      } else if (M->encr_document->size < (1 << 30)) {
        FUNC2 (ev, "%dMiB", M->encr_document->size >> 20);
      } else {
        FUNC2 (ev, "%dGiB", M->encr_document->size >> 30);
      }
      
      FUNC2 (ev, "]");

      return;
    case tgl_message_media_geo:
      FUNC2 (ev, "[geo https://maps.google.com/?q=%.6lf,%.6lf]", M->geo.latitude, M->geo.longitude);
      return;
    case tgl_message_media_contact:
      FUNC2 (ev, "[contact] ");
      FUNC3 (ev, COLOR_RED);
      FUNC2 (ev, "%s %s ", M->first_name, M->last_name);
      FUNC1 (ev);
      FUNC2 (ev, "%s", M->phone);
      return;
    case tgl_message_media_unsupported:
      FUNC2 (ev, "[unsupported]");
      return;
    case tgl_message_media_webpage:
      FUNC2 (ev, "[webpage:");
      FUNC0 (M->webpage);
      if (M->webpage->url) {
        FUNC2 (ev, " url:'%s'", M->webpage->url);
      }
      if (M->webpage->title) {
        FUNC2 (ev, " title:'%s'", M->webpage->title);
      }
      if (M->webpage->description) {
        FUNC2 (ev, " description:'%s'", M->webpage->description);
      }
      if (M->webpage->author) {
        FUNC2 (ev, " author:'%s'", M->webpage->author);
      }
      FUNC2 (ev, "]");
      break;
    case tgl_message_media_venue:
      FUNC2 (ev, "[geo https://maps.google.com/?q=%.6lf,%.6lf", M->venue.geo.latitude, M->venue.geo.longitude);
      
      if (M->venue.title) {
        FUNC2 (ev, " title:'%s'", M->venue.title);
      }
      
      if (M->venue.address) {
        FUNC2 (ev, " address:'%s'", M->venue.address);
      }
      if (M->venue.provider) {
        FUNC2 (ev, " provider:'%s'", M->venue.provider);
      }
      if (M->venue.venue_id) {
        FUNC2 (ev, " id:'%s'", M->venue.venue_id);
      }

      FUNC2 (ev, "]");
      return;
      
    default:
      FUNC2 (ev, "x = %d\n", M->type);
      FUNC0 (0);
  }
}