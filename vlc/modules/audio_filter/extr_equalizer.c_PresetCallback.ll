; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_equalizer.c_PresetCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_equalizer.c_PresetCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float*, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32 }

@NB_PRESETS = common dso_local global i32 0, align 4
@eqz_preset_10b = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"equalizer preset '%s' not found\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"full list:\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  - '%s'\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@EQZ_BANDS_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s %lld.%07llu\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"equalizer-preamp\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"equalizer-bands\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*)* @PresetCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PresetCallback(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_9__, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* %2, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i8* %3, i8** %21, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %44, %5
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @NB_PRESETS, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eqz_preset_10b, align 8
  %30 = load i32, i32* %14, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @strcasecmp(i32 %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eqz_preset_10b, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %12, align 8
  br label %47

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %14, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %24

47:                                               ; preds = %38, %24
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = icmp eq %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @msg_Err(i32* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 (i32*, i8*, ...) @msg_Info(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %69, %50
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @NB_PRESETS, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eqz_preset_10b, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32*, i8*, ...) @msg_Info(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %15, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %73, i32* %6, align 4
  br label %134

74:                                               ; preds = %47
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %117, %74
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @EQZ_BANDS_MAX, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %120

79:                                               ; preds = %75
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  %87 = fmul float %86, 1.000000e+07
  %88 = call i32 @lroundf(float %87)
  %89 = call i64 @lldiv(i32 %88, i32 10000000)
  %90 = bitcast %struct.TYPE_9__* %19 to i64*
  store i64 %89, i64* %90, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i8*, i8** %16, align 8
  br label %96

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i8* [ %94, %93 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %95 ]
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @asprintf(i8** %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %97, i32 %99, i32 %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i8* null, i8** %18, align 8
  br label %105

105:                                              ; preds = %104, %96
  %106 = load i8*, i8** %16, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i8*, i8** %18, align 8
  %109 = icmp eq i8* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %114, i32* %6, align 4
  br label %134

115:                                              ; preds = %105
  %116 = load i8*, i8** %18, align 8
  store i8* %116, i8** %16, align 8
  br label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %17, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %75

120:                                              ; preds = %75
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @var_SetFloat(i32* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = call i32 @var_SetString(i32* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %127)
  %129 = load i8*, i8** %16, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %120, %113, %72
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @msg_Info(i32*, i8*, ...) #1

declare dso_local i64 @lldiv(i32, i32) #1

declare dso_local i32 @lroundf(float) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @var_SetFloat(i32*, i8*, i32) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
