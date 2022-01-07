; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_lineto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_lineto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { float, float }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot modify a packed path\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"lineto with no current point\00", align 1
@FZ_MOVETO = common dso_local global i64 0, align 8
@FZ_DEGENLINETO = common dso_local global i32 0, align 4
@FZ_VERTTO = common dso_local global i32 0, align 4
@FZ_HORIZTO = common dso_local global i32 0, align 4
@FZ_LINETO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_lineto(i32* %0, %struct.TYPE_9__* %1, float %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %18 = call i32 @fz_throw(i32* %16, i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load float, float* %22, align 8
  store float %23, float* %9, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  store float %27, float* %10, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @fz_warn(i32* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %102

35:                                               ; preds = %19
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = call i64 @LAST_CMD(%struct.TYPE_9__* %36)
  %38 = load i64, i64* @FZ_MOVETO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load float, float* %9, align 4
  %42 = load float, float* %7, align 4
  %43 = fcmp oeq float %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load float, float* %10, align 4
  %46 = load float, float* %8, align 4
  %47 = fcmp oeq float %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %102

49:                                               ; preds = %44, %40, %35
  %50 = load float, float* %9, align 4
  %51 = load float, float* %7, align 4
  %52 = fcmp oeq float %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = load float, float* %10, align 4
  %55 = load float, float* %8, align 4
  %56 = fcmp oeq float %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = call i64 @LAST_CMD(%struct.TYPE_9__* %58)
  %60 = load i64, i64* @FZ_MOVETO, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %102

63:                                               ; preds = %57
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = load i32, i32* @FZ_DEGENLINETO, align 4
  %67 = call i32 @push_cmd(i32* %64, %struct.TYPE_9__* %65, i32 %66)
  br label %77

68:                                               ; preds = %53
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = load i32, i32* @FZ_VERTTO, align 4
  %72 = call i32 @push_cmd(i32* %69, %struct.TYPE_9__* %70, i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = load float, float* %8, align 4
  %76 = call i32 @push_ord(i32* %73, %struct.TYPE_9__* %74, float %75, i32 0)
  br label %77

77:                                               ; preds = %68, %63
  br label %102

78:                                               ; preds = %49
  %79 = load float, float* %10, align 4
  %80 = load float, float* %8, align 4
  %81 = fcmp oeq float %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = load i32, i32* @FZ_HORIZTO, align 4
  %86 = call i32 @push_cmd(i32* %83, %struct.TYPE_9__* %84, i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = load float, float* %7, align 4
  %90 = call i32 @push_ord(i32* %87, %struct.TYPE_9__* %88, float %89, i32 1)
  br label %101

91:                                               ; preds = %78
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = load i32, i32* @FZ_LINETO, align 4
  %95 = call i32 @push_cmd(i32* %92, %struct.TYPE_9__* %93, i32 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = load float, float* %7, align 4
  %99 = load float, float* %8, align 4
  %100 = call i32 @push_coord(i32* %96, %struct.TYPE_9__* %97, float %98, float %99)
  br label %101

101:                                              ; preds = %91, %82
  br label %102

102:                                              ; preds = %32, %48, %62, %101, %77
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i64 @LAST_CMD(%struct.TYPE_9__*) #1

declare dso_local i32 @push_cmd(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @push_ord(i32*, %struct.TYPE_9__*, float, i32) #1

declare dso_local i32 @push_coord(i32*, %struct.TYPE_9__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
