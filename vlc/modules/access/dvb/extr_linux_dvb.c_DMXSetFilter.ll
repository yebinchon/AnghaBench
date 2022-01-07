; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_DMXSetFilter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_DMXSetFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_pes_filter_params = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"dvb-adapter\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dvb-device\00", align 1
@DMX = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"snprintf() truncated string for DMX\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Opening device %s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: opening device failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@DMX_IN_FRONTEND = common dso_local global i32 0, align 4
@DMX_OUT_TS_TAP = common dso_local global i32 0, align 4
@DMX_IMMEDIATE_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: DMX_PES_VIDEO0 for PID %d\00", align 1
@DMX_PES_VIDEO0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: DMX_PES_AUDIO0 for PID %d\00", align 1
@DMX_PES_AUDIO0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"DMXSetFilter: DMX_PES_TELETEXT0 for PID %d\00", align 1
@DMX_PES_TELETEXT0 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"DMXSetFilter: DMX_PES_SUBTITLE0 for PID %d\00", align 1
@DMX_PES_SUBTITLE0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"DMXSetFilter: DMX_PES_PCR0 for PID %d\00", align 1
@DMX_PES_PCR0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: DMX_PES_VIDEO1 for PID %d\00", align 1
@DMX_PES_VIDEO1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: DMX_PES_AUDIO1 for PID %d\00", align 1
@DMX_PES_AUDIO1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"DMXSetFilter: DMX_PES_TELETEXT1 for PID %d\00", align 1
@DMX_PES_TELETEXT1 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"DMXSetFilter: DMX_PES_SUBTITLE1 for PID %d\00", align 1
@DMX_PES_SUBTITLE1 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"DMXSetFilter: DMX_PES_PCR1 for PID %d\00", align 1
@DMX_PES_PCR1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: DMX_PES_VIDEO2 for PID %d\00", align 1
@DMX_PES_VIDEO2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: DMX_PES_AUDIO2 for PID %d\00", align 1
@DMX_PES_AUDIO2 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"DMXSetFilter: DMX_PES_TELETEXT2 for PID %d\00", align 1
@DMX_PES_TELETEXT2 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"DMXSetFilter: DMX_PES_SUBTITLE2 for PID %d\00", align 1
@DMX_PES_SUBTITLE2 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"DMXSetFilter: DMX_PES_PCR2 for PID %d\00", align 1
@DMX_PES_PCR2 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: DMX_PES_VIDEO3 for PID %d\00", align 1
@DMX_PES_VIDEO3 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [40 x i8] c"DMXSetFilter: DMX_PES_AUDIO3 for PID %d\00", align 1
@DMX_PES_AUDIO3 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [43 x i8] c"DMXSetFilter: DMX_PES_TELETEXT3 for PID %d\00", align 1
@DMX_PES_TELETEXT3 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [43 x i8] c"DMXSetFilter: DMX_PES_SUBTITLE3 for PID %d\00", align 1
@DMX_PES_SUBTITLE3 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [38 x i8] c"DMXSetFilter: DMX_PES_PCR3 for PID %d\00", align 1
@DMX_PES_PCR3 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [39 x i8] c"DMXSetFilter: DMX_PES_OTHER for PID %d\00", align 1
@DMX_PES_OTHER = common dso_local global i32 0, align 4
@DMX_SET_PES_FILTER = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [36 x i8] c"setting demux PES filter failed: %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMXSetFilter(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dmx_pes_filter_params, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @var_GetInteger(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @var_GetInteger(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %19 = load i8*, i8** @DMX, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @snprintf(i8* %18, i32 128, i8* %19, i32 %20, i32 %21)
  %23 = icmp sge i32 %22, 128
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 (i32*, i8*, ...) @msg_Err(i32* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 127
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %31 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %33 = load i32, i32* @O_RDWR, align 4
  %34 = call i32 @vlc_open(i8* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = icmp slt i32 %34, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @vlc_strerror_c(i32 %39)
  %41 = call i32 (i32*, i8*, ...) @msg_Err(i32* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %42, i32* %5, align 4
  br label %194

43:                                               ; preds = %28
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @DMX_IN_FRONTEND, align 4
  %47 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @DMX_OUT_TS_TAP, align 4
  %49 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @DMX_IMMEDIATE_START, align 4
  %51 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %174 [
    i32 1, label %53
    i32 2, label %59
    i32 3, label %65
    i32 4, label %71
    i32 5, label %77
    i32 6, label %83
    i32 7, label %89
    i32 8, label %95
    i32 9, label %101
    i32 10, label %107
    i32 11, label %113
    i32 12, label %119
    i32 13, label %125
    i32 14, label %131
    i32 15, label %137
    i32 16, label %143
    i32 17, label %149
    i32 18, label %155
    i32 19, label %161
    i32 20, label %167
    i32 21, label %173
  ]

53:                                               ; preds = %43
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @DMX_PES_VIDEO0, align 4
  %58 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  br label %180

59:                                               ; preds = %43
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @DMX_PES_AUDIO0, align 4
  %64 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  br label %180

65:                                               ; preds = %43
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @DMX_PES_TELETEXT0, align 4
  %70 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  br label %180

71:                                               ; preds = %43
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @DMX_PES_SUBTITLE0, align 4
  %76 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  br label %180

77:                                               ; preds = %43
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @DMX_PES_PCR0, align 4
  %82 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  br label %180

83:                                               ; preds = %43
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @DMX_PES_VIDEO1, align 4
  %88 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  br label %180

89:                                               ; preds = %43
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @DMX_PES_AUDIO1, align 4
  %94 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  br label %180

95:                                               ; preds = %43
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @DMX_PES_TELETEXT1, align 4
  %100 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  br label %180

101:                                              ; preds = %43
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @DMX_PES_SUBTITLE1, align 4
  %106 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  br label %180

107:                                              ; preds = %43
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @DMX_PES_PCR1, align 4
  %112 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  br label %180

113:                                              ; preds = %43
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @DMX_PES_VIDEO2, align 4
  %118 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  br label %180

119:                                              ; preds = %43
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %120, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @DMX_PES_AUDIO2, align 4
  %124 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  br label %180

125:                                              ; preds = %43
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @DMX_PES_TELETEXT2, align 4
  %130 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  br label %180

131:                                              ; preds = %43
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @DMX_PES_SUBTITLE2, align 4
  %136 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  br label %180

137:                                              ; preds = %43
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @DMX_PES_PCR2, align 4
  %142 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %141, i32* %142, align 4
  br label %180

143:                                              ; preds = %43
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @DMX_PES_VIDEO3, align 4
  %148 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  br label %180

149:                                              ; preds = %43
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %150, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @DMX_PES_AUDIO3, align 4
  %154 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %153, i32* %154, align 4
  br label %180

155:                                              ; preds = %43
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %156, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @DMX_PES_TELETEXT3, align 4
  %160 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %159, i32* %160, align 4
  br label %180

161:                                              ; preds = %43
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %162, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @DMX_PES_SUBTITLE3, align 4
  %166 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  br label %180

167:                                              ; preds = %43
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %168, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @DMX_PES_PCR3, align 4
  %172 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %171, i32* %172, align 4
  br label %180

173:                                              ; preds = %43
  br label %174

174:                                              ; preds = %43, %173
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %175, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @DMX_PES_OTHER, align 4
  %179 = getelementptr inbounds %struct.dmx_pes_filter_params, %struct.dmx_pes_filter_params* %10, i32 0, i32 1
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %174, %167, %161, %155, %149, %143, %137, %131, %125, %119, %113, %107, %101, %95, %89, %83, %77, %71, %65, %59, %53
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @DMX_SET_PES_FILTER, align 4
  %184 = call i64 @ioctl(i32 %182, i32 %183, %struct.dmx_pes_filter_params* %10)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* @errno, align 4
  %189 = call i32 @vlc_strerror_c(i32 %188)
  %190 = call i32 (i32*, i8*, ...) @msg_Err(i32* %187, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %191, i32* %5, align 4
  br label %194

192:                                              ; preds = %180
  %193 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %192, %186, %37
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dmx_pes_filter_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
