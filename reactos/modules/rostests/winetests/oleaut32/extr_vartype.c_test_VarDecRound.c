
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int DECIMAL ;


 int CLEAR (int ) ;
 int DECIMAL_NEG ;
 int EXPECTDEC (int,int ,int ,int) ;
 int EXPECTDEC64 (int ,int ,int,int,int) ;
 int SETDEC (int ,int,int ,int ,int) ;
 int SETDEC64 (int ,int,int ,int,int,int) ;
 int VarDecRound (int *,int,int *) ;

__attribute__((used)) static void test_VarDecRound(void)
{
    HRESULT hres;
    DECIMAL l, out;

    CLEAR(out); SETDEC(l, 0, 0, 0, 1); hres = VarDecRound(&l, 3, &out); EXPECTDEC(0, 0, 0, 1);

    CLEAR(out); SETDEC(l, 0, 0, 0, 1); hres = VarDecRound(&l, 0, &out); EXPECTDEC(0, 0, 0, 1);
    CLEAR(out); SETDEC(l, 1, 0, 0, 1); hres = VarDecRound(&l, 0, &out); EXPECTDEC(0, 0, 0, 0);
    CLEAR(out); SETDEC(l, 1, 0, 0, 1); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, 0, 0, 1);
    CLEAR(out); SETDEC(l, 2, 0, 0, 11); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, 0, 0, 1);
    CLEAR(out); SETDEC(l, 2, 0, 0, 15); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, 0, 0, 2);
    CLEAR(out); SETDEC(l, 6, 0, 0, 550001); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, 0, 0, 6);

    CLEAR(out); SETDEC(l, 0, DECIMAL_NEG, 0, 1); hres = VarDecRound(&l, 0, &out); EXPECTDEC(0, DECIMAL_NEG, 0, 1);
    CLEAR(out); SETDEC(l, 1, DECIMAL_NEG, 0, 1); hres = VarDecRound(&l, 0, &out); EXPECTDEC(0, DECIMAL_NEG, 0, 0);
    CLEAR(out); SETDEC(l, 1, DECIMAL_NEG, 0, 1); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, DECIMAL_NEG, 0, 1);
    CLEAR(out); SETDEC(l, 2, DECIMAL_NEG, 0, 11); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, DECIMAL_NEG, 0, 1);
    CLEAR(out); SETDEC(l, 2, DECIMAL_NEG, 0, 15); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, DECIMAL_NEG, 0, 2);
    CLEAR(out); SETDEC(l, 6, DECIMAL_NEG, 0, 550001); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, DECIMAL_NEG, 0, 6);

    CLEAR(out); SETDEC64(l, 0, 0, 0xffffffff, 0xffffffff, 0xffffffff); hres = VarDecRound(&l, 0, &out); EXPECTDEC64(0, 0, 0xffffffff, 0xffffffff, 0xffffffff);
    CLEAR(out); SETDEC64(l, 28, 0, 0xffffffff, 0xffffffff, 0xffffffff); hres = VarDecRound(&l, 0, &out); EXPECTDEC64(0, 0, 0, 0, 8);
    CLEAR(out); SETDEC64(l, 0, DECIMAL_NEG, 0xffffffff, 0xffffffff, 0xffffffff); hres = VarDecRound(&l, 0, &out); EXPECTDEC64(0, DECIMAL_NEG, 0xffffffff, 0xffffffff, 0xffffffff);
    CLEAR(out); SETDEC64(l, 28, DECIMAL_NEG, 0xffffffff, 0xffffffff, 0xffffffff); hres = VarDecRound(&l, 0, &out); EXPECTDEC64(0, DECIMAL_NEG, 0, 0, 8);

    CLEAR(out); SETDEC(l, 2, 0, 0, 0); hres = VarDecRound(&l, 1, &out); EXPECTDEC(1, 0, 0, 0);
}
