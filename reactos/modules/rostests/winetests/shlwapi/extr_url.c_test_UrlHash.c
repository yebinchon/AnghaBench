
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_URL_1 ;
 int TEST_URL_2 ;
 int TEST_URL_3 ;
 int hash_url (int ) ;
 int pUrlHashA ;
 int win_skip (char*) ;

__attribute__((used)) static void test_UrlHash(void)
{
  if (!pUrlHashA) {
    win_skip("UrlHashA not found\n");
    return;
  }

  hash_url(TEST_URL_1);
  hash_url(TEST_URL_2);
  hash_url(TEST_URL_3);
}
