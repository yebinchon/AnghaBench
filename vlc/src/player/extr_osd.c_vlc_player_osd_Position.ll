; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_osd_Position.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_osd_Position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { float }

@VLC_TICK_INVALID = common dso_local global float 0.000000e+00, align 4
@VLC_PLAYER_WHENCE_RELATIVE = common dso_local global i32 0, align 4
@MSTRTIME_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s / %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OSD_HOR_SLIDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_osd_Position(i32* %0, %struct.vlc_player_input* %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vlc_player_input*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.vlc_player_input* %1, %struct.vlc_player_input** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %18 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = load float, float* @VLC_TICK_INVALID, align 4
  %21 = fcmp une float %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %5
  %23 = load float, float* %8, align 4
  %24 = load float, float* @VLC_TICK_INVALID, align 4
  %25 = fcmp oeq float %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load float, float* %9, align 4
  %28 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %29 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %28, i32 0, i32 0
  %30 = load float, float* %29, align 4
  %31 = fmul float %27, %30
  store float %31, float* %8, align 4
  br label %38

32:                                               ; preds = %22
  %33 = load float, float* %8, align 4
  %34 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %35 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fdiv float %33, %36
  store float %37, float* %9, align 4
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i32*, i32** %6, align 8
  %41 = call i32** @vlc_player_osd_HoldAll(i32* %40, i64* %11)
  store i32** %41, i32*** %12, align 8
  %42 = load float, float* %8, align 4
  %43 = load float, float* @VLC_TICK_INVALID, align 4
  %44 = fcmp une float %42, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @VLC_PLAYER_WHENCE_RELATIVE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %51 = call i64 @vlc_player_input_GetTime(%struct.vlc_player_input* %50)
  %52 = sitofp i64 %51 to float
  %53 = load float, float* %8, align 4
  %54 = fadd float %53, %52
  store float %54, float* %8, align 4
  %55 = load float, float* %8, align 4
  %56 = fcmp olt float %55, 0.000000e+00
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store float 0.000000e+00, float* %8, align 4
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* @MSTRTIME_MAX_SIZE, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %13, align 8
  %63 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %14, align 8
  %64 = load float, float* %8, align 4
  %65 = call i32 @SEC_FROM_VLC_TICK(float %64)
  %66 = call i32 @secstotimestr(i8* %63, i32 %65)
  %67 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %68 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %67, i32 0, i32 0
  %69 = load float, float* %68, align 4
  %70 = load float, float* @VLC_TICK_INVALID, align 4
  %71 = fcmp une float %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %59
  %73 = load i32, i32* @MSTRTIME_MAX_SIZE, align 4
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %15, align 8
  %76 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %16, align 8
  %77 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %78 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %77, i32 0, i32 0
  %79 = load float, float* %78, align 4
  %80 = call i32 @SEC_FROM_VLC_TICK(float %79)
  %81 = call i32 @secstotimestr(i8* %76, i32 %80)
  %82 = load i32**, i32*** %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 (i32**, i64, i8*, i8*, ...) @vouts_osd_Message(i32** %82, i64 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %76)
  %85 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %90

86:                                               ; preds = %59
  %87 = load i32**, i32*** %12, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (i32**, i64, i8*, i8*, ...) @vouts_osd_Message(i32** %87, i64 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %90

90:                                               ; preds = %86, %72
  %91 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %91)
  br label %92

92:                                               ; preds = %90, %39
  %93 = load i32*, i32** %6, align 8
  %94 = call i64 @vlc_player_vout_IsFullscreen(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @VLC_PLAYER_WHENCE_RELATIVE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load %struct.vlc_player_input*, %struct.vlc_player_input** %7, align 8
  %102 = call i64 @vlc_player_input_GetPos(%struct.vlc_player_input* %101)
  %103 = sitofp i64 %102 to float
  %104 = load float, float* %9, align 4
  %105 = fadd float %104, %103
  store float %105, float* %9, align 4
  %106 = load float, float* %9, align 4
  %107 = fcmp olt float %106, 0.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store float 0.000000e+00, float* %9, align 4
  br label %109

109:                                              ; preds = %108, %100
  br label %110

110:                                              ; preds = %109, %96
  %111 = load i32**, i32*** %12, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load float, float* %9, align 4
  %114 = fmul float %113, 1.000000e+02
  %115 = load i32, i32* @OSD_HOR_SLIDER, align 4
  %116 = call i32 @vouts_osd_Slider(i32** %111, i64 %112, float %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %92
  %118 = load i32*, i32** %6, align 8
  %119 = load i32**, i32*** %12, align 8
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @vlc_player_osd_ReleaseAll(i32* %118, i32** %119, i64 %120)
  ret void
}

declare dso_local i32** @vlc_player_osd_HoldAll(i32*, i64*) #1

declare dso_local i64 @vlc_player_input_GetTime(%struct.vlc_player_input*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @secstotimestr(i8*, i32) #1

declare dso_local i32 @SEC_FROM_VLC_TICK(float) #1

declare dso_local i32 @vouts_osd_Message(i32**, i64, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @vlc_player_vout_IsFullscreen(i32*) #1

declare dso_local i64 @vlc_player_input_GetPos(%struct.vlc_player_input*) #1

declare dso_local i32 @vouts_osd_Slider(i32**, i64, float, i32) #1

declare dso_local i32 @vlc_player_osd_ReleaseAll(i32*, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
