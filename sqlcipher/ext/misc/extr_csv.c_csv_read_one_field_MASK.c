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
struct TYPE_6__ {size_t n; int cTerm; int nLine; char* z; scalar_t__ bNotFirst; } ;
typedef  TYPE_1__ CsvReader ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,char) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static char *FUNC3(CsvReader *p){
  int c;
  p->n = 0;
  c = FUNC2(p);
  if( c==EOF ){
    p->cTerm = EOF;
    return 0;
  }
  if( c=='"' ){
    int pc, ppc;
    int startLine = p->nLine;
    pc = ppc = 0;
    while( 1 ){
      c = FUNC2(p);
      if( c<='"' || pc=='"' ){
        if( c=='\n' ) p->nLine++;
        if( c=='"' ){
          if( pc=='"' ){
            pc = 0;
            continue;
          }
        }
        if( (c==',' && pc=='"')
         || (c=='\n' && pc=='"')
         || (c=='\n' && pc=='\r' && ppc=='"')
         || (c==EOF && pc=='"')
        ){
          do{ p->n--; }while( p->z[p->n]!='"' );
          p->cTerm = (char)c;
          break;
        }
        if( pc=='"' && c!='\r' ){
          FUNC1(p, "line %d: unescaped %c character", p->nLine, '"');
          break;
        }
        if( c==EOF ){
          FUNC1(p, "line %d: unterminated %c-quoted field\n",
                     startLine, '"');
          p->cTerm = (char)c;
          break;
        }
      }
      if( FUNC0(p, (char)c) ) return 0;
      ppc = pc;
      pc = c;
    }
  }else{
    /* If this is the first field being parsed and it begins with the
    ** UTF-8 BOM  (0xEF BB BF) then skip the BOM */
    if( (c&0xff)==0xef && p->bNotFirst==0 ){
      FUNC0(p, (char)c);
      c = FUNC2(p);
      if( (c&0xff)==0xbb ){
        FUNC0(p, (char)c);
        c = FUNC2(p);
        if( (c&0xff)==0xbf ){
          p->bNotFirst = 1;
          p->n = 0;
          return FUNC3(p);
        }
      }
    }
    while( c>',' || (c!=EOF && c!=',' && c!='\n') ){
      if( FUNC0(p, (char)c) ) return 0;
      c = FUNC2(p);
    }
    if( c=='\n' ){
      p->nLine++;
      if( p->n>0 && p->z[p->n-1]=='\r' ) p->n--;
    }
    p->cTerm = (char)c;
  }
  if( p->z ) p->z[p->n] = 0;
  p->bNotFirst = 1;
  return p->z;
}