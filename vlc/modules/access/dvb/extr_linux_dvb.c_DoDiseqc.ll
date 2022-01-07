; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_DoDiseqc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_DoDiseqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.diseqc_cmd_t = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"dvb-frequency\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dvb-lnb-slof\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dvb-tone\00", align 1
@FE_SET_TONE = common dso_local global i32 0, align 4
@SEC_TONE_OFF = common dso_local global %struct.TYPE_13__* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"switching tone %s error: %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@FE_SET_VOLTAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"voltage error: %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dvb-high-voltage\00", align 1
@FE_ENABLE_HIGH_LNB_VOLTAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"high LNB voltage error: %s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"dvb-satno\00", align 1
@SEC_VOLTAGE_13 = common dso_local global i64 0, align 8
@SEC_TONE_ON = common dso_local global %struct.TYPE_13__* null, align 8
@FE_DISEQC_SEND_MASTER_CMD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"master command sending error: %s\00", align 1
@FE_DISEQC_SEND_BURST = common dso_local global i32 0, align 4
@SEC_MINI_B = common dso_local global %struct.TYPE_13__* null, align 8
@SEC_MINI_A = common dso_local global %struct.TYPE_13__* null, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"burst sending error: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*)* @DoDiseqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoDiseqc(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.diseqc_cmd_t, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @var_GetInteger(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @var_GetInteger(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @var_GetInteger(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @var_SetInteger(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @DecodeVoltage(i32* %32)
  store i64 %33, i64* %10, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call %struct.TYPE_13__* @DecodeTone(i32* %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %11, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FE_SET_TONE, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SEC_TONE_OFF, align 8
  %41 = call i64 (i32, i32, ...) @ioctl(i32 %38, i32 %39, %struct.TYPE_13__* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @vlc_strerror_c(i32 %45)
  %47 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %3, align 4
  br label %190

49:                                               ; preds = %31
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FE_SET_VOLTAGE, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i64 (i32, i32, ...) @ioctl(i32 %52, i32 %53, i64 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @vlc_strerror_c(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %3, align 4
  br label %190

65:                                               ; preds = %49
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @var_GetBool(i32* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FE_ENABLE_HIGH_LNB_VOLTAGE, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i64 (i32, i32, ...) @ioctl(i32 %70, i32 %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @vlc_strerror_c(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %78, %75, %65
  %86 = call i32 @VLC_TICK_FROM_MS(i32 15)
  %87 = call i32 @vlc_tick_sleep(i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @var_GetInteger(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %168

92:                                               ; preds = %85
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 5
  br i1 %94, label %95, label %168

95:                                               ; preds = %92
  %96 = bitcast %struct.diseqc_cmd_t* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %96, i8 0, i64 48, i1 false)
  %97 = bitcast i8* %96 to %struct.diseqc_cmd_t*
  %98 = getelementptr inbounds %struct.diseqc_cmd_t, %struct.diseqc_cmd_t* %97, i32 0, i32 0
  store i32 224, i32* %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 1
  %101 = mul nsw i32 %100, 4
  %102 = and i32 %101, 12
  %103 = or i32 240, %102
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @SEC_VOLTAGE_13, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 2
  %109 = or i32 %103, %108
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SEC_TONE_ON, align 8
  %112 = icmp eq %struct.TYPE_13__* %110, %111
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  %115 = or i32 %109, %114
  %116 = getelementptr inbounds %struct.diseqc_cmd_t, %struct.diseqc_cmd_t* %12, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  store i32 %115, i32* %119, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FE_DISEQC_SEND_MASTER_CMD, align 4
  %124 = getelementptr inbounds %struct.diseqc_cmd_t, %struct.diseqc_cmd_t* %12, i32 0, i32 1
  %125 = call i64 (i32, i32, ...) @ioctl(i32 %122, i32 %123, %struct.TYPE_13__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %95
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @vlc_strerror_c(i32 %129)
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %134, i32* %3, align 4
  br label %190

135:                                              ; preds = %95
  %136 = getelementptr inbounds %struct.diseqc_cmd_t, %struct.diseqc_cmd_t* %12, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 15, %137
  %139 = call i32 @VLC_TICK_FROM_MS(i32 %138)
  %140 = call i32 @vlc_tick_sleep(i32 %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @FE_DISEQC_SEND_BURST, align 4
  %145 = load i32, i32* %6, align 4
  %146 = sub nsw i32 %145, 1
  %147 = srem i32 %146, 2
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %135
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SEC_MINI_B, align 8
  br label %153

151:                                              ; preds = %135
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SEC_MINI_A, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi %struct.TYPE_13__* [ %150, %149 ], [ %152, %151 ]
  %155 = call i64 (i32, i32, ...) @ioctl(i32 %143, i32 %144, %struct.TYPE_13__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* @errno, align 4
  %160 = call i32 @vlc_strerror_c(i32 %159)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %162)
  %164 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %164, i32* %3, align 4
  br label %190

165:                                              ; preds = %153
  %166 = call i32 @VLC_TICK_FROM_MS(i32 15)
  %167 = call i32 @vlc_tick_sleep(i32 %166)
  br label %168

168:                                              ; preds = %165, %92, %85
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @FE_SET_TONE, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %174 = call i64 (i32, i32, ...) @ioctl(i32 %171, i32 %172, %struct.TYPE_13__* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %168
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SEC_TONE_ON, align 8
  %180 = icmp eq %struct.TYPE_13__* %178, %179
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %183 = load i32, i32* @errno, align 4
  %184 = call i32 @vlc_strerror_c(i32 %183)
  %185 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %182, i32 %184)
  %186 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %186, i32* %3, align 4
  br label %190

187:                                              ; preds = %168
  %188 = call i32 @VLC_TICK_FROM_MS(i32 50)
  %189 = call i32 @vlc_tick_sleep(i32 %188)
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %187, %176, %157, %127, %57, %43
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @var_SetInteger(i32*, i8*, i32) #1

declare dso_local i64 @DecodeVoltage(i32*) #1

declare dso_local %struct.TYPE_13__* @DecodeTone(i32*) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @var_GetBool(i32*, i8*) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
