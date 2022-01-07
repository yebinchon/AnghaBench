; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_set_equalizer.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_set_equalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { double*, i32 }

@EQZ_BANDS_MAX = common dso_local global i32 0, align 4
@EQZ_BAND_VALUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" %.07f\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"equalizer-preamp\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"equalizer-bands\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"audio-filter\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"equalizer\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_player_set_equalizer(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %12 = load i32, i32* @EQZ_BANDS_MAX, align 4
  %13 = load i32, i32* @EQZ_BAND_VALUE_SIZE, align 4
  %14 = mul i32 %12, %13
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EQZ_BANDS_MAX, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %18, i64 %28
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = sub i64 %16, %31
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load double*, double** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = call i64 @snprintf(i8* %29, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %40)
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp uge i64 %47, %16
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %99

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @var_SetFloat(%struct.TYPE_10__* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = call i32 @var_SetString(%struct.TYPE_10__* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %65

65:                                               ; preds = %57, %2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %71 = call i32 @var_SetString(%struct.TYPE_10__* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_10__* @vlc_player_aout_Hold(i32 %74)
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %11, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %98

78:                                               ; preds = %65
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = icmp ne %struct.TYPE_11__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @var_SetFloat(%struct.TYPE_10__* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = call i32 @var_SetString(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %89

89:                                               ; preds = %81, %78
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = icmp ne %struct.TYPE_11__* %91, null
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %95 = call i32 @var_SetString(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = call i32 @aout_Release(%struct.TYPE_10__* %96)
  br label %98

98:                                               ; preds = %89, %65
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %52
  %100 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snprintf(i8*, i32, i8*, double) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @var_SetFloat(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i32 @var_SetString(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local %struct.TYPE_10__* @vlc_player_aout_Hold(i32) #2

declare dso_local i32 @aout_Release(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
