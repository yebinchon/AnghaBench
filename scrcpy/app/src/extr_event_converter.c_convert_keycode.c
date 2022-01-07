
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef enum android_keycode { ____Placeholder_android_keycode } android_keycode ;
typedef int SDL_Keycode ;


 int AKEYCODE_A ;
 int AKEYCODE_B ;
 int AKEYCODE_C ;
 int AKEYCODE_D ;
 int AKEYCODE_DEL ;
 int AKEYCODE_DPAD_DOWN ;
 int AKEYCODE_DPAD_LEFT ;
 int AKEYCODE_DPAD_RIGHT ;
 int AKEYCODE_DPAD_UP ;
 int AKEYCODE_E ;
 int AKEYCODE_ENTER ;
 int AKEYCODE_ESCAPE ;
 int AKEYCODE_F ;
 int AKEYCODE_FORWARD_DEL ;
 int AKEYCODE_G ;
 int AKEYCODE_H ;
 int AKEYCODE_I ;
 int AKEYCODE_J ;
 int AKEYCODE_K ;
 int AKEYCODE_L ;
 int AKEYCODE_M ;
 int AKEYCODE_MOVE_END ;
 int AKEYCODE_MOVE_HOME ;
 int AKEYCODE_N ;
 int AKEYCODE_NUMPAD_ENTER ;
 int AKEYCODE_O ;
 int AKEYCODE_P ;
 int AKEYCODE_PAGE_DOWN ;
 int AKEYCODE_PAGE_UP ;
 int AKEYCODE_Q ;
 int AKEYCODE_R ;
 int AKEYCODE_S ;
 int AKEYCODE_SPACE ;
 int AKEYCODE_T ;
 int AKEYCODE_TAB ;
 int AKEYCODE_U ;
 int AKEYCODE_V ;
 int AKEYCODE_W ;
 int AKEYCODE_X ;
 int AKEYCODE_Y ;
 int AKEYCODE_Z ;
 int FAIL ;
 int KMOD_LALT ;
 int KMOD_LGUI ;
 int KMOD_RALT ;
 int KMOD_RGUI ;
 int MAP (int ,int ) ;
 int SDLK_BACKSPACE ;
 int SDLK_DELETE ;
 int SDLK_DOWN ;
 int SDLK_END ;
 int SDLK_ESCAPE ;
 int SDLK_HOME ;
 int SDLK_KP_ENTER ;
 int SDLK_LEFT ;
 int SDLK_PAGEDOWN ;
 int SDLK_PAGEUP ;
 int SDLK_RETURN ;
 int SDLK_RIGHT ;
 int SDLK_SPACE ;
 int SDLK_TAB ;
 int SDLK_UP ;
 int SDLK_a ;
 int SDLK_b ;
 int SDLK_c ;
 int SDLK_d ;
 int SDLK_e ;
 int SDLK_f ;
 int SDLK_g ;
 int SDLK_h ;
 int SDLK_i ;
 int SDLK_j ;
 int SDLK_k ;
 int SDLK_l ;
 int SDLK_m ;
 int SDLK_n ;
 int SDLK_o ;
 int SDLK_p ;
 int SDLK_q ;
 int SDLK_r ;
 int SDLK_s ;
 int SDLK_t ;
 int SDLK_u ;
 int SDLK_v ;
 int SDLK_w ;
 int SDLK_x ;
 int SDLK_y ;
 int SDLK_z ;

__attribute__((used)) static bool
convert_keycode(SDL_Keycode from, enum android_keycode *to, uint16_t mod) {
    switch (from) {
        MAP(SDLK_RETURN, AKEYCODE_ENTER);
        MAP(SDLK_KP_ENTER, AKEYCODE_NUMPAD_ENTER);
        MAP(SDLK_ESCAPE, AKEYCODE_ESCAPE);
        MAP(SDLK_BACKSPACE, AKEYCODE_DEL);
        MAP(SDLK_TAB, AKEYCODE_TAB);
        MAP(SDLK_PAGEUP, AKEYCODE_PAGE_UP);
        MAP(SDLK_DELETE, AKEYCODE_FORWARD_DEL);
        MAP(SDLK_HOME, AKEYCODE_MOVE_HOME);
        MAP(SDLK_END, AKEYCODE_MOVE_END);
        MAP(SDLK_PAGEDOWN, AKEYCODE_PAGE_DOWN);
        MAP(SDLK_RIGHT, AKEYCODE_DPAD_RIGHT);
        MAP(SDLK_LEFT, AKEYCODE_DPAD_LEFT);
        MAP(SDLK_DOWN, AKEYCODE_DPAD_DOWN);
        MAP(SDLK_UP, AKEYCODE_DPAD_UP);
    }
    if (mod & (KMOD_LALT | KMOD_RALT | KMOD_LGUI | KMOD_RGUI)) {
        return 0;
    }

    switch (from) {
        MAP(SDLK_a, AKEYCODE_A);
        MAP(SDLK_b, AKEYCODE_B);
        MAP(SDLK_c, AKEYCODE_C);
        MAP(SDLK_d, AKEYCODE_D);
        MAP(SDLK_e, AKEYCODE_E);
        MAP(SDLK_f, AKEYCODE_F);
        MAP(SDLK_g, AKEYCODE_G);
        MAP(SDLK_h, AKEYCODE_H);
        MAP(SDLK_i, AKEYCODE_I);
        MAP(SDLK_j, AKEYCODE_J);
        MAP(SDLK_k, AKEYCODE_K);
        MAP(SDLK_l, AKEYCODE_L);
        MAP(SDLK_m, AKEYCODE_M);
        MAP(SDLK_n, AKEYCODE_N);
        MAP(SDLK_o, AKEYCODE_O);
        MAP(SDLK_p, AKEYCODE_P);
        MAP(SDLK_q, AKEYCODE_Q);
        MAP(SDLK_r, AKEYCODE_R);
        MAP(SDLK_s, AKEYCODE_S);
        MAP(SDLK_t, AKEYCODE_T);
        MAP(SDLK_u, AKEYCODE_U);
        MAP(SDLK_v, AKEYCODE_V);
        MAP(SDLK_w, AKEYCODE_W);
        MAP(SDLK_x, AKEYCODE_X);
        MAP(SDLK_y, AKEYCODE_Y);
        MAP(SDLK_z, AKEYCODE_Z);
        MAP(SDLK_SPACE, AKEYCODE_SPACE);
        FAIL;
    }
}
