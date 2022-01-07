
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPDecParams ;


 int memset (int * const,int ,int) ;

void WebPResetDecParams(WebPDecParams* const params) {
  if (params != ((void*)0)) {
    memset(params, 0, sizeof(*params));
  }
}
