; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tests/extr_mu-office-test.c_test_sync.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tests/extr_mu-office-test.c_test_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@loaded = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"../MyTests/pdf_reference17.pdf\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to count pages: error=%d\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%d Pages in document\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get page: error=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to get page size: error=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Page size = %g x %g\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Page render failed: error=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Page render failed to complete: error=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"out1.png\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @test_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sync(i32* %0) #0 {
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
  %13 = call i32 @CreateSemaphore(i32* null, i32 0, i32 1, i32* null)
  store i32 %13, i32* @loaded, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @MuOfficeLib_loadDocument(i32* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null, i32** %4)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @MuOfficeDoc_getNumPages(i32* %16, i32* %6)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %24, i32* %2, align 4
  br label %123

25:                                               ; preds = %1
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @MuOfficeDoc_getPage(i32* %29, i32 1, i32* null, i8* inttoptr (i64 4321 to i8*), i32** %7)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %37, i32* %2, align 4
  br label %123

38:                                               ; preds = %25
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @MuOfficePage_getSize(i32* %39, float* %8, float* %9)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %47, i32* %2, align 4
  br label %123

48:                                               ; preds = %38
  %49 = load i32, i32* @stderr, align 4
  %50 = load float, float* %8, align 4
  %51 = fptosi float %50 to i32
  %52 = load float, float* %9, align 4
  %53 = fpext float %52 to double
  %54 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %51, double %53)
  %55 = load float, float* %8, align 4
  %56 = fmul float %55, 1.500000e+00
  %57 = fadd float %56, 5.000000e-01
  %58 = fptosi float %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load float, float* %9, align 4
  %61 = fmul float %60, 1.500000e+00
  %62 = fadd float %61, 5.000000e-01
  %63 = fptosi float %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 4
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = call i32 @malloc(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @MuOfficePage_render(i32* %92, float 1.500000e+00, %struct.TYPE_11__* %10, %struct.TYPE_10__* %11, i32* null, i32* null, i32** %12)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %48
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %100, i32* %2, align 4
  br label %123

101:                                              ; preds = %48
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @MuOfficeRender_waitUntilComplete(i32* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %110, i32* %2, align 4
  br label %123

111:                                              ; preds = %101
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @MuOfficeRender_destroy(i32* %112)
  %114 = call i32 @save_png(%struct.TYPE_11__* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @free(i32 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @MuOfficePage_destroy(i32* %118)
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @MuOfficeDoc_destroy(i32* %120)
  %122 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %111, %106, %96, %43, %33, %20
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @CreateSemaphore(i32*, i32, i32, i32*) #1

declare dso_local i32 @MuOfficeLib_loadDocument(i32*, i8*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @MuOfficeDoc_getNumPages(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @MuOfficeDoc_getPage(i32*, i32, i32*, i8*, i32**) #1

declare dso_local i32 @MuOfficePage_getSize(i32*, float*, float*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @MuOfficePage_render(i32*, float, %struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32*, i32**) #1

declare dso_local i32 @MuOfficeRender_waitUntilComplete(i32*) #1

declare dso_local i32 @MuOfficeRender_destroy(i32*) #1

declare dso_local i32 @save_png(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @MuOfficePage_destroy(i32*) #1

declare dso_local i32 @MuOfficeDoc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
