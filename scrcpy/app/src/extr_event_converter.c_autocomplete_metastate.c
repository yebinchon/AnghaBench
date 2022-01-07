
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum android_metastate { ____Placeholder_android_metastate } android_metastate ;


 int AMETA_ALT_LEFT_ON ;
 int AMETA_ALT_ON ;
 int AMETA_ALT_RIGHT_ON ;
 int AMETA_CTRL_LEFT_ON ;
 int AMETA_CTRL_ON ;
 int AMETA_CTRL_RIGHT_ON ;
 int AMETA_META_LEFT_ON ;
 int AMETA_META_ON ;
 int AMETA_META_RIGHT_ON ;
 int AMETA_SHIFT_LEFT_ON ;
 int AMETA_SHIFT_ON ;
 int AMETA_SHIFT_RIGHT_ON ;

__attribute__((used)) static enum android_metastate
autocomplete_metastate(enum android_metastate metastate) {

    if (metastate & (AMETA_SHIFT_LEFT_ON | AMETA_SHIFT_RIGHT_ON)) {
        metastate |= AMETA_SHIFT_ON;
    }
    if (metastate & (AMETA_CTRL_LEFT_ON | AMETA_CTRL_RIGHT_ON)) {
        metastate |= AMETA_CTRL_ON;
    }
    if (metastate & (AMETA_ALT_LEFT_ON | AMETA_ALT_RIGHT_ON)) {
        metastate |= AMETA_ALT_ON;
    }
    if (metastate & (AMETA_META_LEFT_ON | AMETA_META_RIGHT_ON)) {
        metastate |= AMETA_META_ON;
    }

    return metastate;
}
