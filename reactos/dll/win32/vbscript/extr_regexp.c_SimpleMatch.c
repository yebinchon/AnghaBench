
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int* cp; } ;
typedef TYPE_3__ match_state_t ;
typedef int jsbytecode ;
typedef int WCHAR ;
struct TYPE_15__ {int* bits; } ;
struct TYPE_19__ {int converted; int length; TYPE_1__ u; } ;
struct TYPE_18__ {int* cpbegin; int* cpend; TYPE_2__* regexp; scalar_t__ stateStackTop; } ;
struct TYPE_16__ {int flags; size_t parenCount; size_t source_len; int* source; size_t classCount; TYPE_5__* classList; int * program; } ;
typedef size_t REOp ;
typedef TYPE_4__ REGlobalData ;
typedef TYPE_5__ RECharSet ;
typedef int BOOL ;


 int ARG_LEN ;
 TYPE_3__* BackrefMatcher (TYPE_4__*,TYPE_3__*,size_t) ;
 int FALSE ;
 TYPE_3__* FlatNIMatcher (TYPE_4__*,TYPE_3__*,int const*,size_t) ;
 int GET_ARG (int *) ;
 int JS7_ISDEC (int) ;
 int JS_ISWORD (int) ;
 int REG_MULTILINE ;
 int RE_IS_LINE_TERM (int) ;
 int * ReadCompactIndex (int *,size_t*) ;
 int TRACE (char*,...) ;
 int assert (int) ;
 int debugstr_wn (int const*,size_t) ;
 int isspaceW (int) ;
 char** reop_names ;
 int toupperW (int) ;

__attribute__((used)) static inline match_state_t *
SimpleMatch(REGlobalData *gData, match_state_t *x, REOp op,
            jsbytecode **startpc, BOOL updatecp)
{
    match_state_t *result = ((void*)0);
    WCHAR matchCh;
    size_t parenIndex;
    size_t offset, length, index;
    jsbytecode *pc = *startpc;
    const WCHAR *source;
    const WCHAR *startcp = x->cp;
    WCHAR ch;
    RECharSet *charSet;

    const char *opname = reop_names[op];
    TRACE("\n%06d: %*s%s\n", (int)(pc - gData->regexp->program),
          (int)gData->stateStackTop * 2, "", opname);

    switch (op) {
      case 142:
        result = x;
        break;
      case 146:
        if (x->cp != gData->cpbegin) {
            if (
                !(gData->regexp->flags & REG_MULTILINE)) {
                break;
            }
            if (!RE_IS_LINE_TERM(x->cp[-1]))
                break;
        }
        result = x;
        break;
      case 141:
        if (x->cp != gData->cpend) {
            if (
                !(gData->regexp->flags & REG_MULTILINE)) {
                break;
            }
            if (!RE_IS_LINE_TERM(*x->cp))
                break;
        }
        result = x;
        break;
      case 129:
        if ((x->cp == gData->cpbegin || !JS_ISWORD(x->cp[-1])) ^
            !(x->cp != gData->cpend && JS_ISWORD(*x->cp))) {
            result = x;
        }
        break;
      case 128:
        if ((x->cp == gData->cpbegin || !JS_ISWORD(x->cp[-1])) ^
            (x->cp != gData->cpend && JS_ISWORD(*x->cp))) {
            result = x;
        }
        break;
      case 143:
        if (x->cp != gData->cpend && !RE_IS_LINE_TERM(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case 144:
        if (x->cp != gData->cpend && JS7_ISDEC(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case 134:
        if (x->cp != gData->cpend && !JS7_ISDEC(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case 148:
        if (x->cp != gData->cpend && JS_ISWORD(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case 135:
        if (x->cp != gData->cpend && !JS_ISWORD(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case 132:
        if (x->cp != gData->cpend && isspaceW(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case 133:
        if (x->cp != gData->cpend && !isspaceW(*x->cp)) {
            result = x;
            result->cp++;
        }
        break;
      case 147:
        pc = ReadCompactIndex(pc, &parenIndex);
        assert(parenIndex < gData->regexp->parenCount);
        result = BackrefMatcher(gData, x, parenIndex);
        break;
      case 140:
        pc = ReadCompactIndex(pc, &offset);
        assert(offset < gData->regexp->source_len);
        pc = ReadCompactIndex(pc, &length);
        assert(1 <= length);
        assert(length <= gData->regexp->source_len - offset);
        if (length <= (size_t)(gData->cpend - x->cp)) {
            source = gData->regexp->source + offset;
            TRACE("%s\n", debugstr_wn(source, length));
            for (index = 0; index != length; index++) {
                if (source[index] != x->cp[index])
                    return ((void*)0);
            }
            x->cp += length;
            result = x;
        }
        break;
      case 139:
        matchCh = *pc++;
        TRACE(" '%c' == '%c'\n", (char)matchCh, (char)*x->cp);
        if (x->cp != gData->cpend && *x->cp == matchCh) {
            result = x;
            result->cp++;
        }
        break;
      case 137:
        pc = ReadCompactIndex(pc, &offset);
        assert(offset < gData->regexp->source_len);
        pc = ReadCompactIndex(pc, &length);
        assert(1 <= length);
        assert(length <= gData->regexp->source_len - offset);
        source = gData->regexp->source;
        result = FlatNIMatcher(gData, x, source + offset, length);
        break;
      case 138:
        matchCh = *pc++;
        if (x->cp != gData->cpend && toupperW(*x->cp) == toupperW(matchCh)) {
            result = x;
            result->cp++;
        }
        break;
      case 131:
        matchCh = GET_ARG(pc);
        TRACE(" '%c' == '%c'\n", (char)matchCh, (char)*x->cp);
        pc += ARG_LEN;
        if (x->cp != gData->cpend && *x->cp == matchCh) {
            result = x;
            result->cp++;
        }
        break;
      case 130:
        matchCh = GET_ARG(pc);
        pc += ARG_LEN;
        if (x->cp != gData->cpend && toupperW(*x->cp) == toupperW(matchCh)) {
            result = x;
            result->cp++;
        }
        break;
      case 145:
        pc = ReadCompactIndex(pc, &index);
        assert(index < gData->regexp->classCount);
        if (x->cp != gData->cpend) {
            charSet = &gData->regexp->classList[index];
            assert(charSet->converted);
            ch = *x->cp;
            index = ch >> 3;
            if (charSet->length != 0 &&
                ch <= charSet->length &&
                (charSet->u.bits[index] & (1 << (ch & 0x7)))) {
                result = x;
                result->cp++;
            }
        }
        break;
      case 136:
        pc = ReadCompactIndex(pc, &index);
        assert(index < gData->regexp->classCount);
        if (x->cp != gData->cpend) {
            charSet = &gData->regexp->classList[index];
            assert(charSet->converted);
            ch = *x->cp;
            index = ch >> 3;
            if (charSet->length == 0 ||
                ch > charSet->length ||
                !(charSet->u.bits[index] & (1 << (ch & 0x7)))) {
                result = x;
                result->cp++;
            }
        }
        break;

      default:
        assert(FALSE);
    }
    if (result) {
        if (!updatecp)
            x->cp = startcp;
        *startpc = pc;
        TRACE(" *\n");
        return result;
    }
    x->cp = startcp;
    return ((void*)0);
}
