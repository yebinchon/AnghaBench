; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_shm.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_shm.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32*, %struct.TYPE_20__*, i32* }
%struct.TYPE_20__ = type { i32, i32 (%struct.TYPE_20__*)*, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"shm-depth\00", align 1
@VLC_CODEC_RGB32 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB24 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB16 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB15 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB8 = common dso_local global i32 0, align 4
@VLC_CODEC_XWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"shm-width\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"shm-height\00", align 1
@Open.Demux = internal global void (i8*)* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"shm-file\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot open file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"shm-fps\00", align 1
@CLOCK_FREQ = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@IPC_PRIVATE = common dso_local global i32 0, align 4
@SHM_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__, align 4
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %4, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %2, align 4
  br label %172

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_20__* @vlc_obj_malloc(i32* %23, i32 40)
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %5, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = icmp eq %struct.TYPE_20__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %172

32:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = call i32 @var_InheritInteger(%struct.TYPE_19__* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  switch i32 %34, label %47 [
    i32 32, label %35
    i32 24, label %37
    i32 16, label %39
    i32 15, label %41
    i32 8, label %43
    i32 0, label %45
  ]

35:                                               ; preds = %32
  %36 = load i32, i32* @VLC_CODEC_RGB32, align 4
  store i32 %36, i32* %6, align 4
  store i32 32, i32* %9, align 4
  br label %49

37:                                               ; preds = %32
  %38 = load i32, i32* @VLC_CODEC_RGB24, align 4
  store i32 %38, i32* %6, align 4
  store i32 24, i32* %9, align 4
  br label %49

39:                                               ; preds = %32
  %40 = load i32, i32* @VLC_CODEC_RGB16, align 4
  store i32 %40, i32* %6, align 4
  store i32 16, i32* %9, align 4
  br label %49

41:                                               ; preds = %32
  %42 = load i32, i32* @VLC_CODEC_RGB15, align 4
  store i32 %42, i32* %6, align 4
  store i32 16, i32* %9, align 4
  br label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @VLC_CODEC_RGB8, align 4
  store i32 %44, i32* %6, align 4
  store i32 8, i32* %9, align 4
  br label %49

45:                                               ; preds = %32
  %46 = load i32, i32* @VLC_CODEC_XWD, align 4
  store i32 %46, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %49

47:                                               ; preds = %32
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %2, align 4
  br label %172

49:                                               ; preds = %45, %43, %41, %39, %37, %35
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = call i32 @var_InheritInteger(%struct.TYPE_19__* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = call i32 @var_InheritInteger(%struct.TYPE_19__* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = call i8* @var_InheritString(%struct.TYPE_19__* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %57
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* @O_RDONLY, align 4
  %65 = call i32 @vlc_open(i8* %63, i32 %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @vlc_strerror_c(i32 %75)
  %77 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Err(%struct.TYPE_19__* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %74, i32 %76)
  br label %78

78:                                               ; preds = %72, %62
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %86, i32* %2, align 4
  br label %172

87:                                               ; preds = %78
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  store i32 (%struct.TYPE_20__*)* @CloseFile, i32 (%struct.TYPE_20__*)** %89, align 8
  store void (i8*)* @DemuxFile, void (i8*)** @Open.Demux, align 8
  br label %91

90:                                               ; preds = %57
  br label %165

91:                                               ; preds = %87
  %92 = load i32*, i32** %3, align 8
  %93 = call float @var_InheritFloat(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store float %93, float* %11, align 4
  %94 = load float, float* %11, align 4
  %95 = fcmp ole float %94, 0.000000e+00
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %165

97:                                               ; preds = %91
  %98 = load i64, i64* @CLOCK_FREQ, align 8
  %99 = sitofp i64 %98 to float
  %100 = load float, float* %11, align 4
  %101 = fdiv float %99, %100
  %102 = call i32 @llroundf(float %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  br label %165

106:                                              ; preds = %97
  %107 = load i32, i32* @VIDEO_ES, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @es_format_Init(%struct.TYPE_18__* %13, i32 %107, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %9, align 4
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  store i32 1, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load float, float* %11, align 4
  %121 = fmul float 1.000000e+03, %120
  %122 = fptosi float %121 to i32
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 4
  store i32 1000, i32* %126, align 4
  %127 = load i32, i32* %7, align 4
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 5
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 8
  store i32 %132, i32* %134, align 4
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 7
  store i32 %132, i32* %136, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @es_out_Add(i32* %139, %struct.TYPE_18__* %13)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load void (i8*)*, void (i8*)** @Open.Demux, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %147 = call i64 @vlc_timer_create(i32* %144, void (i8*)* %145, %struct.TYPE_19__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %106
  br label %165

150:                                              ; preds = %106
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @vlc_timer_schedule_asap(i32 %153, i32 %154)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  store %struct.TYPE_20__* %156, %struct.TYPE_20__** %158, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  store i32* null, i32** %160, align 8
  %161 = load i32, i32* @Control, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %164, i32* %2, align 4
  br label %172

165:                                              ; preds = %149, %105, %96, %90
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %167, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %170 = call i32 %168(%struct.TYPE_20__* %169)
  %171 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %165, %150, %85, %47, %30, %20
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_20__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_19__*, i8*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CloseFile(%struct.TYPE_20__*) #1

declare dso_local void @DemuxFile(i8*) #1

declare dso_local float @var_InheritFloat(i32*, i8*) #1

declare dso_local i32 @llroundf(float) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @es_out_Add(i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @vlc_timer_create(i32*, void (i8*)*, %struct.TYPE_19__*) #1

declare dso_local i32 @vlc_timer_schedule_asap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
