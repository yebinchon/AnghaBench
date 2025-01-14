
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int longitude; int latitude; } ;
struct TYPE_9__ {int title; int address; int provider; int venue_id; TYPE_3__ geo; } ;
struct TYPE_7__ {int longitude; int latitude; } ;
struct tgl_message_media {int type; int caption; int flags; int mime_type; int duration; int size; int phone; int url; int title; int description; int author; TYPE_4__ venue; struct tgl_message_media* webpage; int last_name; int first_name; TYPE_2__ geo; TYPE_1__* encr_document; struct tgl_message_media* document; int h; int w; TYPE_5__* photo; } ;
struct in_ev {int dummy; } ;
struct TYPE_10__ {int caption; } ;
struct TYPE_6__ {int flags; int caption; int mime_type; int duration; int size; int h; int w; } ;


 int COLOR_RED ;
 int TGLDF_AUDIO ;
 int TGLDF_IMAGE ;
 int TGLDF_STICKER ;
 int TGLDF_VIDEO ;
 int assert (struct tgl_message_media*) ;
 int mpop_color (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,...) ;
 int mpush_color (struct in_ev*,int ) ;
 int strlen (int) ;
void print_media (struct in_ev *ev, struct tgl_message_media *M) {
  assert (M);
  switch (M->type) {
    case 133:
      return;
    case 132:
      if (!M->photo) {
        mprintf (ev, "[photo bad]");
      } else if (M->photo->caption && strlen (M->photo->caption)) {
        mprintf (ev, "[photo %s]", M->photo->caption);
      } else {
        mprintf (ev, "[photo]");
      }
      if (M->caption) {
        mprintf (ev, " %s", M->caption);
      }
      return;
    case 136:
    case 138:
    case 129:
      mprintf (ev, "[");
      assert (M->document);
      if (M->document->flags & TGLDF_IMAGE) {
        mprintf (ev, "image");
      } else if (M->document->flags & TGLDF_AUDIO) {
        mprintf (ev, "audio");
      } else if (M->document->flags & TGLDF_VIDEO) {
        mprintf (ev, "video");
      } else if (M->document->flags & TGLDF_STICKER) {
        mprintf (ev, "sticker");
      } else {
        mprintf (ev, "document");
      }

      if (M->document->caption && strlen (M->document->caption)) {
        mprintf (ev, " %s:", M->document->caption);
      } else {
        mprintf (ev, ":");
      }

      if (M->document->mime_type) {
        mprintf (ev, " type=%s", M->document->mime_type);
      }

      if (M->document->w && M->document->h) {
        mprintf (ev, " size=%dx%d", M->document->w, M->document->h);
      }

      if (M->document->duration) {
        mprintf (ev, " duration=%d", M->document->duration);
      }

      mprintf (ev, " size=");
      if (M->document->size < (1 << 10)) {
        mprintf (ev, "%dB", M->document->size);
      } else if (M->document->size < (1 << 20)) {
        mprintf (ev, "%dKiB", M->document->size >> 10);
      } else if (M->document->size < (1 << 30)) {
        mprintf (ev, "%dMiB", M->document->size >> 20);
      } else {
        mprintf (ev, "%dGiB", M->document->size >> 30);
      }

      mprintf (ev, "]");

      if (M->caption) {
        mprintf (ev, " %s", M->caption);
      }

      return;
    case 135:
      mprintf (ev, "[");
      if (M->encr_document->flags & TGLDF_IMAGE) {
        mprintf (ev, "image");
      } else if (M->encr_document->flags & TGLDF_AUDIO) {
        mprintf (ev, "audio");
      } else if (M->encr_document->flags & TGLDF_VIDEO) {
        mprintf (ev, "video");
      } else if (M->encr_document->flags & TGLDF_STICKER) {
        mprintf (ev, "sticker");
      } else {
        mprintf (ev, "document");
      }

      if (M->encr_document->caption && strlen (M->encr_document->caption)) {
        mprintf (ev, " %s:", M->encr_document->caption);
      } else {
        mprintf (ev, ":");
      }

      if (M->encr_document->mime_type) {
        mprintf (ev, " type=%s", M->encr_document->mime_type);
      }

      if (M->encr_document->w && M->encr_document->h) {
        mprintf (ev, " size=%dx%d", M->encr_document->w, M->encr_document->h);
      }

      if (M->encr_document->duration) {
        mprintf (ev, " duration=%d", M->encr_document->duration);
      }

      mprintf (ev, " size=");
      if (M->encr_document->size < (1 << 10)) {
        mprintf (ev, "%dB", M->encr_document->size);
      } else if (M->encr_document->size < (1 << 20)) {
        mprintf (ev, "%dKiB", M->encr_document->size >> 10);
      } else if (M->encr_document->size < (1 << 30)) {
        mprintf (ev, "%dMiB", M->encr_document->size >> 20);
      } else {
        mprintf (ev, "%dGiB", M->encr_document->size >> 30);
      }

      mprintf (ev, "]");

      return;
    case 134:
      mprintf (ev, "[geo https://maps.google.com/?q=%.6lf,%.6lf]", M->geo.latitude, M->geo.longitude);
      return;
    case 137:
      mprintf (ev, "[contact] ");
      mpush_color (ev, COLOR_RED);
      mprintf (ev, "%s %s ", M->first_name, M->last_name);
      mpop_color (ev);
      mprintf (ev, "%s", M->phone);
      return;
    case 131:
      mprintf (ev, "[unsupported]");
      return;
    case 128:
      mprintf (ev, "[webpage:");
      assert (M->webpage);
      if (M->webpage->url) {
        mprintf (ev, " url:'%s'", M->webpage->url);
      }
      if (M->webpage->title) {
        mprintf (ev, " title:'%s'", M->webpage->title);
      }
      if (M->webpage->description) {
        mprintf (ev, " description:'%s'", M->webpage->description);
      }
      if (M->webpage->author) {
        mprintf (ev, " author:'%s'", M->webpage->author);
      }
      mprintf (ev, "]");
      break;
    case 130:
      mprintf (ev, "[geo https://maps.google.com/?q=%.6lf,%.6lf", M->venue.geo.latitude, M->venue.geo.longitude);

      if (M->venue.title) {
        mprintf (ev, " title:'%s'", M->venue.title);
      }

      if (M->venue.address) {
        mprintf (ev, " address:'%s'", M->venue.address);
      }
      if (M->venue.provider) {
        mprintf (ev, " provider:'%s'", M->venue.provider);
      }
      if (M->venue.venue_id) {
        mprintf (ev, " id:'%s'", M->venue.venue_id);
      }

      mprintf (ev, "]");
      return;

    default:
      mprintf (ev, "x = %d\n", M->type);
      assert (0);
  }
}
