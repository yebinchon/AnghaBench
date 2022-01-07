
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;



__attribute__((used)) static wchar_t* _ToWChar(const char* buf, wchar_t *wbuf, size_t wbufSize) {
  wchar_t *wcur = wbuf;
  wchar_t *wend = wbuf + wbufSize - 1;
  for (; wcur != wend && *buf != 0; ++buf, ++wcur)
    *wcur = *buf;
  *wcur = 0;
  return wbuf;
}
