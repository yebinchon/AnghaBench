#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int time_t ;
struct toxav_thread_data {scalar_t__ state; int sig; int /*<<< orphan*/ * BobAV; int /*<<< orphan*/ * AliceAV; int /*<<< orphan*/  incoming; void* arb; int /*<<< orphan*/  arb_mutex; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct PaStreamParameters {long device; int channelCount; int /*<<< orphan*/ * hostApiSpecificStreamInfo; int /*<<< orphan*/  suggestedLatency; int /*<<< orphan*/  sampleFormat; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int int64_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  ToxAV ;
typedef  int /*<<< orphan*/  Tox ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  defaultHighOutputLatency; } ;
struct TYPE_5__ {int frames; int samplerate; int channels; } ;
typedef  int /*<<< orphan*/  TOXAV_ERR_SEND_FRAME ;
typedef  int TOXAV_ERR_CALL_CONTROL ;
typedef  int TOXAV_ERR_CALL ;
typedef  int TOXAV_ERR_ANSWER ;
typedef  int /*<<< orphan*/  SNDFILE ;
typedef  TYPE_1__ SF_INFO ;
typedef  scalar_t__ PaError ;
typedef  TYPE_2__ PaDeviceInfo ;
typedef  int /*<<< orphan*/  IplImage ;
typedef  int /*<<< orphan*/  CvCapture ;
typedef  struct toxav_thread_data CallControl ;

/* Variables and functions */
 long FUNC0 () ; 
 TYPE_2__* FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct PaStreamParameters*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  SFM_READ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEST_TRANSFER_A ; 
 scalar_t__ TEST_TRANSFER_V ; 
 int /*<<< orphan*/  TOXAV_CALL_CONTROL_CANCEL ; 
 int TOXAV_ERR_ANSWER_OK ; 
 int TOXAV_ERR_CALL_CONTROL_OK ; 
 int TOXAV_ERR_CALL_OK ; 
 scalar_t__ TOXAV_FRIEND_CALL_STATE_FINISHED ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  adout ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC19 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,struct toxav_thread_data*,int /*<<< orphan*/ **,struct toxav_thread_data*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iterate_toxav ; 
 int /*<<< orphan*/  FUNC22 (struct toxav_thread_data*,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 int /*<<< orphan*/  paInt16 ; 
 scalar_t__ paNoError ; 
 int /*<<< orphan*/  paNoFlag ; 
 int /*<<< orphan*/  pa_write_thread ; 
 int FUNC23 () ; 
 int FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct toxav_thread_data*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 void* FUNC31 (int) ; 
 scalar_t__ FUNC32 (void*,void**) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC35 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC37 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC38 (char*,char**,int) ; 
 int FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC45 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *) ; 

int FUNC47 (int argc, char **argv)
{
    FUNC18("/dev/zero", "w", stderr);
    FUNC2();

    struct stat st;

    /* AV files for testing */
    const char *af_name = NULL;
    const char *vf_name = NULL;
    long audio_out_dev_idx = -1;

    int32_t audio_frame_duration = 20;
    int32_t video_frame_duration = 10;

    /* Parse settings */
CHECK_ARG:

    switch (FUNC19(argc, argv, "a:b:v:x:o:dh")) {
        case 'a':
            af_name = optarg;
            goto CHECK_ARG;

        case 'b': {
            char *d;
            audio_frame_duration = FUNC38(optarg, &d, 10);

            if (*d) {
                FUNC25("Invalid value for argument: 'b'");
                FUNC15(1);
            }

            goto CHECK_ARG;
        }

        case 'v':
            vf_name = optarg;
            goto CHECK_ARG;

        case 'x': {
            char *d;
            video_frame_duration = FUNC38(optarg, &d, 10);

            if (*d) {
                FUNC25("Invalid value for argument: 'x'");
                FUNC15(1);
            }

            goto CHECK_ARG;
        }

        case 'o': {
            char *d;
            audio_out_dev_idx = FUNC38(optarg, &d, 10);

            if (*d) {
                FUNC25("Invalid value for argument: 'o'");
                FUNC15(1);
            }

            goto CHECK_ARG;
        }

        case 'd':
            return FUNC23();

        case 'h':
            return FUNC24(argv[0]);

        case '?':
            FUNC15(1);

        case -1:
            ;
    }

    { /* Check files */
        if (!af_name) {
            FUNC25("Required audio input file!\n");
            FUNC15(1);
        }

        if (!vf_name) {
            FUNC25("Required video input file!\n");
            FUNC15(1);
        }

        /* Check for files */
        if (FUNC37(af_name, &st) != 0 || !FUNC7(st.st_mode)) {
            FUNC25("%s doesn't seem to be a regular file!\n", af_name);
            FUNC15(1);
        }

        if (FUNC37(vf_name, &st) != 0 || !FUNC7(st.st_mode)) {
            FUNC25("%s doesn't seem to be a regular file!\n", vf_name);
            FUNC15(1);
        }
    }

    if (audio_out_dev_idx < 0)
        audio_out_dev_idx = FUNC0();

    const PaDeviceInfo *audio_dev = FUNC1(audio_out_dev_idx);

    if (!audio_dev) {
        FUNC16(stderr, "Device under index: %ld invalid", audio_out_dev_idx);
        return 1;
    }

    FUNC25("Using audio device: %s\n", audio_dev->name);
    FUNC25("Using audio file: %s\n", af_name);
    FUNC25("Using video file: %s\n", vf_name);

    /* START TOX NETWORK */

    Tox *bootstrap;
    ToxAV *AliceAV;
    ToxAV *BobAV;

    CallControl AliceCC;
    CallControl BobCC;

    FUNC20(&bootstrap, &AliceAV, &AliceCC, &BobAV, &BobCC);

    if (TEST_TRANSFER_A) {
        SNDFILE *af_handle;
        SF_INFO af_info;

        FUNC25("\nTrying audio enc/dec...\n");

        FUNC22(&AliceCC, 0, sizeof(CallControl));
        FUNC22(&BobCC, 0, sizeof(CallControl));

        FUNC29(AliceCC.arb_mutex, NULL);
        FUNC29(BobCC.arb_mutex, NULL);

        AliceCC.arb = FUNC31(16);
        BobCC.arb = FUNC31(16);

        { /* Call */
            TOXAV_ERR_CALL rc;
            FUNC43(AliceAV, 0, 48, 0, &rc);

            if (rc != TOXAV_ERR_CALL_OK) {
                FUNC25("toxav_call failed: %d\n", rc);
                FUNC15(1);
            }
        }

        while (!BobCC.incoming)
            FUNC21(bootstrap, AliceAV, BobAV);

        { /* Answer */
            TOXAV_ERR_ANSWER rc;
            FUNC41(BobAV, 0, 48, 0, &rc);

            if (rc != TOXAV_ERR_ANSWER_OK) {
                FUNC25("toxav_answer failed: %d\n", rc);
                FUNC15(1);
            }
        }

        while (AliceCC.state == 0)
            FUNC21(bootstrap, AliceAV, BobAV);

        /* Open audio file */
        af_handle = FUNC35(af_name, SFM_READ, &af_info);

        if (af_handle == NULL) {
            FUNC25("Failed to open the file.\n");
            FUNC15(1);
        }

        int16_t PCM[5760];

        time_t start_time = FUNC39(NULL);
        time_t expected_time = af_info.frames / af_info.samplerate + 2;


        /* Start decode thread */
        struct toxav_thread_data data = {
            .AliceAV = AliceAV,
            .BobAV = BobAV,
            .sig = 0
        };

        pthread_t dect;
        FUNC26(&dect, NULL, iterate_toxav, &data);
        FUNC27(dect);

        int frame_size = (af_info.samplerate * audio_frame_duration / 1000) * af_info.channels;

        struct PaStreamParameters output;
        output.device = audio_out_dev_idx;
        output.channelCount = af_info.channels;
        output.sampleFormat = paInt16;
        output.suggestedLatency = audio_dev->defaultHighOutputLatency;
        output.hostApiSpecificStreamInfo = NULL;

        PaError err = FUNC3(&adout, NULL, &output, af_info.samplerate, frame_size, paNoFlag, NULL, NULL);
        FUNC9(err == paNoError);

        err = FUNC4(adout);
        FUNC9(err == paNoError);

//         toxav_audio_bit_rate_set(AliceAV, 0, 64, false, NULL);

        /* Start write thread */
        pthread_t t;
        FUNC26(&t, NULL, pa_write_thread, &BobCC);
        FUNC27(t);

        FUNC25("Sample rate %d\n", af_info.samplerate);

        while (start_time + expected_time > FUNC39(NULL) ) {
            uint64_t enc_start_time = FUNC11();
            int64_t count = FUNC36(af_handle, PCM, frame_size);

            if (count > 0) {
                TOXAV_ERR_SEND_FRAME rc;

                if (FUNC42(AliceAV, 0, PCM, count / af_info.channels, af_info.channels, af_info.samplerate,
                                           &rc) == false) {
                    FUNC25("Error sending frame of size %ld: %d\n", count, rc);
                }
            }

            FUNC21(bootstrap, AliceAV, BobAV);
            FUNC10(FUNC8(audio_frame_duration - (FUNC11() - enc_start_time) - 1));
        }

        FUNC25("Played file in: %lu; stopping stream...\n", FUNC39(NULL) - start_time);

        FUNC5(adout);
        FUNC34(af_handle);

        { /* Hangup */
            TOXAV_ERR_CALL_CONTROL rc;
            FUNC44(AliceAV, 0, TOXAV_CALL_CONTROL_CANCEL, &rc);

            if (rc != TOXAV_ERR_CALL_CONTROL_OK) {
                FUNC25("toxav_call_control failed: %d\n", rc);
                FUNC15(1);
            }
        }

        FUNC21(bootstrap, AliceAV, BobAV);
        FUNC9(BobCC.state == TOXAV_FRIEND_CALL_STATE_FINISHED);

        /* Stop decode thread */
        data.sig = -1;

        while (data.sig != 1)
            FUNC30();

        FUNC28(AliceCC.arb_mutex);
        FUNC28(BobCC.arb_mutex);

        void *f = NULL;

        while (FUNC32(AliceCC.arb, &f))
            FUNC17(f);

        while (FUNC32(BobCC.arb, &f))
            FUNC17(f);

        FUNC25("Success!");
    }

    if (TEST_TRANSFER_V) {
        FUNC25("\nTrying video enc/dec...\n");

        FUNC22(&AliceCC, 0, sizeof(CallControl));
        FUNC22(&BobCC, 0, sizeof(CallControl));

        { /* Call */
            TOXAV_ERR_CALL rc;
            FUNC43(AliceAV, 0, 0, 2000, &rc);

            if (rc != TOXAV_ERR_CALL_OK) {
                FUNC25("toxav_call failed: %d\n", rc);
                FUNC15(1);
            }
        }

        while (!BobCC.incoming)
            FUNC21(bootstrap, AliceAV, BobAV);

        { /* Answer */
            TOXAV_ERR_ANSWER rc;
            FUNC41(BobAV, 0, 0, 5000, &rc);

            if (rc != TOXAV_ERR_ANSWER_OK) {
                FUNC25("toxav_answer failed: %d\n", rc);
                FUNC15(1);
            }
        }

        FUNC21(bootstrap, AliceAV, BobAV);

        /* Start decode thread */
        struct toxav_thread_data data = {
            .AliceAV = AliceAV,
            .BobAV = BobAV,
            .sig = 0
        };

        pthread_t dect;
        FUNC26(&dect, NULL, iterate_toxav, &data);
        FUNC27(dect);

        CvCapture *capture = FUNC12(vf_name);

        if (!capture) {
            FUNC25("Failed to open video file: %s\n", vf_name);
            FUNC15(1);
        }

//         toxav_video_bit_rate_set(AliceAV, 0, 5000, false, NULL);

        time_t start_time = FUNC39(NULL);

        while (start_time + 90 > FUNC39(NULL)) {
            IplImage *frame = FUNC13(capture );

            if (!frame)
                break;

            FUNC33(AliceAV, 0, frame);
            FUNC21(bootstrap, AliceAV, BobAV);
            FUNC10(10);
        }

        FUNC14(&capture);

        { /* Hangup */
            TOXAV_ERR_CALL_CONTROL rc;
            FUNC44(AliceAV, 0, TOXAV_CALL_CONTROL_CANCEL, &rc);

            if (rc != TOXAV_ERR_CALL_CONTROL_OK) {
                FUNC25("toxav_call_control failed: %d\n", rc);
                FUNC15(1);
            }
        }

        FUNC21(bootstrap, AliceAV, BobAV);
        FUNC9(BobCC.state == TOXAV_FRIEND_CALL_STATE_FINISHED);

        /* Stop decode thread */
        FUNC25("Stopping decode thread\n");
        data.sig = -1;

        while (data.sig != 1)
            FUNC30();

        FUNC25("Success!");
    }


    Tox *Alice = FUNC45(AliceAV);
    Tox *Bob = FUNC45(BobAV);
    FUNC46(BobAV);
    FUNC46(AliceAV);
    FUNC40(Bob);
    FUNC40(Alice);
    FUNC40(bootstrap);

    FUNC25("\nTest successful!\n");

    FUNC6();
    return 0;
}