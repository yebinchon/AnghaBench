
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ yyStackEntry ;
struct TYPE_3__ {int yystksz; scalar_t__* yystack; scalar_t__* yytos; scalar_t__ yystk0; } ;
typedef TYPE_1__ yyParser ;
typedef int pNew ;


 int fprintf (scalar_t__,char*,char*,int,int) ;
 scalar_t__* malloc (int) ;
 scalar_t__* realloc (scalar_t__*,int) ;
 scalar_t__ yyTraceFILE ;
 char* yyTracePrompt ;

__attribute__((used)) static int yyGrowStack(yyParser *p){
  int newSize;
  int idx;
  yyStackEntry *pNew;

  newSize = p->yystksz*2 + 100;
  idx = p->yytos ? (int)(p->yytos - p->yystack) : 0;
  if( p->yystack==&p->yystk0 ){
    pNew = malloc(newSize*sizeof(pNew[0]));
    if( pNew ) pNew[0] = p->yystk0;
  }else{
    pNew = realloc(p->yystack, newSize*sizeof(pNew[0]));
  }
  if( pNew ){
    p->yystack = pNew;
    p->yytos = &p->yystack[idx];

    if( yyTraceFILE ){
      fprintf(yyTraceFILE,"%sStack grows from %d to %d entries.\n",
              yyTracePrompt, p->yystksz, newSize);
    }

    p->yystksz = newSize;
  }
  return pNew==0;
}
