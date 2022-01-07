
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_CP_LEN ;
 size_t MAX_CTRY_LEN ;
 size_t MAX_LANG_LEN ;
 int _STLP_STRNCPY (char*,size_t,char const*,size_t) ;
 size_t strcspn (char const*,char*) ;

int __ParseLocaleString(const char* lname,
                        char* lang, char* ctry, char* page) {
  int param = 0;
  size_t len;
  size_t tmpLen;

  if (lname[0] == 0)
    return 0;


  len = strcspn(lname, "_");
  if (lname[len] == '_') {
    if (len == 0 || len > MAX_LANG_LEN) return -1;
    _STLP_STRNCPY(lang, MAX_LANG_LEN + 1, lname, len);
    lname += len + 1;
    ++param;
  }


  len = -1;
  tmpLen = strcspn(lname, ".");
  while (lname[tmpLen] == '.') {
    len = tmpLen; ++tmpLen;
    tmpLen += strcspn(lname + tmpLen, ".");
  }
  if (len != -1) {
    if (param == 0) {

      if (len > MAX_LANG_LEN) return -1;
      if (len == 0) {

        ++param;
      }
      else
      { _STLP_STRNCPY(lang, MAX_LANG_LEN + 1, lname, len); }
      ++param;
    }
    else {

      if (len == 0) return -1;
      if (len > MAX_CTRY_LEN) return -1;
      _STLP_STRNCPY(ctry, MAX_CTRY_LEN + 1, lname, len);
    }
    ++param;
    lname += len + 1;
  }


  len = strcspn(lname, ",");
  switch (param) {
    case 0:
      if (len > MAX_LANG_LEN) return -1;
      _STLP_STRNCPY(lang, MAX_LANG_LEN + 1, lname, len);
      break;
    case 1:
      if (len > MAX_CTRY_LEN) return -1;
      _STLP_STRNCPY(ctry, MAX_CTRY_LEN + 1, lname, len);
      break;
    default:
      if (len > MAX_CP_LEN) return -1;
      _STLP_STRNCPY(page, MAX_CP_LEN + 1, lname, len);
      break;
  }


  return 0;
}
