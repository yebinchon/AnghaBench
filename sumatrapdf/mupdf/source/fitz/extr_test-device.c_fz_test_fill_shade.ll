; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_test-device.c_fz_test_fill_shade.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_test-device.c_fz_test_fill_shade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32* }
%struct.shadearg = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }

@FZ_TEST_OPT_SHADINGS = common dso_local global i32 0, align 4
@FZ_COLORSPACE_GRAY = common dso_local global i64 0, align 8
@FZ_ERROR_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Page found as color; stopping interpretation\00", align 1
@prepare_vertex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_8__*, i32, float, i32)* @fz_test_fill_shade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_test_fill_shade(i32* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3, float %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.shadearg, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %13, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %105

22:                                               ; preds = %6
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FZ_TEST_OPT_SHADINGS, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @fz_colorspace_type(i32* %30, i32 %33)
  %35 = load i64, i64* @FZ_COLORSPACE_GRAY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @FZ_ERROR_ABORT, align 4
  %57 = call i32 @fz_throw(i32* %55, i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %29
  br label %104

60:                                               ; preds = %22
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 256
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @fz_test_color(i32* %70, %struct.TYPE_7__* %71, i32 %74, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %66

87:                                               ; preds = %66
  br label %103

88:                                               ; preds = %60
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %90 = getelementptr inbounds %struct.shadearg, %struct.shadearg* %15, i32 0, i32 2
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.shadearg, %struct.shadearg* %15, i32 0, i32 1
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %92, align 8
  %93 = load i32, i32* %12, align 4
  %94 = getelementptr inbounds %struct.shadearg, %struct.shadearg* %15, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @fz_device_current_scissor(i32* %98, i32* %99)
  %101 = load i32, i32* @prepare_vertex, align 4
  %102 = call i32 @fz_process_shade(i32* %95, %struct.TYPE_8__* %96, i32 %97, i32 %100, i32 %101, i32* null, %struct.shadearg* %15)
  br label %103

103:                                              ; preds = %88, %87
  br label %104

104:                                              ; preds = %103, %59
  br label %105

105:                                              ; preds = %104, %6
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load float, float* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @fz_fill_shade(i32* %111, i32* %114, %struct.TYPE_8__* %115, i32 %116, float %117, i32 %118)
  br label %120

120:                                              ; preds = %110, %105
  ret void
}

declare dso_local i64 @fz_colorspace_type(i32*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_test_color(i32*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @fz_process_shade(i32*, %struct.TYPE_8__*, i32, i32, i32, i32*, %struct.shadearg*) #1

declare dso_local i32 @fz_device_current_scissor(i32*, i32*) #1

declare dso_local i32 @fz_fill_shade(i32*, i32*, %struct.TYPE_8__*, i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
