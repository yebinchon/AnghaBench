#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int h; } ;
typedef  TYPE_1__ unixFile ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int i64 ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TIMER_ELAPSED ; 
 int /*<<< orphan*/  TIMER_END ; 
 int /*<<< orphan*/  TIMER_START ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int FUNC3 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,void*,int,scalar_t__) ; 
 int FUNC5 (int,void*,int,scalar_t__) ; 
 int FUNC6 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(unixFile *id, sqlite3_int64 offset, void *pBuf, int cnt){
  int got;
  int prior = 0;
#if (!defined(USE_PREAD) && !defined(USE_PREAD64))
  i64 newOffset;
#endif
  TIMER_START;
  FUNC2( cnt==(cnt&0x1ffff) );
  FUNC2( id->h>2 );
  do{
#if defined(USE_PREAD)
    got = osPread(id->h, pBuf, cnt, offset);
    SimulateIOError( got = -1 );
#elif defined(USE_PREAD64)
    got = osPread64(id->h, pBuf, cnt, offset);
    SimulateIOError( got = -1 );
#else
    newOffset = FUNC3(id->h, offset, SEEK_SET);
    FUNC1( newOffset = -1 );
    if( newOffset<0 ){
      FUNC7((unixFile*)id, errno);
      return -1;
    }
    got = FUNC6(id->h, pBuf, cnt);
#endif
    if( got==cnt ) break;
    if( got<0 ){
      if( errno==EINTR ){ got = 1; continue; }
      prior = 0;
      FUNC7((unixFile*)id,  errno);
      break;
    }else if( got>0 ){
      cnt -= got;
      offset += got;
      prior += got;
      pBuf = (void*)(got + (char*)pBuf);
    }
  }while( got>0 );
  TIMER_END;
  FUNC0(("READ    %-3d %5d %7lld %llu\n",
            id->h, got+prior, offset-prior, TIMER_ELAPSED));
  return got+prior;
}