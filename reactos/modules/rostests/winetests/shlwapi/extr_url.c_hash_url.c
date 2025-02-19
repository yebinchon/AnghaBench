
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef char const* LPCSTR ;
typedef int LPBYTE ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int FreeWideString (int ) ;
 int GetWideString (char const*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,int,...) ;
 scalar_t__ pUrlHashA (char const*,int ,int) ;
 scalar_t__ pUrlHashW (int ,int ,int) ;

__attribute__((used)) static void hash_url(const char* szUrl)
{
  LPCSTR szTestUrl = szUrl;
  LPWSTR wszTestUrl = GetWideString(szTestUrl);
  HRESULT res;

  DWORD cbSize = sizeof(DWORD);
  DWORD dwHash1, dwHash2;
  res = pUrlHashA(szTestUrl, (LPBYTE)&dwHash1, cbSize);
  ok(res == S_OK, "UrlHashA returned 0x%x (expected S_OK) for %s\n", res, szUrl);
  if (pUrlHashW) {
    res = pUrlHashW(wszTestUrl, (LPBYTE)&dwHash2, cbSize);
    ok(res == S_OK, "UrlHashW returned 0x%x (expected S_OK) for %s\n", res, szUrl);
    ok(dwHash1 == dwHash2,
        "Hashes didn't match (A: 0x%x, W: 0x%x) for %s\n", dwHash1, dwHash2, szUrl);
  }
  FreeWideString(wszTestUrl);

}
