; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest3.c_rollback_test_1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest3.c_rollback_test_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_CKSUM_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @rollback_test_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rollback_test_1(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 100, i32* %5, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @getName(i8* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @testCaseStart(i32* %7, i8* %18)
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @testFree(i8* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @testCksumArrayNew(i32* %22, i32 0, i32 10000, i32 100)
  store i32* %23, i32** %9, align 8
  store i32* null, i32** %6, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @tdb_open(i8* %24, i32 0, i32 1, i32** %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @tdb_transaction_support(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @testCaseSkip()
  br label %134

34:                                               ; preds = %28, %2
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %128, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 100
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  br i1 %42, label %43, label %131

43:                                               ; preds = %41
  %44 = load i32, i32* @TEST_CKSUM_BYTES, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %11, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = sdiv i32 %49, 2
  %51 = mul nsw i32 %50, 100
  store i32 %51, i32* %13, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @testCountDatabase(i32* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @testCompareInt(i32 %54, i32 %55, i32* %7)
  store i32 2, i32* %15, align 4
  br label %57

57:                                               ; preds = %75, %43
  %58 = load i32, i32* %15, align 4
  %59 = icmp sle i32 %58, 6
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %65, label %78

65:                                               ; preds = %63
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @tdb_begin(i32* %66, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @testWriteDatasourceRange(i32* %69, i32* %70, i32 %71, i32 100, i32* %7)
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 100
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %57

78:                                               ; preds = %63
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @testCksumDatabase(i32* %79, i8* %47)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @testCksumArrayGet(i32* %81, i32 %82)
  %84 = call i32 @testCompareStr(i8* %47, i32 %83, i32* %7)
  store i32 6, i32* %15, align 4
  br label %85

85:                                               ; preds = %105, %78
  %86 = load i32, i32* %15, align 4
  %87 = icmp sgt i32 %86, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i1 [ false, %85 ], [ %90, %88 ]
  br i1 %92, label %93, label %108

93:                                               ; preds = %91
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @tdb_rollback(i32* %94, i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = sub nsw i32 %97, 100
  store i32 %98, i32* %13, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @testCksumDatabase(i32* %99, i8* %47)
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @testCksumArrayGet(i32* %101, i32 %102)
  %104 = call i32 @testCompareStr(i8* %47, i32 %103, i32* %7)
  br label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %15, align 4
  br label %85

108:                                              ; preds = %91
  %109 = load i32, i32* %8, align 4
  %110 = srem i32 %109, 2
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @tdb_rollback(i32* %113, i32 0)
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 100
  store i32 %116, i32* %13, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @testCksumDatabase(i32* %117, i8* %47)
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @testCksumArrayGet(i32* %119, i32 %120)
  %122 = call i32 @testCompareStr(i8* %47, i32 %121, i32* %7)
  br label %126

123:                                              ; preds = %108
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @tdb_commit(i32* %124, i32 0)
  br label %126

126:                                              ; preds = %123, %112
  %127 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %128

128:                                              ; preds = %126
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %35

131:                                              ; preds = %41
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @testCaseFinish(i32 %132)
  br label %134

134:                                              ; preds = %131, %32
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @tdb_close(i32* %135)
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @testCksumArrayFree(i32* %137)
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i8* @getName(i8*) #1

declare dso_local i32 @testCaseStart(i32*, i8*) #1

declare dso_local i32 @testFree(i8*) #1

declare dso_local i32* @testCksumArrayNew(i32*, i32, i32, i32) #1

declare dso_local i32 @tdb_open(i8*, i32, i32, i32**) #1

declare dso_local i64 @tdb_transaction_support(i32*) #1

declare dso_local i32 @testCaseSkip(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @testCountDatabase(i32*) #1

declare dso_local i32 @testCompareInt(i32, i32, i32*) #1

declare dso_local i32 @tdb_begin(i32*, i32) #1

declare dso_local i32 @testWriteDatasourceRange(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @testCksumDatabase(i32*, i8*) #1

declare dso_local i32 @testCompareStr(i8*, i32, i32*) #1

declare dso_local i32 @testCksumArrayGet(i32*, i32) #1

declare dso_local i32 @tdb_rollback(i32*, i32) #1

declare dso_local i32 @tdb_commit(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @testCaseFinish(i32) #1

declare dso_local i32 @tdb_close(i32*) #1

declare dso_local i32 @testCksumArrayFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
