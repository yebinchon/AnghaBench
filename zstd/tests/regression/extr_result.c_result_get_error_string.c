
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int result_t ;
 int result_get_error (int ) ;

char const* result_get_error_string(result_t result) {
    switch (result_get_error(result)) {
        case 131:
            return "okay";
        case 129:
            return "skip";
        case 128:
            return "system error";
        case 133:
            return "compression error";
        case 132:
            return "decompression error";
        case 130:
            return "round trip error";
    }
}
