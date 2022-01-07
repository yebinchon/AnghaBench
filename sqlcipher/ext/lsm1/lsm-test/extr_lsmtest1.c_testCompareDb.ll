; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_testCompareDb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_testCompareDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testCompareDb.nCall = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testCompareDb(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load i32, i32* @testCompareDb.nCall, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @testCompareDb.nCall, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @testScanCompare(i32* %24, i32* %25, i32 0, i8* null, i32 0, i8* null, i32 0, i32* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @testScanCompare(i32* %28, i32* %29, i32 1, i8* null, i32 0, i8* null, i32 0, i32* %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %101

35:                                               ; preds = %6
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @testPrngValue(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = srem i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @testPrngValue(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = srem i32 %42, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @testDatasourceEntry(i32* %45, i32 %46, i8** %18, i32* %17, i32 0, i32 0)
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8* @testMalloc(i32 %49)
  store i8* %50, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @memcpy(i8* %51, i8* %52, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @testDatasourceEntry(i32* %56, i32 %57, i8** %18, i32* %19, i32 0, i32 0)
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = load i32, i32* %19, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @testScanCompare(i32* %59, i32* %60, i32 0, i8* null, i32 0, i8* %61, i32 %62, i32* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @testScanCompare(i32* %65, i32* %66, i32 0, i8* %67, i32 %68, i8* null, i32 0, i32* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load i8*, i8** %18, align 8
  %76 = load i32, i32* %19, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @testScanCompare(i32* %71, i32* %72, i32 0, i8* %73, i32 %74, i8* %75, i32 %76, i32* %77)
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = load i32, i32* %19, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @testScanCompare(i32* %79, i32* %80, i32 1, i8* null, i32 0, i8* %81, i32 %82, i32* %83)
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @testScanCompare(i32* %85, i32* %86, i32 1, i8* %87, i32 %88, i8* null, i32 0, i32* %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i8*, i8** %18, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @testScanCompare(i32* %91, i32* %92, i32 1, i8* %93, i32 %94, i8* %95, i32 %96, i32* %97)
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @testFree(i8* %99)
  br label %101

101:                                              ; preds = %35, %6
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %122, %101
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ false, %102 ], [ %109, %106 ]
  br i1 %111, label %112, label %125

112:                                              ; preds = %110
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @testDatasourceEntry(i32* %113, i32 %114, i8** %20, i32* %21, i32 0, i32 0)
  %116 = load i32*, i32** %10, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @testFetchCompare(i32* %116, i32* %117, i8* %118, i32 %119, i32* %120)
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %102

125:                                              ; preds = %110
  ret void
}

declare dso_local i32 @testScanCompare(i32*, i32*, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @testPrngValue(i32) #1

declare dso_local i32 @testDatasourceEntry(i32*, i32, i8**, i32*, i32, i32) #1

declare dso_local i8* @testMalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @testFree(i8*) #1

declare dso_local i32 @testFetchCompare(i32*, i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
