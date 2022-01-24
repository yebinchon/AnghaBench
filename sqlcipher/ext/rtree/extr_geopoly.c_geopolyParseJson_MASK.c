#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  s ;
struct TYPE_9__ {unsigned char const* z; int nVertex; int nAlloc; scalar_t__* a; int /*<<< orphan*/  nErr; } ;
struct TYPE_8__ {int nVertex; unsigned char* hdr; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ GeoPoly ;
typedef  TYPE_2__ GeoParse ;
typedef  scalar_t__ GeoCoord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__*) ; 
 char FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC7 (scalar_t__*,int) ; 

__attribute__((used)) static GeoPoly *FUNC8(const unsigned char *z, int *pRc){
  GeoParse s;
  int rc = SQLITE_OK;
  FUNC4(&s, 0, sizeof(s));
  s.z = z;
  if( FUNC2(&s)=='[' ){
    s.z++;
    while( FUNC2(&s)=='[' ){
      int ii = 0;
      char c;
      s.z++;
      if( s.nVertex>=s.nAlloc ){
        GeoCoord *aNew;
        s.nAlloc = s.nAlloc*2 + 16;
        aNew = FUNC7(s.a, s.nAlloc*sizeof(GeoCoord)*2 );
        if( aNew==0 ){
          rc = SQLITE_NOMEM;
          s.nErr++;
          break;
        }
        s.a = aNew;
      }
      while( FUNC1(&s, ii<=1 ? &s.a[s.nVertex*2+ii] : 0) ){
        ii++;
        if( ii==2 ) s.nVertex++;
        c = FUNC2(&s);
        s.z++;
        if( c==',' ) continue;
        if( c==']' && ii>=2 ) break;
        s.nErr++;
        rc = SQLITE_ERROR;
        goto parse_json_err;
      }
      if( FUNC2(&s)==',' ){
        s.z++;
        continue;
      }
      break;
    }
    if( FUNC2(&s)==']'
     && s.nVertex>=4
     && s.a[0]==s.a[s.nVertex*2-2]
     && s.a[1]==s.a[s.nVertex*2-1]
     && (s.z++, FUNC2(&s)==0)
    ){
      GeoPoly *pOut;
      int x = 1;
      s.nVertex--;  /* Remove the redundant vertex at the end */
      pOut = FUNC6( FUNC0((sqlite3_int64)s.nVertex) );
      x = 1;
      if( pOut==0 ) goto parse_json_err;
      pOut->nVertex = s.nVertex;
      FUNC3(pOut->a, s.a, s.nVertex*2*sizeof(GeoCoord));
      pOut->hdr[0] = *(unsigned char*)&x;
      pOut->hdr[1] = (s.nVertex>>16)&0xff;
      pOut->hdr[2] = (s.nVertex>>8)&0xff;
      pOut->hdr[3] = s.nVertex&0xff;
      FUNC5(s.a);
      if( pRc ) *pRc = SQLITE_OK;
      return pOut;
    }else{
      s.nErr++;
      rc = SQLITE_ERROR;
    }
  }
parse_json_err:
  if( pRc ) *pRc = rc;
  FUNC5(s.a);
  return 0;
}