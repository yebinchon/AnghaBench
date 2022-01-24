#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
typedef  int sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  Tcl_WideInt ;
struct TYPE_28__ {scalar_t__ bytes; TYPE_2__* typePtr; } ;
typedef  TYPE_3__ Tcl_Obj ;
struct TYPE_29__ {int eType; int /*<<< orphan*/  interp; int /*<<< orphan*/  useEvalObjv; TYPE_1__* pDb; TYPE_3__* pScript; } ;
struct TYPE_27__ {char* name; } ;
struct TYPE_26__ {char* zNull; } ;
typedef  TYPE_4__ SqlFunc ;

/* Variables and functions */
#define  SQLITE_BLOB 131 
#define  SQLITE_FLOAT 130 
#define  SQLITE_INTEGER 129 
#define  SQLITE_NULL 128 
 int SQLITE_TEXT ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  TCL_EVAL_DIRECT ; 
 int /*<<< orphan*/  TCL_OK ; 
 int TCL_RETURN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,double*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_3__*,int*,TYPE_3__***) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC13 (double) ; 
 TYPE_3__* FUNC14 (int) ; 
 TYPE_3__* FUNC15 (int,TYPE_3__**) ; 
 TYPE_3__* FUNC16 (char*,int) ; 
 TYPE_3__* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 double FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (char const*,char*) ; 

__attribute__((used)) static void FUNC31(sqlite3_context *context, int argc, sqlite3_value**argv){
  SqlFunc *p = FUNC23(context);
  Tcl_Obj *pCmd;
  int i;
  int rc;

  if( argc==0 ){
    /* If there are no arguments to the function, call Tcl_EvalObjEx on the
    ** script object directly.  This allows the TCL compiler to generate
    ** bytecode for the command on the first invocation and thus make
    ** subsequent invocations much faster. */
    pCmd = p->pScript;
    FUNC9(pCmd);
    rc = FUNC1(p->interp, pCmd, 0);
    FUNC0(pCmd);
  }else{
    /* If there are arguments to the function, make a shallow copy of the
    ** script object, lappend the arguments, then evaluate the copy.
    **
    ** By "shallow" copy, we mean only the outer list Tcl_Obj is duplicated.
    ** The new Tcl_Obj contains pointers to the original list elements.
    ** That way, when Tcl_EvalObjv() is run and shimmers the first element
    ** of the list to tclCmdNameType, that alternate representation will
    ** be preserved and reused on the next invocation.
    */
    Tcl_Obj **aArg;
    int nArg;
    if( FUNC11(p->interp, p->pScript, &nArg, &aArg) ){
      FUNC20(context, FUNC7(p->interp), -1);
      return;
    }
    pCmd = FUNC15(nArg, aArg);
    FUNC9(pCmd);
    for(i=0; i<argc; i++){
      sqlite3_value *pIn = argv[i];
      Tcl_Obj *pVal;

      /* Set pVal to contain the i'th column of this row. */
      switch( FUNC29(pIn) ){
        case SQLITE_BLOB: {
          int bytes = FUNC25(pIn);
          pVal = FUNC12(FUNC24(pIn), bytes);
          break;
        }
        case SQLITE_INTEGER: {
          sqlite_int64 v = FUNC27(pIn);
          if( v>=-2147483647 && v<=2147483647 ){
            pVal = FUNC14((int)v);
          }else{
            pVal = FUNC17(v);
          }
          break;
        }
        case SQLITE_FLOAT: {
          double r = FUNC26(pIn);
          pVal = FUNC13(r);
          break;
        }
        case SQLITE_NULL: {
          pVal = FUNC16(p->pDb->zNull, -1);
          break;
        }
        default: {
          int bytes = FUNC25(pIn);
          pVal = FUNC16((char *)FUNC28(pIn), bytes);
          break;
        }
      }
      rc = FUNC10(p->interp, pCmd, pVal);
      if( rc ){
        FUNC0(pCmd);
        FUNC20(context, FUNC7(p->interp), -1);
        return;
      }
    }
    if( !p->useEvalObjv ){
      /* Tcl_EvalObjEx() will automatically call Tcl_EvalObjv() if pCmd
      ** is a list without a string representation.  To prevent this from
      ** happening, make sure pCmd has a valid string representation */
      FUNC5(pCmd);
    }
    rc = FUNC1(p->interp, pCmd, TCL_EVAL_DIRECT);
    FUNC0(pCmd);
  }

  if( rc && rc!=TCL_RETURN ){
    FUNC20(context, FUNC7(p->interp), -1);
  }else{
    Tcl_Obj *pVar = FUNC4(p->interp);
    int n;
    u8 *data;
    const char *zType = (pVar->typePtr ? pVar->typePtr->name : "");
    char c = zType[0];
    int eType = p->eType;

    if( eType==SQLITE_NULL ){
      if( c=='b' && FUNC30(zType,"bytearray")==0 && pVar->bytes==0 ){
        /* Only return a BLOB type if the Tcl variable is a bytearray and
        ** has no string representation. */
        eType = SQLITE_BLOB;
      }else if( (c=='b' && FUNC30(zType,"boolean")==0)
             || (c=='w' && FUNC30(zType,"wideInt")==0)
             || (c=='i' && FUNC30(zType,"int")==0) 
      ){
        eType = SQLITE_INTEGER;
      }else if( c=='d' && FUNC30(zType,"double")==0 ){
        eType = SQLITE_FLOAT;
      }else{
        eType = SQLITE_TEXT;
      }
    }

    switch( eType ){
      case SQLITE_BLOB: {
        data = FUNC2(pVar, &n);
        FUNC18(context, data, n, SQLITE_TRANSIENT);
        break;
      }
      case SQLITE_INTEGER: {
        Tcl_WideInt v;
        if( TCL_OK==FUNC8(0, pVar, &v) ){
          FUNC21(context, v);
          break;
        }
        /* fall-through */
      }
      case SQLITE_FLOAT: {
        double r;
        if( TCL_OK==FUNC3(0, pVar, &r) ){
          FUNC19(context, r);
          break;
        }
        /* fall-through */
      }
      default: {
        data = (unsigned char *)FUNC6(pVar, &n);
        FUNC22(context, (char *)data, n, SQLITE_TRANSIENT);
        break;
      }
    }

  }
}