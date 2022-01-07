; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_testScanCompare.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_testScanCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i8*, i8*, i32* }

@testScanCompare.nCall = internal global i32 0, align 4
@scanCompareCb = common dso_local global i32 0, align 4
@test_scan_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"\0A\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"expected: %d %X %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"got:      %d %X %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testScanCompare(i32* %0, i32* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_3__, align 8
  %18 = alloca %struct.TYPE_3__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %21 = load i32, i32* @testScanCompare.nCall, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @testScanCompare.nCall, align 4
  %23 = load i32*, i32** %16, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %118

26:                                               ; preds = %8
  %27 = bitcast %struct.TYPE_3__* %17 to i8*
  store i8* %27, i8** %19, align 8
  %28 = bitcast %struct.TYPE_3__* %18 to i8*
  store i8* %28, i8** %20, align 8
  %29 = call i32 @memset(%struct.TYPE_3__* %17, i32 0, i32 64)
  %30 = call i32 @memset(%struct.TYPE_3__* %18, i32 0, i32 64)
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 8
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %15, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 8
  store i32* %43, i32** %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 7
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %15, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @scanCompareCb, align 4
  %63 = call i32 @tdb_scan(i32* %55, i8* %56, i32 %57, i8* %58, i32 %59, i8* %60, i32 %61, i32 %62)
  %64 = load i64, i64* @test_scan_debug, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %26
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %26
  %69 = load i32*, i32** %10, align 8
  %70 = load i8*, i8** %20, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @scanCompareCb, align 4
  %77 = call i32 @tdb_scan(i32* %69, i8* %70, i32 %71, i8* %72, i32 %73, i8* %74, i32 %75, i32 %76)
  %78 = load i64, i64* @test_scan_debug, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %68
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %84, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %90, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94, %88, %82
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %102, i64 %104, i64 %106)
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %109, i64 %111, i64 %113)
  %115 = call i32 @testSetError(i32 1)
  %116 = load i32*, i32** %16, align 8
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %100, %94
  br label %118

118:                                              ; preds = %117, %8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @tdb_scan(i32*, i8*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @testSetError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
