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
typedef  int u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;

/* Variables and functions */
 int SQLITE_CONSTRAINT ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int S_IFDIR ; 
 int S_IFLNK ; 
 int S_IFREG ; 
 char* FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(
  sqlite3_value *pVal, 
  int bIsDir,                     /* If true, default to directory */
  u32 *pMode,                     /* OUT: Mode value */
  char **pzErr                    /* OUT: Error message */
){
  const char *z = (const char*)FUNC2(pVal);
  u32 mode = 0;
  if( z==0 ){
    mode = (bIsDir ? (S_IFDIR + 0755) : (S_IFREG + 0644));
  }else if( z[0]>='0' && z[0]<='9' ){
    mode = (unsigned int)FUNC1(pVal);
  }else{
    const char zTemplate[11] = "-rwxrwxrwx";
    int i;
    if( FUNC3(z)!=10 ) goto parse_error;
    switch( z[0] ){
      case '-': mode |= S_IFREG; break;
      case 'd': mode |= S_IFDIR; break;
      case 'l': mode |= S_IFLNK; break;
      default: goto parse_error;
    }
    for(i=1; i<10; i++){
      if( z[i]==zTemplate[i] ) mode |= 1 << (9-i);
      else if( z[i]!='-' ) goto parse_error;
    }
  }
  if( ((mode & S_IFDIR)==0)==bIsDir ){
    /* The "mode" attribute is a directory, but data has been specified.
    ** Or vice-versa - no data but "mode" is a file or symlink.  */
    *pzErr = FUNC0("zipfile: mode does not match data");
    return SQLITE_CONSTRAINT;
  }
  *pMode = mode;
  return SQLITE_OK;

 parse_error:
  *pzErr = FUNC0("zipfile: parse error in mode: %s", z);
  return SQLITE_ERROR;
}