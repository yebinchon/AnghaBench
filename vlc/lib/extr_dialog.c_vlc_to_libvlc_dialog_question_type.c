
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_question_type ;
typedef int libvlc_dialog_question_type ;


 int LIBVLC_DIALOG_QUESTION_CRITICAL ;
 int LIBVLC_DIALOG_QUESTION_NORMAL ;
 int LIBVLC_DIALOG_QUESTION_WARNING ;



 int vlc_assert_unreachable () ;

__attribute__((used)) static libvlc_dialog_question_type
vlc_to_libvlc_dialog_question_type(vlc_dialog_question_type i_type)
{
    switch (i_type)
    {
    case 129: return LIBVLC_DIALOG_QUESTION_NORMAL;
    case 128: return LIBVLC_DIALOG_QUESTION_WARNING;
    case 130: return LIBVLC_DIALOG_QUESTION_CRITICAL;
    default: vlc_assert_unreachable();
    }
}
