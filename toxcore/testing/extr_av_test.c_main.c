
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int time_t ;
struct toxav_thread_data {scalar_t__ state; int sig; int * BobAV; int * AliceAV; int incoming; void* arb; int arb_mutex; } ;
struct stat {int st_mode; } ;
struct PaStreamParameters {long device; int channelCount; int * hostApiSpecificStreamInfo; int suggestedLatency; int sampleFormat; } ;
typedef int pthread_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int ToxAV ;
typedef int Tox ;
struct TYPE_6__ {char* name; int defaultHighOutputLatency; } ;
struct TYPE_5__ {int frames; int samplerate; int channels; } ;
typedef int TOXAV_ERR_SEND_FRAME ;
typedef int TOXAV_ERR_CALL_CONTROL ;
typedef int TOXAV_ERR_CALL ;
typedef int TOXAV_ERR_ANSWER ;
typedef int SNDFILE ;
typedef TYPE_1__ SF_INFO ;
typedef scalar_t__ PaError ;
typedef TYPE_2__ PaDeviceInfo ;
typedef int IplImage ;
typedef int CvCapture ;
typedef struct toxav_thread_data CallControl ;


 long Pa_GetDefaultOutputDevice () ;
 TYPE_2__* Pa_GetDeviceInfo (long) ;
 int Pa_Initialize () ;
 scalar_t__ Pa_OpenStream (int *,int *,struct PaStreamParameters*,int,int,int ,int *,int *) ;
 scalar_t__ Pa_StartStream (int ) ;
 int Pa_StopStream (int ) ;
 int Pa_Terminate () ;
 int SFM_READ ;
 int S_ISREG (int ) ;
 scalar_t__ TEST_TRANSFER_A ;
 scalar_t__ TEST_TRANSFER_V ;
 int TOXAV_CALL_CONTROL_CANCEL ;
 int TOXAV_ERR_ANSWER_OK ;
 int TOXAV_ERR_CALL_CONTROL_OK ;
 int TOXAV_ERR_CALL_OK ;
 scalar_t__ TOXAV_FRIEND_CALL_STATE_FINISHED ;
 int abs (scalar_t__) ;
 int adout ;
 int assert (int) ;
 int c_sleep (int) ;
 scalar_t__ current_time_monotonic () ;
 int * cvCreateFileCapture (char const*) ;
 int * cvQueryFrame (int *) ;
 int cvReleaseCapture (int **) ;
 int exit (int) ;
 int fprintf (int ,char*,long) ;
 int free (void*) ;
 int freopen (char*,char*,int ) ;
 int getopt (int,char**,char*) ;
 int initialize_tox (int **,int **,struct toxav_thread_data*,int **,struct toxav_thread_data*) ;
 int iterate_tox (int *,int *,int *) ;
 int iterate_toxav ;
 int memset (struct toxav_thread_data*,int ,int) ;
 char* optarg ;
 int paInt16 ;
 scalar_t__ paNoError ;
 int paNoFlag ;
 int pa_write_thread ;
 int print_audio_devices () ;
 int print_help (char*) ;
 int printf (char*,...) ;
 int pthread_create (int *,int *,int ,struct toxav_thread_data*) ;
 int pthread_detach (int ) ;
 int pthread_mutex_destroy (int ) ;
 int pthread_mutex_init (int ,int *) ;
 int pthread_yield () ;
 void* rb_new (int) ;
 scalar_t__ rb_read (void*,void**) ;
 int send_opencv_img (int *,int ,int *) ;
 int sf_close (int *) ;
 int * sf_open (char const*,int ,TYPE_1__*) ;
 int sf_read_short (int *,int *,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 void* strtol (char*,char**,int) ;
 int time (int *) ;
 int tox_kill (int *) ;
 int toxav_answer (int *,int ,int,int,int*) ;
 int toxav_audio_send_frame (int *,int ,int *,int,int,int,int *) ;
 int toxav_call (int *,int ,int,int,int*) ;
 int toxav_call_control (int *,int ,int ,int*) ;
 int * toxav_get_tox (int *) ;
 int toxav_kill (int *) ;

int main (int argc, char **argv)
{
    freopen("/dev/zero", "w", stderr);
    Pa_Initialize();

    struct stat st;


    const char *af_name = ((void*)0);
    const char *vf_name = ((void*)0);
    long audio_out_dev_idx = -1;

    int32_t audio_frame_duration = 20;
    int32_t video_frame_duration = 10;


CHECK_ARG:

    switch (getopt(argc, argv, "a:b:v:x:o:dh")) {
        case 'a':
            af_name = optarg;
            goto CHECK_ARG;

        case 'b': {
            char *d;
            audio_frame_duration = strtol(optarg, &d, 10);

            if (*d) {
                printf("Invalid value for argument: 'b'");
                exit(1);
            }

            goto CHECK_ARG;
        }

        case 'v':
            vf_name = optarg;
            goto CHECK_ARG;

        case 'x': {
            char *d;
            video_frame_duration = strtol(optarg, &d, 10);

            if (*d) {
                printf("Invalid value for argument: 'x'");
                exit(1);
            }

            goto CHECK_ARG;
        }

        case 'o': {
            char *d;
            audio_out_dev_idx = strtol(optarg, &d, 10);

            if (*d) {
                printf("Invalid value for argument: 'o'");
                exit(1);
            }

            goto CHECK_ARG;
        }

        case 'd':
            return print_audio_devices();

        case 'h':
            return print_help(argv[0]);

        case '?':
            exit(1);

        case -1:
            ;
    }

    {
        if (!af_name) {
            printf("Required audio input file!\n");
            exit(1);
        }

        if (!vf_name) {
            printf("Required video input file!\n");
            exit(1);
        }


        if (stat(af_name, &st) != 0 || !S_ISREG(st.st_mode)) {
            printf("%s doesn't seem to be a regular file!\n", af_name);
            exit(1);
        }

        if (stat(vf_name, &st) != 0 || !S_ISREG(st.st_mode)) {
            printf("%s doesn't seem to be a regular file!\n", vf_name);
            exit(1);
        }
    }

    if (audio_out_dev_idx < 0)
        audio_out_dev_idx = Pa_GetDefaultOutputDevice();

    const PaDeviceInfo *audio_dev = Pa_GetDeviceInfo(audio_out_dev_idx);

    if (!audio_dev) {
        fprintf(stderr, "Device under index: %ld invalid", audio_out_dev_idx);
        return 1;
    }

    printf("Using audio device: %s\n", audio_dev->name);
    printf("Using audio file: %s\n", af_name);
    printf("Using video file: %s\n", vf_name);



    Tox *bootstrap;
    ToxAV *AliceAV;
    ToxAV *BobAV;

    CallControl AliceCC;
    CallControl BobCC;

    initialize_tox(&bootstrap, &AliceAV, &AliceCC, &BobAV, &BobCC);

    if (TEST_TRANSFER_A) {
        SNDFILE *af_handle;
        SF_INFO af_info;

        printf("\nTrying audio enc/dec...\n");

        memset(&AliceCC, 0, sizeof(CallControl));
        memset(&BobCC, 0, sizeof(CallControl));

        pthread_mutex_init(AliceCC.arb_mutex, ((void*)0));
        pthread_mutex_init(BobCC.arb_mutex, ((void*)0));

        AliceCC.arb = rb_new(16);
        BobCC.arb = rb_new(16);

        {
            TOXAV_ERR_CALL rc;
            toxav_call(AliceAV, 0, 48, 0, &rc);

            if (rc != TOXAV_ERR_CALL_OK) {
                printf("toxav_call failed: %d\n", rc);
                exit(1);
            }
        }

        while (!BobCC.incoming)
            iterate_tox(bootstrap, AliceAV, BobAV);

        {
            TOXAV_ERR_ANSWER rc;
            toxav_answer(BobAV, 0, 48, 0, &rc);

            if (rc != TOXAV_ERR_ANSWER_OK) {
                printf("toxav_answer failed: %d\n", rc);
                exit(1);
            }
        }

        while (AliceCC.state == 0)
            iterate_tox(bootstrap, AliceAV, BobAV);


        af_handle = sf_open(af_name, SFM_READ, &af_info);

        if (af_handle == ((void*)0)) {
            printf("Failed to open the file.\n");
            exit(1);
        }

        int16_t PCM[5760];

        time_t start_time = time(((void*)0));
        time_t expected_time = af_info.frames / af_info.samplerate + 2;



        struct toxav_thread_data data = {
            .AliceAV = AliceAV,
            .BobAV = BobAV,
            .sig = 0
        };

        pthread_t dect;
        pthread_create(&dect, ((void*)0), iterate_toxav, &data);
        pthread_detach(dect);

        int frame_size = (af_info.samplerate * audio_frame_duration / 1000) * af_info.channels;

        struct PaStreamParameters output;
        output.device = audio_out_dev_idx;
        output.channelCount = af_info.channels;
        output.sampleFormat = paInt16;
        output.suggestedLatency = audio_dev->defaultHighOutputLatency;
        output.hostApiSpecificStreamInfo = ((void*)0);

        PaError err = Pa_OpenStream(&adout, ((void*)0), &output, af_info.samplerate, frame_size, paNoFlag, ((void*)0), ((void*)0));
        assert(err == paNoError);

        err = Pa_StartStream(adout);
        assert(err == paNoError);




        pthread_t t;
        pthread_create(&t, ((void*)0), pa_write_thread, &BobCC);
        pthread_detach(t);

        printf("Sample rate %d\n", af_info.samplerate);

        while (start_time + expected_time > time(((void*)0)) ) {
            uint64_t enc_start_time = current_time_monotonic();
            int64_t count = sf_read_short(af_handle, PCM, frame_size);

            if (count > 0) {
                TOXAV_ERR_SEND_FRAME rc;

                if (toxav_audio_send_frame(AliceAV, 0, PCM, count / af_info.channels, af_info.channels, af_info.samplerate,
                                           &rc) == 0) {
                    printf("Error sending frame of size %ld: %d\n", count, rc);
                }
            }

            iterate_tox(bootstrap, AliceAV, BobAV);
            c_sleep(abs(audio_frame_duration - (current_time_monotonic() - enc_start_time) - 1));
        }

        printf("Played file in: %lu; stopping stream...\n", time(((void*)0)) - start_time);

        Pa_StopStream(adout);
        sf_close(af_handle);

        {
            TOXAV_ERR_CALL_CONTROL rc;
            toxav_call_control(AliceAV, 0, TOXAV_CALL_CONTROL_CANCEL, &rc);

            if (rc != TOXAV_ERR_CALL_CONTROL_OK) {
                printf("toxav_call_control failed: %d\n", rc);
                exit(1);
            }
        }

        iterate_tox(bootstrap, AliceAV, BobAV);
        assert(BobCC.state == TOXAV_FRIEND_CALL_STATE_FINISHED);


        data.sig = -1;

        while (data.sig != 1)
            pthread_yield();

        pthread_mutex_destroy(AliceCC.arb_mutex);
        pthread_mutex_destroy(BobCC.arb_mutex);

        void *f = ((void*)0);

        while (rb_read(AliceCC.arb, &f))
            free(f);

        while (rb_read(BobCC.arb, &f))
            free(f);

        printf("Success!");
    }

    if (TEST_TRANSFER_V) {
        printf("\nTrying video enc/dec...\n");

        memset(&AliceCC, 0, sizeof(CallControl));
        memset(&BobCC, 0, sizeof(CallControl));

        {
            TOXAV_ERR_CALL rc;
            toxav_call(AliceAV, 0, 0, 2000, &rc);

            if (rc != TOXAV_ERR_CALL_OK) {
                printf("toxav_call failed: %d\n", rc);
                exit(1);
            }
        }

        while (!BobCC.incoming)
            iterate_tox(bootstrap, AliceAV, BobAV);

        {
            TOXAV_ERR_ANSWER rc;
            toxav_answer(BobAV, 0, 0, 5000, &rc);

            if (rc != TOXAV_ERR_ANSWER_OK) {
                printf("toxav_answer failed: %d\n", rc);
                exit(1);
            }
        }

        iterate_tox(bootstrap, AliceAV, BobAV);


        struct toxav_thread_data data = {
            .AliceAV = AliceAV,
            .BobAV = BobAV,
            .sig = 0
        };

        pthread_t dect;
        pthread_create(&dect, ((void*)0), iterate_toxav, &data);
        pthread_detach(dect);

        CvCapture *capture = cvCreateFileCapture(vf_name);

        if (!capture) {
            printf("Failed to open video file: %s\n", vf_name);
            exit(1);
        }



        time_t start_time = time(((void*)0));

        while (start_time + 90 > time(((void*)0))) {
            IplImage *frame = cvQueryFrame(capture );

            if (!frame)
                break;

            send_opencv_img(AliceAV, 0, frame);
            iterate_tox(bootstrap, AliceAV, BobAV);
            c_sleep(10);
        }

        cvReleaseCapture(&capture);

        {
            TOXAV_ERR_CALL_CONTROL rc;
            toxav_call_control(AliceAV, 0, TOXAV_CALL_CONTROL_CANCEL, &rc);

            if (rc != TOXAV_ERR_CALL_CONTROL_OK) {
                printf("toxav_call_control failed: %d\n", rc);
                exit(1);
            }
        }

        iterate_tox(bootstrap, AliceAV, BobAV);
        assert(BobCC.state == TOXAV_FRIEND_CALL_STATE_FINISHED);


        printf("Stopping decode thread\n");
        data.sig = -1;

        while (data.sig != 1)
            pthread_yield();

        printf("Success!");
    }


    Tox *Alice = toxav_get_tox(AliceAV);
    Tox *Bob = toxav_get_tox(BobAV);
    toxav_kill(BobAV);
    toxav_kill(AliceAV);
    tox_kill(Bob);
    tox_kill(Alice);
    tox_kill(bootstrap);

    printf("\nTest successful!\n");

    Pa_Terminate();
    return 0;
}
