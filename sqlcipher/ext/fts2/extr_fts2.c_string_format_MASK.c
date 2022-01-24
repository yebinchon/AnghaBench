#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(const char *zFormat,
                           const char *zDb, const char *zName){
  const char *p;
  size_t len = 0;
  size_t nDb = FUNC3(zDb);
  size_t nName = FUNC3(zName);
  size_t nFullTableName = nDb+1+nName;
  char *result;
  char *r;

  /* first compute length needed */
  for(p = zFormat ; *p ; ++p){
    len += (*p=='%' ? nFullTableName : 1);
  }
  len += 1;  /* for null terminator */

  r = result = FUNC2(len);
  for(p = zFormat; *p; ++p){
    if( *p=='%' ){
      FUNC1(r, zDb, nDb);
      r += nDb;
      *r++ = '.';
      FUNC1(r, zName, nName);
      r += nName;
    } else {
      *r++ = *p;
    }
  }
  *r++ = '\0';
  FUNC0( r == result + len );
  return result;
}