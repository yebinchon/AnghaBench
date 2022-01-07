; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FE_GET_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"frontend info request error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Frontend Info:\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"  name = %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"  type = QPSK (DVB-S)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"  type = QAM (DVB-C)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"  type = OFDM (DVB-T)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"  type = ATSC (USA)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"  unknown frontend type (%d)\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"  frequency_min = %u (kHz)\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"  frequency_max = %u (kHz)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"  frequency_stepsize = %u\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"  frequency_tolerance = %u\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"  symbol_rate_min = %u (kHz)\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"  symbol_rate_max = %u (kHz)\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"  symbol_rate_tolerance (ppm) = %u\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"  notifier_delay (ms) = %u\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Frontend Info capability list:\00", align 1
@FE_IS_STUPID = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"  no capabilities - frontend is stupid!\00", align 1
@FE_CAN_INVERSION_AUTO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"  inversion auto\00", align 1
@FE_CAN_FEC_1_2 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"  forward error correction 1/2\00", align 1
@FE_CAN_FEC_2_3 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"  forward error correction 2/3\00", align 1
@FE_CAN_FEC_3_4 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [31 x i8] c"  forward error correction 3/4\00", align 1
@FE_CAN_FEC_4_5 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [31 x i8] c"  forward error correction 4/5\00", align 1
@FE_CAN_FEC_5_6 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [31 x i8] c"  forward error correction 5/6\00", align 1
@FE_CAN_FEC_6_7 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [31 x i8] c"  forward error correction 6/7\00", align 1
@FE_CAN_FEC_7_8 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [31 x i8] c"  forward error correction 7/8\00", align 1
@FE_CAN_FEC_8_9 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [31 x i8] c"  forward error correction 8/9\00", align 1
@FE_CAN_FEC_AUTO = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [32 x i8] c"  forward error correction auto\00", align 1
@FE_CAN_QPSK = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [18 x i8] c"  QPSK modulation\00", align 1
@FE_CAN_QAM_16 = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [20 x i8] c"  QAM 16 modulation\00", align 1
@FE_CAN_QAM_32 = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [20 x i8] c"  QAM 32 modulation\00", align 1
@FE_CAN_QAM_64 = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [20 x i8] c"  QAM 64 modulation\00", align 1
@FE_CAN_QAM_128 = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [21 x i8] c"  QAM 128 modulation\00", align 1
@FE_CAN_QAM_256 = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [21 x i8] c"  QAM 256 modulation\00", align 1
@FE_CAN_QAM_AUTO = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [22 x i8] c"  QAM auto modulation\00", align 1
@FE_CAN_TRANSMISSION_MODE_AUTO = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [25 x i8] c"  transmission mode auto\00", align 1
@FE_CAN_BANDWIDTH_AUTO = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [22 x i8] c"  bandwidth mode auto\00", align 1
@FE_CAN_GUARD_INTERVAL_AUTO = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [27 x i8] c"  guard interval mode auto\00", align 1
@FE_CAN_HIERARCHY_AUTO = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [22 x i8] c"  hierarchy mode auto\00", align 1
@FE_CAN_8VSB = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [25 x i8] c"  8-level VSB modulation\00", align 1
@FE_CAN_16VSB = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [26 x i8] c"  16-level VSB modulation\00", align 1
@FE_HAS_EXTENDED_CAPS = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [24 x i8] c"  extended capabilities\00", align 1
@FE_CAN_2G_MODULATION = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [37 x i8] c"  2nd generation modulation (DVB-S2)\00", align 1
@FE_CAN_RECOVER = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [24 x i8] c"  cable unplug recovery\00", align 1
@FE_CAN_MUTE_TS = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [21 x i8] c"  spurious TS muting\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"End of capability list\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@FE_CAN_TURBO_FEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @FrontendInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FrontendInfo(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FE_GET_INFO, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i64 @ioctl(i32 %12, i32 %13, %struct.TYPE_7__* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @vlc_strerror_c(i32 %20)
  %22 = call i32 @msg_Err(i32* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %3, align 4
  br label %418

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %49 [
    i32 128, label %37
    i32 129, label %40
    i32 130, label %43
    i32 133, label %46
  ]

37:                                               ; preds = %24
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %57

40:                                               ; preds = %24
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %57

43:                                               ; preds = %24
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %57

46:                                               ; preds = %24
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %57

49:                                               ; preds = %24
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @msg_Err(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %3, align 4
  br label %418

57:                                               ; preds = %46, %43, %40, %37
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FE_IS_STUPID, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %57
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %57
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FE_CAN_INVERSION_AUTO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %117
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FE_CAN_FEC_1_2, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %128
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @FE_CAN_FEC_2_3, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %139
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @FE_CAN_FEC_3_4, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %150
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @FE_CAN_FEC_4_5, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %161
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @FE_CAN_FEC_5_6, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %172
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @FE_CAN_FEC_6_7, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %183
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %183
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @FE_CAN_FEC_7_8, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %194
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @FE_CAN_FEC_8_9, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %214, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %205
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @FE_CAN_FEC_AUTO, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %216
  %225 = load i32*, i32** %4, align 8
  %226 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %225, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %216
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @FE_CAN_QPSK, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %236, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %227
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @FE_CAN_QAM_16, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %238
  %247 = load i32*, i32** %4, align 8
  %248 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %247, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %238
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @FE_CAN_QAM_32, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load i32*, i32** %4, align 8
  %259 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  br label %260

260:                                              ; preds = %257, %249
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @FE_CAN_QAM_64, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %260
  %269 = load i32*, i32** %4, align 8
  %270 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %269, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %260
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @FE_CAN_QAM_128, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %271
  %280 = load i32*, i32** %4, align 8
  %281 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %280, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %282

282:                                              ; preds = %279, %271
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @FE_CAN_QAM_256, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %282
  %291 = load i32*, i32** %4, align 8
  %292 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %282
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @FE_CAN_QAM_AUTO, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %293
  %302 = load i32*, i32** %4, align 8
  %303 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %302, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  br label %304

304:                                              ; preds = %301, %293
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @FE_CAN_TRANSMISSION_MODE_AUTO, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %304
  %313 = load i32*, i32** %4, align 8
  %314 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %313, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0))
  br label %315

315:                                              ; preds = %312, %304
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @FE_CAN_BANDWIDTH_AUTO, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %315
  %324 = load i32*, i32** %4, align 8
  %325 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %324, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0))
  br label %326

