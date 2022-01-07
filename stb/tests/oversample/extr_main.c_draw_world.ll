; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_draw_world.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_draw_world.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sf = common dso_local global i32* null, align 8
@font = common dso_local global i64 0, align 8
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@black_on_white = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"Controls:\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"S: toggle font size\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"O: toggle oversampling\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"T: toggle translation\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"R: toggle rotation\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"P: toggle pixel-snap (only non-oversampled)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"G: toggle srgb gamma-correction\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"B: toggle to white-on-black\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"B: toggle to black-on-white\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"V: view font texture\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Current font:\00", align 1
@show_tex = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"Font height: 24 pixels\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Font height: 14 pixels\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"2x2 oversampled text at 1:1\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"3x1 oversampled text at 1:1\00", align 1
@integer_align = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [64 x i8] c"1:1 text, one texel = one pixel, snapped to integer coordinates\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"1:1 text, one texel = one pixel\00", align 1
@GL_QUADS = common dso_local global i32 0, align 4
@BITMAP_W = common dso_local global i64 0, align 8
@BITMAP_H = common dso_local global i64 0, align 8
@GL_MODELVIEW = common dso_local global i32 0, align 4
@translating = common dso_local global i64 0, align 8
@translate_t = common dso_local global i32 0, align 4
@rotating = common dso_local global i64 0, align 8
@rotate_t = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"This is a test\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"Now is the time for all good men to come to the aid of their country.\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"The quick brown fox jumps over the lazy dog.\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_world() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = load i32*, i32** @sf, align 8
  %4 = load i64, i64* @font, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %1, align 4
  store float 2.000000e+01, float* %2, align 4
  %7 = load i32, i32* @GL_BLEND, align 4
  %8 = call i32 @glEnable(i32 %7)
  %9 = load i32, i32* @GL_SRC_ALPHA, align 4
  %10 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %11 = call i32 @glBlendFunc(i32 %9, i32 %10)
  %12 = load i64, i64* @black_on_white, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @glColor3f(i32 0, i32 0, i32 0)
  br label %18

16:                                               ; preds = %0
  %17 = call i32 @glColor3f(i32 1, i32 1, i32 1)
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32 @print(float 8.000000e+01, i32 30, i64 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 @print(float 1.000000e+02, i32 60, i64 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 @print(float 1.000000e+02, i32 85, i64 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @print(float 1.000000e+02, i32 110, i64 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 @print(float 1.000000e+02, i32 135, i64 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @print(float 1.000000e+02, i32 160, i64 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 @print(float 1.000000e+02, i32 185, i64 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i64, i64* @black_on_white, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %18
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @print(float 1.000000e+02, i32 210, i64 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %50

46:                                               ; preds = %18
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @print(float 1.000000e+02, i32 210, i64 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 @print(float 1.000000e+02, i32 235, i64 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @print(float 8.000000e+01, i32 300, i64 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %57 = load i64, i64* @show_tex, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %50
  %60 = load i64, i64* @font, align 8
  %61 = icmp ult i64 %60, 3
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 @print(float 1.000000e+02, i32 350, i64 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @print(float 1.000000e+02, i32 350, i64 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i64, i64* @font, align 8
  %73 = urem i64 %72, 3
  %74 = icmp eq i64 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = call i32 @print(float 1.000000e+02, i32 325, i64 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %100

79:                                               ; preds = %71
  %80 = load i64, i64* @font, align 8
  %81 = urem i64 %80, 3
  %82 = icmp eq i64 %81, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @print(float 1.000000e+02, i32 325, i64 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %99

87:                                               ; preds = %79
  %88 = load i64, i64* @integer_align, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 @print(float 1.000000e+02, i32 325, i64 %92, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0))
  br label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = call i32 @print(float 1.000000e+02, i32 325, i64 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %83
  br label %100

100:                                              ; preds = %99, %75
  %101 = load i64, i64* @show_tex, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* @GL_QUADS, align 4
  %105 = call i32 @glBegin(i32 %104)
  %106 = load i64, i64* @BITMAP_W, align 8
  %107 = add nsw i64 200, %106
  %108 = load i64, i64* @BITMAP_H, align 8
  %109 = add nsw i64 300, %108
  %110 = call i32 @drawBoxTC(i32 200, i32 400, i64 %107, i64 %109, i32 0, i32 0, i32 1, i32 1)
  %111 = call i32 (...) @glEnd()
  br label %147

112:                                              ; preds = %100
  %113 = load i32, i32* @GL_MODELVIEW, align 4
  %114 = call i32 @glMatrixMode(i32 %113)
  %115 = call i32 @glTranslatef(i32 200, i32 350, i32 0)
  %116 = load i64, i64* @translating, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32, i32* @translate_t, align 4
  %120 = mul nsw i32 %119, 8
  %121 = call i64 @fmod(i32 %120, i32 30)
  %122 = sitofp i64 %121 to float
  %123 = load float, float* %2, align 4
  %124 = fadd float %123, %122
  store float %124, float* %2, align 4
  br label %125

125:                                              ; preds = %118, %112
  %126 = load i64, i64* @rotating, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = call i32 @glTranslatef(i32 100, i32 150, i32 0)
  %130 = load i32, i32* @rotate_t, align 4
  %131 = mul nsw i32 %130, 2
  %132 = call i32 @glRotatef(i32 %131, i32 0, i32 0, i32 1)
  %133 = call i32 @glTranslatef(i32 -100, i32 -150, i32 0)
  br label %134

134:                                              ; preds = %128, %125
  %135 = load float, float* %2, align 4
  %136 = load i64, i64* @font, align 8
  %137 = call i32 @print(float %135, i32 100, i64 %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %138 = load float, float* %2, align 4
  %139 = load i64, i64* @font, align 8
  %140 = call i32 @print(float %138, i32 130, i64 %139, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.18, i64 0, i64 0))
  %141 = load float, float* %2, align 4
  %142 = load i64, i64* @font, align 8
  %143 = call i32 @print(float %141, i32 160, i64 %142, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %144 = load float, float* %2, align 4
  %145 = load i64, i64* @font, align 8
  %146 = call i32 @print(float %144, i32 190, i64 %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %147

147:                                              ; preds = %134, %103
  ret void
}

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glColor3f(i32, i32, i32) #1

declare dso_local i32 @print(float, i32, i64, i8*) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @drawBoxTC(i32, i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glTranslatef(i32, i32, i32) #1

declare dso_local i64 @fmod(i32, i32) #1

declare dso_local i32 @glRotatef(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
