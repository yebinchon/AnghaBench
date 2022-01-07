; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_test_lsm_fetch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_test_lsm_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i8*, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_SEEK_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32*)* @test_lsm_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_lsm_fetch(i32* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @LSM_OK, align 4
  store i32 %22, i32* %6, align 4
  br label %105

23:                                               ; preds = %5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @lsm_csr_open(i32 %31, i32** %14)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @LSM_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %105

38:                                               ; preds = %28
  br label %43

39:                                               ; preds = %23
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %14, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32*, i32** %14, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @LSM_SEEK_EQ, align 4
  %48 = call i32 @lsm_csr_seek(i32* %44, i8* %45, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @LSM_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %43
  %53 = load i32*, i32** %14, align 8
  %54 = call i64 @lsm_csr_valid(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %52
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @lsm_csr_value(i32* %57, i8** %15, i32* %16)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %56
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @testFree(i8* %67)
  %69 = load i32, i32* %16, align 4
  %70 = mul nsw i32 %69, 2
  %71 = call i8* @testMalloc(i32 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %16, align 4
  %75 = mul nsw i32 %74, 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %64, %56
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @memcpy(i8* %81, i8* %82, i32 %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** %10, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %94

91:                                               ; preds = %52
  %92 = load i8**, i8*** %10, align 8
  store i8* null, i8** %92, align 8
  %93 = load i32*, i32** %11, align 8
  store i32 -1, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %78
  br label %95

95:                                               ; preds = %94, %43
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @lsm_csr_close(i32* %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %36, %21
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @lsm_csr_open(i32, i32**) #1

declare dso_local i32 @lsm_csr_seek(i32*, i8*, i32, i32) #1

declare dso_local i64 @lsm_csr_valid(i32*) #1

declare dso_local i32 @lsm_csr_value(i32*, i8**, i32*) #1

declare dso_local i32 @testFree(i8*) #1

declare dso_local i8* @testMalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @lsm_csr_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
