; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_curvetov.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_curvetov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { float, float }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot modify a packed path\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"curveto with no current point\00", align 1
@FZ_MOVETO = common dso_local global i64 0, align 8
@FZ_CURVETOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_curvetov(i32* %0, %struct.TYPE_9__* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %22 = call i32 @fz_throw(i32* %20, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %6
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 8
  store float %27, float* %13, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  store float %31, float* %14, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fz_warn(i32* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %97

39:                                               ; preds = %23
  %40 = load float, float* %9, align 4
  %41 = load float, float* %11, align 4
  %42 = fcmp oeq float %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load float, float* %10, align 4
  %45 = load float, float* %12, align 4
  %46 = fcmp oeq float %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load float, float* %13, align 4
  %49 = load float, float* %9, align 4
  %50 = fcmp oeq float %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load float, float* %14, align 4
  %53 = load float, float* %10, align 4
  %54 = fcmp oeq float %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = call i64 @LAST_CMD(%struct.TYPE_9__* %56)
  %58 = load i64, i64* @FZ_MOVETO, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %97

61:                                               ; preds = %55, %51, %47
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = load float, float* %11, align 4
  %65 = load float, float* %12, align 4
  %66 = call i32 @fz_lineto(i32* %62, %struct.TYPE_9__* %63, float %64, float %65)
  br label %82

67:                                               ; preds = %43, %39
  %68 = load float, float* %13, align 4
  %69 = load float, float* %9, align 4
  %70 = fcmp oeq float %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load float, float* %14, align 4
  %73 = load float, float* %10, align 4
  %74 = fcmp oeq float %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = load float, float* %11, align 4
  %79 = load float, float* %12, align 4
  %80 = call i32 @fz_lineto(i32* %76, %struct.TYPE_9__* %77, float %78, float %79)
  br label %81

81:                                               ; preds = %75, %71, %67
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = load i32, i32* @FZ_CURVETOV, align 4
  %86 = call i32 @push_cmd(i32* %83, %struct.TYPE_9__* %84, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = load float, float* %9, align 4
  %90 = load float, float* %10, align 4
  %91 = call i32 @push_coord(i32* %87, %struct.TYPE_9__* %88, float %89, float %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = load float, float* %11, align 4
  %95 = load float, float* %12, align 4
  %96 = call i32 @push_coord(i32* %92, %struct.TYPE_9__* %93, float %94, float %95)
  br label %97

97:                                               ; preds = %82, %60, %36
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i64 @LAST_CMD(%struct.TYPE_9__*) #1

declare dso_local i32 @fz_lineto(i32*, %struct.TYPE_9__*, float, float) #1

declare dso_local i32 @push_cmd(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @push_coord(i32*, %struct.TYPE_9__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
