
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (char const*) ;
 int strncat (char*,char const*,size_t) ;
 int strncpy (char*,char const*,size_t) ;

void luaO_chunkid (char *out, const char *source, size_t bufflen) {
  if (*source == '=') {
    strncpy(out, source+1, bufflen);
    out[bufflen-1] = '\0';
  }
  else {
    if (*source == '@') {
      size_t l;
      source++;
      bufflen -= sizeof(" '...' ");
      l = strlen(source);
      strcpy(out, "");
      if (l > bufflen) {
        source += (l-bufflen);
        strcat(out, "...");
      }
      strcat(out, source);
    }
    else {
      size_t len = strcspn(source, "\n\r");
      bufflen -= sizeof(" [string \"...\"] ");
      if (len > bufflen) len = bufflen;
      strcpy(out, "[string \"");
      if (source[len] != '\0') {
        strncat(out, source, len);
        strcat(out, "...");
      }
      else
        strcat(out, source);
      strcat(out, "\"]");
    }
  }
}