326:                                              ; preds = %323, %315
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @FE_CAN_GUARD_INTERVAL_AUTO, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %326
  %335 = load i32*, i32** %4, align 8
  %336 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %335, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0))
  br label %337

337:                                              ; preds = %334, %326
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @FE_CAN_HIERARCHY_AUTO, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %337
  %346 = load i32*, i32** %4, align 8
  %347 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %346, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0))
  br label %348

348:                                              ; preds = %345, %337
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @FE_CAN_8VSB, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %348
  %357 = load i32*, i32** %4, align 8
  %358 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %357, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0))
  br label %359

359:                                              ; preds = %356, %348
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @FE_CAN_16VSB, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %359
  %368 = load i32*, i32** %4, align 8
  %369 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0))
  br label %370

370:                                              ; preds = %367, %359
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @FE_HAS_EXTENDED_CAPS, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %370
  %379 = load i32*, i32** %4, align 8
  %380 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %379, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0))
  br label %381

381:                                              ; preds = %378, %370
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @FE_CAN_2G_MODULATION, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %381
  %390 = load i32*, i32** %4, align 8
  %391 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %390, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0))
  br label %392

392:                                              ; preds = %389, %381
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @FE_CAN_RECOVER, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %392
  %401 = load i32*, i32** %4, align 8
  %402 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %401, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0))
  br label %403

403:                                              ; preds = %400, %392
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @FE_CAN_MUTE_TS, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %403
  %412 = load i32*, i32** %4, align 8
  %413 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %412, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0))
  br label %414

414:                                              ; preds = %411, %403
  %415 = load i32*, i32** %4, align 8
  %416 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %415, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0))
  %417 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %417, i32* %3, align 4
  br label %418

418:                                              ; preds = %414, %49, %18
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
