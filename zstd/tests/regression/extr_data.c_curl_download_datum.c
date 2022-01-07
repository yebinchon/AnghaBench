
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dict; int type; int data; } ;
typedef TYPE_1__ data_t ;
typedef int CURL ;


 int curl_download_resource (int *,int *,int ) ;
 scalar_t__ data_has_dict (TYPE_1__ const*) ;
 int data_type_file ;

__attribute__((used)) static int curl_download_datum(CURL* curl, data_t const* data) {
    int ret;
    ret = curl_download_resource(curl, &data->data, data->type);
    if (ret != 0)
        return ret;
    if (data_has_dict(data)) {
        ret = curl_download_resource(curl, &data->dict, data_type_file);
        if (ret != 0)
            return ret;
    }
    return ret;
}
