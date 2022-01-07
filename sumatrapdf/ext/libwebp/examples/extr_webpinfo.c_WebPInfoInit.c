
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPInfo ;


 int memset (int * const,int ,int) ;

__attribute__((used)) static void WebPInfoInit(WebPInfo* const webp_info) {
  memset(webp_info, 0, sizeof(*webp_info));
}
