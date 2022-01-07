; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_doDataTest2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_doDataTest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_CONFIG_AUTOFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_3__*, i32*)* @doDataTest2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doDataTest2(i8* %0, i32 %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %23 = load i32, i32* @LSM_OK, align 4
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @testOpen(i8* %24, i32 1, i32* %13)
  store i32* %25, i32** %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = call i32* @testDatasourceNew(i32* %27)
  store i32* %28, i32** %11, align 8
  %29 = call i32 @testControlDb(i32** %10)
  store i32 %29, i32* %13, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @tdb_lsm(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  store i32 33554432, i32* %15, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @tdb_lsm(i32* %34)
  %36 = load i32, i32* @LSM_CONFIG_AUTOFLUSH, align 4
  %37 = call i32 @lsm_config(i64 %35, i32 %36, i32* %15)
  br label %38

38:                                               ; preds = %33, %4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %147, %38
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br label %48

48:                                               ; preds = %42, %39
  %49 = phi i1 [ false, %39 ], [ %47, %42 ]
  br i1 %49, label %50, label %150

50:                                               ; preds = %48
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MIN(i32 %57, i32 %60)
  store i32 %61, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %62

62:                                               ; preds = %93, %50
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %20, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ false, %62 ], [ %70, %65 ]
  br i1 %72, label %73, label %96

73:                                               ; preds = %71
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %80, %83
  store i32 %84, i32* %22, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %22, align 4
  %88 = call i32 @testWriteDatasource(i32* %85, i32* %86, i32 %87, i32* %13)
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @testWriteDatasource(i32* %89, i32* %90, i32 %91, i32* %13)
  br label %93

93:                                               ; preds = %73
  %94 = load i32, i32* %20, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %20, align 4
  br label %62

96:                                               ; preds = %71
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1000000
  %100 = call i32 @testDatasourceEntry(i32* %97, i32 %99, i8** %16, i32* %17, i32 0, i32 0)
  %101 = load i8*, i8** %16, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i8* @testMallocCopy(i8* %101, i32 %102)
  store i8* %103, i8** %16, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 2000000
  %107 = call i32 @testDatasourceEntry(i32* %104, i32 %106, i8** %18, i32* %19, i32 0, i32 0)
  %108 = load i32*, i32** %9, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i8*, i8** %18, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @testDeleteRange(i32* %108, i8* %109, i32 %110, i8* %111, i32 %112, i32* %13)
  %114 = load i32*, i32** %10, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = load i32, i32* %17, align 4
  %117 = load i8*, i8** %18, align 8
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @testDeleteRange(i32* %114, i8* %115, i32 %116, i8* %117, i32 %118, i32* %13)
  %120 = load i8*, i8** %16, align 8
  %121 = call i32 @testFree(i8* %120)
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @testCompareDb(i32* %122, i32 %123, i32 %124, i32* %125, i32* %126, i32* %13)
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %96
  %131 = call i32 @testReopenRecover(i32** %9, i32* %13)
  br label %134

132:                                              ; preds = %96
  %133 = call i32 @testReopen(i32** %9, i32* %13)
  br label %134

134:                                              ; preds = %132, %130
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @testCompareDb(i32* %135, i32 %136, i32 %137, i32* %138, i32* %139, i32* %13)
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (...) @testCaseNDot()
  %146 = call i32 @testCaseProgress(i32 %141, i32 %144, i32 %145, i32* %14)
  br label %147

147:                                              ; preds = %134
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %39

150:                                              ; preds = %48
  %151 = call i32 @testClose(i32** %9)
  %152 = call i32 @testClose(i32** %10)
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @testDatasourceFree(i32* %153)
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @testCaseFinish(i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  ret void
}

declare dso_local i32* @testOpen(i8*, i32, i32*) #1

declare dso_local i32* @testDatasourceNew(i32*) #1

declare dso_local i32 @testControlDb(i32**) #1

declare dso_local i64 @tdb_lsm(i32*) #1

declare dso_local i32 @lsm_config(i64, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @testWriteDatasource(i32*, i32*, i32, i32*) #1

declare dso_local i32 @testDatasourceEntry(i32*, i32, i8**, i32*, i32, i32) #1

declare dso_local i8* @testMallocCopy(i8*, i32) #1

declare dso_local i32 @testDeleteRange(i32*, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @testFree(i8*) #1

declare dso_local i32 @testCompareDb(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @testReopenRecover(i32**, i32*) #1

declare dso_local i32 @testReopen(i32**, i32*) #1

declare dso_local i32 @testCaseProgress(i32, i32, i32, i32*) #1

declare dso_local i32 @testCaseNDot(...) #1

declare dso_local i32 @testClose(i32**) #1

declare dso_local i32 @testDatasourceFree(i32*) #1

declare dso_local i32 @testCaseFinish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
