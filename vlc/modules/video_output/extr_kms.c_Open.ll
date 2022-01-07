; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*)*, i32, i32, i32*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"kms-vlc-chroma\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Forcing VLC to use chroma '%4s'\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Chroma %4s invalid, using default\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Chroma not defined, using default\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"kms-drm-chroma\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Setting DRM chroma to '%4s'\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@Pool = common dso_local global i32 0, align 4
@Display = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, %struct.TYPE_16__*, i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_16__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @vout_display_cfg_IsWindowed(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %5, align 4
  br label %151

21:                                               ; preds = %4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = call i32 @VLC_OBJECT(%struct.TYPE_14__* %22)
  %24 = call %struct.TYPE_15__* @vlc_obj_calloc(i32 %23, i32 1, i32 32)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %30, i32* %5, align 4
  br label %151

31:                                               ; preds = %21
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i8* @var_InheritString(%struct.TYPE_14__* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load i32, i32* @VIDEO_ES, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = call i64 @vlc_fourcc_GetCodecFromString(i32 %37, i8* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %58

49:                                               ; preds = %36
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %49, %42
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @free(i8* %59)
  store i8* null, i8** %14, align 8
  br label %69

61:                                               ; preds = %31
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %61, %58
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = call i8* @var_InheritString(%struct.TYPE_14__* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %106

74:                                               ; preds = %69
  %75 = load i8*, i8** %14, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @VLC_FOURCC(i8 signext %77, i8 signext %80, i8 signext %83, i8 signext %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %74
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  br label %103

99:                                               ; preds = %74
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Dbg(%struct.TYPE_14__* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %99, %90
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @free(i8* %104)
  store i8* null, i8** %14, align 8
  br label %106

106:                                              ; preds = %103, %69
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = call i64 @OpenDisplay(%struct.TYPE_14__* %107)
  %109 = load i64, i64* @VLC_SUCCESS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = call i32 @Close(%struct.TYPE_14__* %112)
  %114 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %114, i32* %5, align 4
  br label %151

115:                                              ; preds = %106
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = call i32 @video_format_ApplyRotation(%struct.TYPE_16__* %13, %struct.TYPE_16__* %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  store i32 %120, i32* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %125, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %133 = bitcast %struct.TYPE_16__* %132 to i8*
  %134 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 24, i1 false)
  %135 = load i32, i32* @Pool, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  store i32* null, i32** %139, align 8
  %140 = load i32, i32* @Display, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @Control, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i32 (%struct.TYPE_14__*)* @Close, i32 (%struct.TYPE_14__*)** %147, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = load i64, i64* @VLC_SUCCESS, align 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %115, %111, %29, %19
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @vout_display_cfg_IsWindowed(i32*) #2

declare dso_local %struct.TYPE_15__* @vlc_obj_calloc(i32, i32, i32) #2

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_14__*) #2

declare dso_local i8* @var_InheritString(%struct.TYPE_14__*, i8*) #2

declare dso_local i64 @vlc_fourcc_GetCodecFromString(i32, i8*) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, ...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local i64 @OpenDisplay(%struct.TYPE_14__*) #2

declare dso_local i32 @Close(%struct.TYPE_14__*) #2

declare dso_local i32 @video_format_ApplyRotation(%struct.TYPE_16__*, %struct.TYPE_16__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
