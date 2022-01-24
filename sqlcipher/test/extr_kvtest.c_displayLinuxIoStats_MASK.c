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
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  aTrans ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC8(FILE *out){
  FILE *in;
  char z[200];
  FUNC5(sizeof(z), z, "/proc/%d/io", FUNC4());
  in = FUNC2(z, "rb");
  if( in==0 ) return;
  while( FUNC1(z, sizeof(z), in)!=0 ){
    static const struct {
      const char *zPattern;
      const char *zDesc;
    } aTrans[] = {
      { "rchar: ",                  "Bytes received by read():" },
      { "wchar: ",                  "Bytes sent to write():"    },
      { "syscr: ",                  "Read() system calls:"      },
      { "syscw: ",                  "Write() system calls:"     },
      { "read_bytes: ",             "Bytes read from storage:"  },
      { "write_bytes: ",            "Bytes written to storage:" },
      { "cancelled_write_bytes: ",  "Cancelled write bytes:"    },
    };
    int i;
    for(i=0; i<sizeof(aTrans)/sizeof(aTrans[0]); i++){
      int n = (int)FUNC6(aTrans[i].zPattern);
      if( FUNC7(aTrans[i].zPattern, z, n)==0 ){
        FUNC3(out, "%-36s %s", aTrans[i].zDesc, &z[n]);
        break;
      }
    }
  }
  FUNC0(in);
}