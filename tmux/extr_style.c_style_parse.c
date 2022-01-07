
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int fg; int bg; int attr; int flags; } ;
struct style {int fill; TYPE_1__ gc; int align; int range_argument; int range_type; int list; int default_type; } ;
struct grid_cell {int fg; int bg; int attr; int flags; } ;
struct TYPE_4__ {int align; int range_type; } ;


 int STYLE_ALIGN_CENTRE ;
 int STYLE_ALIGN_LEFT ;
 int STYLE_ALIGN_RIGHT ;
 int STYLE_DEFAULT_POP ;
 int STYLE_DEFAULT_PUSH ;
 int STYLE_LIST_FOCUS ;
 int STYLE_LIST_LEFT_MARKER ;
 int STYLE_LIST_OFF ;
 int STYLE_LIST_ON ;
 int STYLE_LIST_RIGHT_MARKER ;
 int STYLE_RANGE_LEFT ;
 int STYLE_RANGE_RIGHT ;
 int STYLE_RANGE_WINDOW ;
 int atoi (char*) ;
 int attributes_fromstring (char*) ;
 int colour_fromstring (char*) ;
 int isdigit (int ) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char const*,char const) ;
 size_t strcspn (char const*,char const*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 scalar_t__ strspn (char const*,char const*) ;
 int style_copy (struct style*,struct style*) ;
 TYPE_2__ style_default ;

int
style_parse(struct style *sy, const struct grid_cell *base, const char *in)
{
 struct style saved;
 const char delimiters[] = " ,", *cp;
 char tmp[256], *found;
 int value;
 size_t end;

 if (*in == '\0')
  return (0);
 style_copy(&saved, sy);

 do {
  while (*in != '\0' && strchr(delimiters, *in) != ((void*)0))
   in++;
  if (*in == '\0')
   break;

  end = strcspn(in, delimiters);
  if (end > (sizeof tmp) - 1)
   goto error;
  memcpy(tmp, in, end);
  tmp[end] = '\0';

  if (strcasecmp(tmp, "default") == 0) {
   sy->gc.fg = base->fg;
   sy->gc.bg = base->bg;
   sy->gc.attr = base->attr;
   sy->gc.flags = base->flags;
  } else if (strcasecmp(tmp, "push-default") == 0)
   sy->default_type = STYLE_DEFAULT_PUSH;
  else if (strcasecmp(tmp, "pop-default") == 0)
   sy->default_type = STYLE_DEFAULT_POP;
  else if (strcasecmp(tmp, "nolist") == 0)
   sy->list = STYLE_LIST_OFF;
  else if (strncasecmp(tmp, "list=", 5) == 0) {
   if (strcasecmp(tmp + 5, "on") == 0)
    sy->list = STYLE_LIST_ON;
   else if (strcasecmp(tmp + 5, "focus") == 0)
    sy->list = STYLE_LIST_FOCUS;
   else if (strcasecmp(tmp + 5, "left-marker") == 0)
    sy->list = STYLE_LIST_LEFT_MARKER;
   else if (strcasecmp(tmp + 5, "right-marker") == 0)
    sy->list = STYLE_LIST_RIGHT_MARKER;
   else
    goto error;
  } else if (strcasecmp(tmp, "norange") == 0) {
   sy->range_type = style_default.range_type;
   sy->range_argument = style_default.range_type;
  } else if (end > 6 && strncasecmp(tmp, "range=", 6) == 0) {
   found = strchr(tmp + 6, '|');
   if (found != ((void*)0)) {
    *found++ = '\0';
    if (*found == '\0')
     goto error;
    for (cp = found; *cp != '\0'; cp++) {
     if (!isdigit((u_char)*cp))
      goto error;
    }
   }
   if (strcasecmp(tmp + 6, "left") == 0) {
    if (found != ((void*)0))
     goto error;
    sy->range_type = STYLE_RANGE_LEFT;
    sy->range_argument = 0;
   } else if (strcasecmp(tmp + 6, "right") == 0) {
    if (found != ((void*)0))
     goto error;
    sy->range_type = STYLE_RANGE_RIGHT;
    sy->range_argument = 0;
   } else if (strcasecmp(tmp + 6, "window") == 0) {
    if (found == ((void*)0))
     goto error;
    sy->range_type = STYLE_RANGE_WINDOW;
    sy->range_argument = atoi(found);
   }
  } else if (strcasecmp(tmp, "noalign") == 0)
   sy->align = style_default.align;
  else if (end > 6 && strncasecmp(tmp, "align=", 6) == 0) {
   if (strcasecmp(tmp + 6, "left") == 0)
    sy->align = STYLE_ALIGN_LEFT;
   else if (strcasecmp(tmp + 6, "centre") == 0)
    sy->align = STYLE_ALIGN_CENTRE;
   else if (strcasecmp(tmp + 6, "right") == 0)
    sy->align = STYLE_ALIGN_RIGHT;
   else
    goto error;
  } else if (end > 5 && strncasecmp(tmp, "fill=", 5) == 0) {
   if ((value = colour_fromstring(tmp + 5)) == -1)
    goto error;
   sy->fill = value;
  } else if (end > 3 && strncasecmp(tmp + 1, "g=", 2) == 0) {
   if ((value = colour_fromstring(tmp + 3)) == -1)
    goto error;
   if (*in == 'f' || *in == 'F') {
    if (value != 8)
     sy->gc.fg = value;
    else
     sy->gc.fg = base->fg;
   } else if (*in == 'b' || *in == 'B') {
    if (value != 8)
     sy->gc.bg = value;
    else
     sy->gc.bg = base->bg;
   } else
    goto error;
  } else if (strcasecmp(tmp, "none") == 0)
   sy->gc.attr = 0;
  else if (end > 2 && strncasecmp(tmp, "no", 2) == 0) {
   if ((value = attributes_fromstring(tmp + 2)) == -1)
    goto error;
   sy->gc.attr &= ~value;
  } else {
   if ((value = attributes_fromstring(tmp)) == -1)
    goto error;
   sy->gc.attr |= value;
  }

  in += end + strspn(in + end, delimiters);
 } while (*in != '\0');

 return (0);

error:
 style_copy(sy, &saved);
 return (-1);
}
