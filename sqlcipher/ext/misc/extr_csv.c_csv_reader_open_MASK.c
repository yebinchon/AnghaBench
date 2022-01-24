#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* zIn; scalar_t__ in; int /*<<< orphan*/  nIn; } ;
typedef  TYPE_1__ CsvReader ;

/* Variables and functions */
 int /*<<< orphan*/  CSV_INBUFSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
  CsvReader *p,               /* The reader to open */
  const char *zFilename,      /* Read from this filename */
  const char *zData           /*  ... or use this data */
){
  if( zFilename ){
    p->zIn = FUNC5( CSV_INBUFSZ );
    if( p->zIn==0 ){
      FUNC1(p, "out of memory");
      return 1;
    }
    p->in = FUNC3(zFilename, "rb");
    if( p->in==0 ){
      FUNC4(p->zIn);
      FUNC2(p);
      FUNC1(p, "cannot open '%s' for reading", zFilename);
      return 1;
    }
  }else{
    FUNC0( p->in==0 );
    p->zIn = (char*)zData;
    p->nIn = FUNC6(zData);
  }
  return 0;
}