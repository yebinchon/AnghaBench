; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_init.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, float, float, float, i32 }

@on_error = common dso_local global i32 0, align 4
@on_warning = common dso_local global i32 0, align 4
@GLUT_RGBA = common dso_local global i32 0, align 4
@GLUT_DOUBLE = common dso_local global i32 0, align 4
@on_timer = common dso_local global i32 0, align 4
@on_reshape = common dso_local global i32 0, align 4
@on_display = common dso_local global i32 0, align 4
@on_keyboard = common dso_local global i32 0, align 4
@on_special = common dso_local global i32 0, align 4
@on_mouse = common dso_local global i32 0, align 4
@on_motion = common dso_local global i32 0, align 4
@on_passive_motion = common dso_local global i32 0, align 4
@on_wheel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GL_ARB_texture_non_power_of_two\00", align 1
@has_ARB_texture_non_power_of_two = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"OpenGL implementation does not support non-power of two texture sizes\00", align 1
@GL_MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@max_texture_size = common dso_local global i32 0, align 4
@GLUT_SCREEN_WIDTH_MM = common dso_local global i32 0, align 4
@GLUT_SCREEN_WIDTH = common dso_local global i32 0, align 4
@GLUT_SCREEN_HEIGHT_MM = common dso_local global i32 0, align 4
@GLUT_SCREEN_HEIGHT = common dso_local global i32 0, align 4
@DEFAULT_UI_FONTSIZE = common dso_local global float 0.000000e+00, align 4
@ui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DEFAULT_UI_BASELINE = common dso_local global float 0.000000e+00, align 4
@DEFAULT_UI_LINEHEIGHT = common dso_local global float 0.000000e+00, align 4
@DEFAULT_UI_GRIDSIZE = common dso_local global float 0.000000e+00, align 4
@GLUT_ACTION_GLUTMAINLOOP_RETURNS = common dso_local global i32 0, align 4
@GLUT_ACTION_ON_WINDOW_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_init(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @on_error, align 4
  %14 = call i32 @glutInitErrorFunc(i32 %13)
  %15 = load i32, i32* @on_warning, align 4
  %16 = call i32 @glutInitWarningFunc(i32 %15)
  %17 = load i32, i32* @GLUT_RGBA, align 4
  %18 = load i32, i32* @GLUT_DOUBLE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @glutInitDisplayMode(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @glutInitWindowSize(i32 %21, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @glutCreateWindow(i8* %24)
  %26 = load i32, i32* @on_timer, align 4
  %27 = call i32 @glutTimerFunc(i32 500, i32 %26, i32 0)
  %28 = load i32, i32* @on_reshape, align 4
  %29 = call i32 @glutReshapeFunc(i32 %28)
  %30 = load i32, i32* @on_display, align 4
  %31 = call i32 @glutDisplayFunc(i32 %30)
  %32 = load i32, i32* @on_keyboard, align 4
  %33 = call i32 @glutKeyboardFunc(i32 %32)
  %34 = load i32, i32* @on_special, align 4
  %35 = call i32 @glutSpecialFunc(i32 %34)
  %36 = load i32, i32* @on_mouse, align 4
  %37 = call i32 @glutMouseFunc(i32 %36)
  %38 = load i32, i32* @on_motion, align 4
  %39 = call i32 @glutMotionFunc(i32 %38)
  %40 = load i32, i32* @on_passive_motion, align 4
  %41 = call i32 @glutPassiveMotionFunc(i32 %40)
  %42 = load i32, i32* @on_wheel, align 4
  %43 = call i32 @glutMouseWheelFunc(i32 %42)
  %44 = call i32 @glutExtensionSupported(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* @has_ARB_texture_non_power_of_two, align 4
  %45 = load i32, i32* @has_ARB_texture_non_power_of_two, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %3
  %48 = load i32, i32* @ctx, align 4
  %49 = call i32 @fz_warn(i32 %48, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %3
  %51 = load i32, i32* @GL_MAX_TEXTURE_SIZE, align 4
  %52 = call i32 @glGetIntegerv(i32 %51, i32* @max_texture_size)
  store float 1.000000e+00, float* %7, align 4
  %53 = load i32, i32* @GLUT_SCREEN_WIDTH_MM, align 4
  %54 = call i32 @glutGet(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @GLUT_SCREEN_WIDTH, align 4
  %56 = call i32 @glutGet(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @GLUT_SCREEN_HEIGHT_MM, align 4
  %58 = call i32 @glutGet(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @GLUT_SCREEN_HEIGHT, align 4
  %60 = call i32 @glutGet(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 254
  %69 = load i32, i32* %8, align 4
  %70 = sdiv i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %71, 254
  %73 = load i32, i32* %10, align 4
  %74 = sdiv i32 %72, %73
  %75 = add nsw i32 %70, %74
  %76 = sdiv i32 %75, 20
  %77 = sitofp i32 %76 to float
  store float %77, float* %12, align 4
  %78 = load float, float* %12, align 4
  %79 = fcmp oge float %78, 1.440000e+02
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  store float 1.500000e+00, float* %7, align 4
  br label %81

81:                                               ; preds = %80, %66
  %82 = load float, float* %12, align 4
  %83 = fcmp oge float %82, 1.920000e+02
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store float 2.000000e+00, float* %7, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load float, float* %12, align 4
  %87 = fcmp oge float %86, 2.880000e+02
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store float 3.000000e+00, float* %7, align 4
  br label %89

89:                                               ; preds = %88, %85
  br label %90

90:                                               ; preds = %89, %63, %50
  %91 = load float, float* @DEFAULT_UI_FONTSIZE, align 4
  %92 = load float, float* %7, align 4
  %93 = fmul float %91, %92
  store float %93, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 4
  %94 = load float, float* @DEFAULT_UI_BASELINE, align 4
  %95 = load float, float* %7, align 4
  %96 = fmul float %94, %95
  store float %96, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 4
  %97 = load float, float* @DEFAULT_UI_LINEHEIGHT, align 4
  %98 = load float, float* %7, align 4
  %99 = fmul float %97, %98
  store float %99, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %100 = load float, float* @DEFAULT_UI_GRIDSIZE, align 4
  %101 = load float, float* %7, align 4
  %102 = fmul float %100, %101
  store float %102, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 3), align 4
  %103 = call i32 (...) @ui_init_fonts()
  %104 = call i32 @glGenLists(i32 1)
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 4), align 4
  ret void
}

declare dso_local i32 @glutInitErrorFunc(i32) #1

declare dso_local i32 @glutInitWarningFunc(i32) #1

declare dso_local i32 @glutInitDisplayMode(i32) #1

declare dso_local i32 @glutInitWindowSize(i32, i32) #1

declare dso_local i32 @glutCreateWindow(i8*) #1

declare dso_local i32 @glutTimerFunc(i32, i32, i32) #1

declare dso_local i32 @glutReshapeFunc(i32) #1

declare dso_local i32 @glutDisplayFunc(i32) #1

declare dso_local i32 @glutKeyboardFunc(i32) #1

declare dso_local i32 @glutSpecialFunc(i32) #1

declare dso_local i32 @glutMouseFunc(i32) #1

declare dso_local i32 @glutMotionFunc(i32) #1

declare dso_local i32 @glutPassiveMotionFunc(i32) #1

declare dso_local i32 @glutMouseWheelFunc(i32) #1

declare dso_local i32 @glutExtensionSupported(i8*) #1

declare dso_local i32 @fz_warn(i32, i8*) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i32 @glutGet(i32) #1

declare dso_local i32 @ui_init_fonts(...) #1

declare dso_local i32 @glGenLists(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
