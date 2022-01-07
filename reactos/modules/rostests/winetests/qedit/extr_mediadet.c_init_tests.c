
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int TEST_AVI_RES ;
 int TEST_SOUND_AVI_RES ;
 int test_avi_filename ;
 int test_sound_avi_filename ;
 scalar_t__ unpack_avi_file (int ,int ) ;

__attribute__((used)) static BOOL init_tests(void)
{
    return unpack_avi_file(TEST_AVI_RES, test_avi_filename)
        && unpack_avi_file(TEST_SOUND_AVI_RES, test_sound_avi_filename);
}
