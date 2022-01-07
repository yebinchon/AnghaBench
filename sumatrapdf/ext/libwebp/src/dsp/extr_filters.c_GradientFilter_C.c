
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DoGradientFilter_C (int const*,int,int,int,int ,int,int ,int *) ;

__attribute__((used)) static void GradientFilter_C(const uint8_t* data, int width, int height,
                             int stride, uint8_t* filtered_data) {
  DoGradientFilter_C(data, width, height, stride, 0, height, 0, filtered_data);
}
