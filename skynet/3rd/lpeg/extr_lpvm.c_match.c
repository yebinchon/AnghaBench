
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int lua_State ;
typedef int byte ;
struct TYPE_30__ {char const* s; int ptop; TYPE_4__* ocap; int * L; } ;
struct TYPE_29__ {char const* s; int siz; int kind; int idx; } ;
struct TYPE_26__ {int aux; int key; int code; } ;
struct TYPE_28__ {TYPE_1__ i; int buff; } ;
struct TYPE_27__ {char const* s; int caplevel; TYPE_3__ const* p; } ;
typedef TYPE_2__ Stack ;
typedef int Opcode ;
typedef TYPE_3__ const Instruction ;
typedef TYPE_4__ Capture ;
typedef TYPE_5__ CapState ;


 int CHARSETINSTSIZE ;
 int Cclose ;
 int INITBACK ;
 int INITCAPSIZE ;
 int SHRT_MAX ;
 char const* UCHAR_MAX ;
 int adddyncaptures (char const*,TYPE_4__*,int,int) ;
 int assert (int) ;
 TYPE_4__* doublecap (int *,TYPE_4__*,int,int,int) ;
 TYPE_2__* doublestack (int *,TYPE_2__**,int) ;
 int getkind (TYPE_3__ const*) ;
 int getoff (TYPE_3__ const*) ;
 int getoffset (TYPE_3__ const*) ;
 TYPE_2__* getstackbase (int *,int) ;
 TYPE_3__ const giveup ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_pushlightuserdata (int *,TYPE_2__*) ;
 int printcaplist (TYPE_4__*,TYPE_4__*) ;
 int printf (char*,...) ;
 int printinst (TYPE_3__ const*,TYPE_3__ const*) ;
 int removedyncap (int *,TYPE_4__*,int,int) ;
 int resdyncaptures (int *,int,int,int) ;
 int runtimecap (TYPE_5__*,TYPE_4__*,char const*,int*) ;
 scalar_t__ stackidx (int) ;
 int testchar (int ,int) ;

