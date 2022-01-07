; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_quadto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_quadto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { float, float }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot modify a packed path\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"quadto with no current point\00", align 1
@FZ_MOVETO = common dso_local global i64 0, align 8
@FZ_QUADTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_quadto(i32* %0, %struct.TYPE_9__* %1, float %2, float %3, float %4, float %5) #0 {
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
  %38 = call i32 @fz_warn(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %90

39:                                               ; preds = %23
  %40 = load float, float* %13, align 4
  %41 = load float, float* %9, align 4
  %42 = fcmp oeq float %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load float, float* %14, align 4
  %45 = load float, float* %10, align 4
  %46 = fcmp oeq float %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43, %39
  %48 = load float, float* %9, align 4
  %49 = load float, float* %11, align 4
  %50 = fcmp oeq float %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load float, float* %10, align 4
  %53 = load float, float* %12, align 4
  %54 = fcmp oeq float %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51, %43
  %56 = load float, float* %13, align 4
  %57 = load float, float* %11, align 4
  %58 = fcmp oeq float %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load float, float* %14, align 4
  %61 = load float, float* %12, align 4
  %62 = fcmp oeq float %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = call i64 @LAST_CMD(%struct.TYPE_9__* %64)
  %66 = load i64, i64* @FZ_MOVETO, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %90

69:                                               ; preds = %63, %59, %55
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = load float, float* %11, align 4
  %73 = load float, float* %12, align 4
  %74 = call i32 @fz_lineto(i32* %70, %struct.TYPE_9__* %71, float %72, float %73)
  br label %90

75:                                               ; preds = %51, %47
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = load i32, i32* @FZ_QUADTO, align 4
  %79 = call i32 @push_cmd(i32* %76, %struct.TYPE_9__* %77, i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = load float, float* %9, align 4
  %83 = load float, float* %10, align 4
  %84 = call i32 @push_coord(i32* %80, %struct.TYPE_9__* %81, float %82, float %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = load float, float* %11, align 4
  %88 = load float, float* %12, align 4
  %89 = call i32 @push_coord(i32* %85, %struct.TYPE_9__* %86, float %87, float %88)
  br label %90

90:                                               ; preds = %75, %69, %68, %36
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
