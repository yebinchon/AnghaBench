#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int avail_in; int avail_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/ * next_in; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  zipfileFree ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *pCtx,          /* Store result here */
  const u8 *aIn,                  /* Compressed data */
  int nIn,                        /* Size of buffer aIn[] in bytes */
  int nOut                        /* Expected output size */
){
  u8 *aRes = FUNC5(nOut);
  if( aRes==0 ){
    FUNC7(pCtx);
  }else{
    int err;
    z_stream str;
    FUNC3(&str, 0, sizeof(str));

    str.next_in = (Byte*)aIn;
    str.avail_in = nIn;
    str.next_out = (Byte*)aRes;
    str.avail_out = nOut;

    err = FUNC2(&str, -15);
    if( err!=Z_OK ){
      FUNC8(pCtx, "inflateInit2() failed (%d)", err);
    }else{
      err = FUNC0(&str, Z_NO_FLUSH);
      if( err!=Z_STREAM_END ){
        FUNC8(pCtx, "inflate() failed (%d)", err);
      }else{
        FUNC6(pCtx, aRes, nOut, zipfileFree);
        aRes = 0;
      }
    }
    FUNC4(aRes);
    FUNC1(&str);
  }
}