const char *match (lua_State *L, const char *o, const char *s, const char *e,
                   Instruction *op, Capture *capture, int ptop) {
  Stack stackbase[INITBACK];
  Stack *stacklimit = stackbase + INITBACK;
  Stack *stack = stackbase;
  int capsize = INITCAPSIZE;
  int captop = 0;
  int ndyncap = 0;
  const Instruction *p = op;
  stack->p = &giveup; stack->s = s; stack->caplevel = 0; stack++;
  lua_pushlightuserdata(L, stackbase);
  for (;;) {







    assert(stackidx(ptop) + ndyncap == lua_gettop(L) && ndyncap <= captop);
    switch ((Opcode)p->i.code) {
      case 141: {
        assert(stack == getstackbase(L, ptop) + 1);
        capture[captop].kind = Cclose;
        capture[captop].s = ((void*)0);
        return s;
      }
      case 137: {
        assert(stack == getstackbase(L, ptop));
        return ((void*)0);
      }
      case 133: {
        assert(stack > getstackbase(L, ptop) && (stack - 1)->s == ((void*)0));
        p = (--stack)->p;
        continue;
      }
      case 150: {
        if (s < e) { p++; s++; }
        else goto fail;
        continue;
      }
      case 130: {
        if (s < e) p += 2;
        else p += getoffset(p);
        continue;
      }
      case 146: {
        if ((byte)*s == p->i.aux && s < e) { p++; s++; }
        else goto fail;
        continue;
      }
      case 129: {
        if ((byte)*s == p->i.aux && s < e) p += 2;
        else p += getoffset(p);
        continue;
      }
      case 132: {
        int c = (byte)*s;
        if (testchar((p+1)->buff, c) && s < e)
          { p += CHARSETINSTSIZE; s++; }
        else goto fail;
        continue;
      }
      case 128: {
        int c = (byte)*s;
        if (testchar((p + 2)->buff, c) && s < e)
          p += 1 + CHARSETINSTSIZE;
        else p += getoffset(p);
        continue;
      }
      case 148: {
        int n = p->i.aux;
        if (n > s - o) goto fail;
        s -= n; p++;
        continue;
      }
      case 131: {
        for (; s < e; s++) {
          int c = (byte)*s;
          if (!testchar((p+1)->buff, c)) break;
        }
        p += CHARSETINSTSIZE;
        continue;
      }
      case 136: {
        p += getoffset(p);
        continue;
      }
      case 145: {
        if (stack == stacklimit)
          stack = doublestack(L, &stacklimit, ptop);
        stack->p = p + getoffset(p);
        stack->s = s;
        stack->caplevel = captop;
        stack++;
        p += 2;
        continue;
      }
      case 147: {
        if (stack == stacklimit)
          stack = doublestack(L, &stacklimit, ptop);
        stack->s = ((void*)0);
        stack->p = p + 2;
        stack++;
        p += getoffset(p);
        continue;
      }
      case 142: {
        assert(stack > getstackbase(L, ptop) && (stack - 1)->s != ((void*)0));
        stack--;
        p += getoffset(p);
        continue;
      }
      case 134: {
        assert(stack > getstackbase(L, ptop) && (stack - 1)->s != ((void*)0));
        (stack - 1)->s = s;
        (stack - 1)->caplevel = captop;
        p += getoffset(p);
        continue;
      }
      case 149: {
        assert(stack > getstackbase(L, ptop) && (stack - 1)->s != ((void*)0));
        s = (--stack)->s;
        captop = stack->caplevel;
        p += getoffset(p);
        continue;
      }
      case 139:
        assert(stack > getstackbase(L, ptop));
        stack--;

      case 140:
      fail: {
        do {
          assert(stack > getstackbase(L, ptop));
          s = (--stack)->s;
        } while (s == ((void*)0));
        if (ndyncap > 0)
          ndyncap -= removedyncap(L, capture, stack->caplevel, captop);
        captop = stack->caplevel;
        p = stack->p;



        continue;
      }
      case 143: {
        CapState cs;
        int rem, res, n;
        int fr = lua_gettop(L) + 1;
        cs.s = o; cs.L = L; cs.ocap = capture; cs.ptop = ptop;
        n = runtimecap(&cs, capture + captop, s, &rem);
        captop -= n;
        ndyncap -= rem;
        fr -= rem;
        res = resdyncaptures(L, fr, s - o, e - o);
        if (res == -1)
          goto fail;
        s = o + res;
        n = lua_gettop(L) - fr + 1;
        ndyncap += n;
        if (n > 0) {
          if (fr + n >= SHRT_MAX)
            luaL_error(L, "too many results in match-time capture");
          if ((captop += n + 2) >= capsize) {
            capture = doublecap(L, capture, captop, n + 2, ptop);
            capsize = 2 * captop;
          }

          adddyncaptures(s, capture + captop - n - 2, n, fr);
        }
        p++;
        continue;
      }
      case 144: {
        const char *s1 = s;
        assert(captop > 0);

        if (capture[captop - 1].siz == 0 &&
            s1 - capture[captop - 1].s < UCHAR_MAX) {
          capture[captop - 1].siz = s1 - capture[captop - 1].s + 1;
          p++;
          continue;
        }
        else {
          capture[captop].siz = 1;
          capture[captop].s = s;
          goto pushcapture;
        }
      }
      case 135:
        capture[captop].siz = 0;
        capture[captop].s = s;
        goto pushcapture;
      case 138:
        capture[captop].siz = getoff(p) + 1;
        capture[captop].s = s - getoff(p);

      pushcapture: {
        capture[captop].idx = p->i.key;
        capture[captop].kind = getkind(p);
        if (++captop >= capsize) {
          capture = doublecap(L, capture, captop, 0, ptop);
          capsize = 2 * captop;
        }
        p++;
        continue;
      }
      default: assert(0); return ((void*)0);
    }
  }
}
