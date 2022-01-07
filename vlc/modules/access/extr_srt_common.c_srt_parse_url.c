
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct parsed_param {char* val; int key; } ;
struct TYPE_3__ {int latency; char* passphrase; int key_length; int payload_size; int bandwidth_overhead_limit; } ;
typedef TYPE_1__ srt_params_t ;
typedef int local_params ;


 int SRT_PARAM_BANDWIDTH_OVERHEAD_LIMIT ;
 int SRT_PARAM_KEY_LENGTH ;
 int SRT_PARAM_LATENCY ;
 int SRT_PARAM_PASSPHRASE ;
 int SRT_PARAM_PAYLOAD_SIZE ;
 int atoi (char*) ;
 char* find (char*,char) ;
 int* srt_key_lengths ;
 int srt_url_parse_query (char*,char*,struct parsed_param*,int) ;
 scalar_t__ strcmp (int ,int ) ;

bool srt_parse_url(char* url, srt_params_t* params)
{
    char* query = ((void*)0);
    struct parsed_param local_params[32];
    int num_params = 0;
    int i = 0;
    bool rc = 0;

    if (!url || !url[0] || !params)
        return 0;


    params->latency = -1;
    params->passphrase = ((void*)0);
    params->key_length = -1;
    params->payload_size = -1;
    params->bandwidth_overhead_limit = -1;


    query = find( url, '?' );
    if (query) {
        num_params = srt_url_parse_query( query, "&", local_params,
                sizeof(local_params) / sizeof(struct parsed_param) );
        if (num_params > 0) {
            rc = 1;
            for (i = 0; i < num_params; ++i) {
                char* val = local_params[i].val;
                if (!val)
                    continue;

                if (strcmp( local_params[i].key, SRT_PARAM_LATENCY ) == 0) {
                    int temp = atoi( val );
                    if (temp >= 0)
                        params->latency = temp;
                } else if (strcmp( local_params[i].key, SRT_PARAM_PASSPHRASE )
                        == 0) {
                    params->passphrase = val;
                } else if (strcmp( local_params[i].key, SRT_PARAM_PAYLOAD_SIZE )
                        == 0) {
                    int temp = atoi( val );
                    if (temp >= 0)
                        params->payload_size = temp;
                } else if (strcmp( local_params[i].key, SRT_PARAM_KEY_LENGTH )
                        == 0) {
                    int temp = atoi( val );
                    if (temp == srt_key_lengths[0] || temp == srt_key_lengths[1]
                            || temp == srt_key_lengths[2]) {
                        params->key_length = temp;
                    }
                } else if (strcmp( local_params[i].key,
                SRT_PARAM_BANDWIDTH_OVERHEAD_LIMIT ) == 0) {
                    int temp = atoi( val );
                    if (temp >= 0)
                        params->bandwidth_overhead_limit = temp;

                }
            }
        }
    }

    return rc;
}
