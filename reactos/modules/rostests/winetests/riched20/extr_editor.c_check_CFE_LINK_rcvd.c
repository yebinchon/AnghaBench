
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int check_CFE_LINK_selection (int ,int ,int) ;
 int ok (int,char*,char const*) ;

__attribute__((used)) static void check_CFE_LINK_rcvd(HWND hwnd, BOOL is_url, const char * url)
{
  BOOL link_present = FALSE;

  link_present = check_CFE_LINK_selection(hwnd, 0, 1);
  if (is_url)
  {
    ok(link_present, "URL Case: CFE_LINK not set for [%s].\n", url);
  }
  else
  {
    ok(!link_present, "Non-URL Case: CFE_LINK set for [%s].\n", url);
  }
}
