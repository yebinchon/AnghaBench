; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tests/extr_mu-office-test.c_test_async.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tests/extr_mu-office-test.c_test_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"../MyTests/pdf_reference17.pdf\00", align 1
@load_progress = common dso_local global i32 0, align 4
@load_error = common dso_local global i32 0, align 4
@loaded = common dso_local global i32* null, align 8
@INFINITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to count pages: error=%d\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%d Pages in document\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get page: error=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to get page size: error=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Page size = %g x %g\0A\00", align 1
@render_progress = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Page render failed: error=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"out.png\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @test_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_async(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @load_progress, align 4
  %15 = load i32, i32* @load_error, align 4
  %16 = call i32 @MuOfficeLib_loadDocument(i32* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i8* inttoptr (i64 1234 to i8*), i32** %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** @loaded, align 8
  %18 = load i32, i32* @INFINITE, align 4
  %19 = call i32 @WaitForSingleObject(i32* %17, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @MuOfficeDoc_getNumPages(i32* %20, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %28, i32* %2, align 4
  br label %123

29:                                               ; preds = %1
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @MuOfficeDoc_getPage(i32* %33, i32 0, i32* null, i8* inttoptr (i64 4321 to i8*), i32** %7)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %41, i32* %2, align 4
  br label %123

42:                                               ; preds = %29
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @MuOfficePage_getSize(i32* %43, float* %8, float* %9)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %51, i32* %2, align 4
  br label %123

52:                                               ; preds = %42
  %53 = load i32, i32* @stderr, align 4
  %54 = load float, float* %8, align 4
  %55 = fptosi float %54 to i32
  %56 = load float, float* %9, align 4
  %57 = fpext float %56 to double
  %58 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %55, double %57)
  %59 = load float, float* %8, align 4
  %60 = fmul float %59, 1.500000e+00
  %61 = fadd float %60, 5.000000e-01
  %62 = fptosi float %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load float, float* %9, align 4
  %65 = fmul float %64, 1.500000e+00
  %66 = fadd float %65, 5.000000e-01
  %67 = fptosi float %66 to i32
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 4
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %74, %76
  %78 = call i32 @malloc(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @render_progress, align 4
  %98 = call i32 @MuOfficePage_render(i32* %96, float 1.500000e+00, %struct.TYPE_11__* %10, %struct.TYPE_10__* %11, i32 %97, i8* inttoptr (i64 5678 to i8*), i32** %12)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %52
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %105, i32* %2, align 4
  br label %123

106:                                              ; preds = %52
  %107 = load i32*, i32** @loaded, align 8
  %108 = load i32, i32* @INFINITE, align 4
  %109 = call i32 @WaitForSingleObject(i32* %107, i32 %108)
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @MuOfficeRender_destroy(i32* %110)
  %112 = call i32 @save_png(%struct.TYPE_11__* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @free(i32 %114)
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @MuOfficePage_destroy(i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @MuOfficeDoc_destroy(i32* %118)
  %120 = load i32*, i32** @loaded, align 8
  %121 = call i32 @CloseHandle(i32* %120)
  store i32* null, i32** @loaded, align 8
  %122 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %106, %101, %47, %37, %24
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @MuOfficeLib_loadDocument(i32*, i8*, i32, i32, i8*, i32**) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @MuOfficeDoc_getNumPages(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @MuOfficeDoc_getPage(i32*, i32, i32*, i8*, i32**) #1

declare dso_local i32 @MuOfficePage_getSize(i32*, float*, float*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @MuOfficePage_render(i32*, float, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i8*, i32**) #1

declare dso_local i32 @MuOfficeRender_destroy(i32*) #1

declare dso_local i32 @save_png(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @MuOfficePage_destroy(i32*) #1

declare dso_local i32 @MuOfficeDoc_destroy(i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
