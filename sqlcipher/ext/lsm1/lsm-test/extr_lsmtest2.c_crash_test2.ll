; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest2.c_crash_test2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest2.c_crash_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"testdb.lsm\00", align 1
@TEST_DATASOURCE_RANDOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"safety=2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @crash_test2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crash_test2(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %21 = load i32, i32* @TEST_DATASOURCE_RANDOM, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 12, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 16, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i32 1000, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  store i32 1000, i32* %25, align 4
  store i32 200, i32* %7, align 4
  store i32 20, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %26 = call i32* @testDatasourceNew(%struct.TYPE_3__* %6)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32* @testCksumArrayNew(i32* %27, i32 100, i32 120, i32 1)
  store i32* %28, i32** %12, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @testSetupSavedLsmdb(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32* %30, i32 100, i32* %31)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %96, %2
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 200
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %99

42:                                               ; preds = %40
  store i32 0, i32* %15, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (...) @testCaseNDot()
  %45 = call i32 @testCaseProgress(i32 %43, i32 200, i32 %44, i32* %10)
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @testRestoreDb(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @tdb_lsm_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 0, i32** %13)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %9, align 4
  %56 = srem i32 %55, 22
  %57 = add nsw i32 1, %56
  %58 = call i32 @tdb_lsm_prepare_sync_crash(i32* %54, i32 %57)
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %77, %42
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 20
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 100, %64
  %66 = call i32 @testDatasourceEntry(i32* %63, i32 %65, i8** %16, i32* %17, i8** %18, i32* %19)
  %67 = load i32*, i32** %13, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @tdb_write(i32* %67, i8* %68, i32 %69, i8* %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %80

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %59

80:                                               ; preds = %75, %59
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @tdb_close(i32* %81)
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %3, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 100, %86
  %88 = call i32 @testCksumArrayGet(i32* %85, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 100, %90
  %92 = add nsw i32 %91, 1
  %93 = call i32 @testCksumArrayGet(i32* %89, i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @testCompareCksumLsmdb(i8* %83, i32 %84, i32 %88, i32 %93, i32* %94)
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %33

99:                                               ; preds = %40
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @testDatasourceFree(i32* %100)
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @testCksumArrayFree(i32* %102)
  ret void
}

declare dso_local i32* @testDatasourceNew(%struct.TYPE_3__*) #1

declare dso_local i32* @testCksumArrayNew(i32*, i32, i32, i32) #1

declare dso_local i32 @testSetupSavedLsmdb(i8*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @testCaseProgress(i32, i32, i32, i32*) #1

declare dso_local i32 @testCaseNDot(...) #1

declare dso_local i32 @testRestoreDb(i8*, i8*) #1

declare dso_local i32 @tdb_lsm_open(i8*, i8*, i32, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tdb_lsm_prepare_sync_crash(i32*, i32) #1

declare dso_local i32 @testDatasourceEntry(i32*, i32, i8**, i32*, i8**, i32*) #1

declare dso_local i32 @tdb_write(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @tdb_close(i32*) #1

declare dso_local i32 @testCompareCksumLsmdb(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @testCksumArrayGet(i32*, i32) #1

declare dso_local i32 @testDatasourceFree(i32*) #1

declare dso_local i32 @testCksumArrayFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
