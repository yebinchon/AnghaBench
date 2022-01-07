; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest2.c_crash_test1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest2.c_crash_test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"testdb.lsm\00", align 1
@TEST_DATASOURCE_RANDOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"page_size=1024 block_size=65536 autoflush=16384 safety=2 mmap=0\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"page_size=1024 block_size=65536 autoflush=16384 safety=2  compression=1 mmap=0\00", align 1
@__const.crash_test1.azConfig = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [15 x i8] c"%s automerge=7\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @crash_test1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crash_test1(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [2 x i8*], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %23 = load i32, i32* @TEST_DATASOURCE_RANDOM, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 12, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 16, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i32 200, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  store i32 200, i32* %27, align 4
  store i32 5000, i32* %7, align 4
  store i32 200, i32* %8, align 4
  store i32 20, i32* %9, align 4
  store i32 15, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %28 = bitcast [2 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([2 x i8*]* @__const.crash_test1.azConfig to i8*), i64 16, i1 false)
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 1
  br label %34

34:                                               ; preds = %31, %2
  %35 = phi i1 [ true, %2 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = call i32* @testDatasourceNew(%struct.TYPE_3__* %6)
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32* @testCksumArrayNew(i32* %39, i32 5000, i32 5000, i32 1)
  store i32* %40, i32** %14, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @testMallocPrintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i8* %45, i8** %16, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @testSetupSavedLsmdb(i8* %46, i8* %47, i32* %48, i32 5000, i32* %49)
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @testFree(i8* %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %114, %34
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 200
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %62, label %117

62:                                               ; preds = %60
  store i32 0, i32* %19, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (...) @testCaseNDot()
  %65 = call i32 @testCaseProgress(i32 %63, i32 200, i32 %64, i32* %12)
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @testRestoreDb(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @tdb_lsm_open(i8* %71, i8* %72, i32 0, i32** %15)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %11, align 4
  %80 = srem i32 %79, 40
  %81 = add nsw i32 1, %80
  %82 = call i32 @tdb_lsm_prepare_sync_crash(i32* %78, i32 %81)
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %102, %62
  %84 = load i32, i32* %19, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %87, 20
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ false, %83 ], [ %88, %86 ]
  br i1 %90, label %91, label %105

91:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = call i32* @tdb_lsm(i32* %92)
  store i32* %93, i32** %21, align 8
  %94 = load i32*, i32** %21, align 8
  %95 = call i32 @lsm_work(i32* %94, i32 0, i32 15, i32* %20)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32*, i32** %21, align 8
  %100 = call i32 @lsm_checkpoint(i32* %99, i32 0)
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %98, %91
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  br label %83

105:                                              ; preds = %89
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @tdb_close(i32* %106)
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %3, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @testCksumArrayGet(i32* %110, i32 5000)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @testCompareCksumLsmdb(i8* %108, i32 %109, i32 %111, i32 0, i32* %112)
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %53

117:                                              ; preds = %60
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @testCksumArrayFree(i32* %118)
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @testDatasourceFree(i32* %120)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @testDatasourceNew(%struct.TYPE_3__*) #2

declare dso_local i32* @testCksumArrayNew(i32*, i32, i32, i32) #2

declare dso_local i8* @testMallocPrintf(i8*, i8*) #2

declare dso_local i32 @testSetupSavedLsmdb(i8*, i8*, i32*, i32, i32*) #2

declare dso_local i32 @testFree(i8*) #2

declare dso_local i32 @testCaseProgress(i32, i32, i32, i32*) #2

declare dso_local i32 @testCaseNDot(...) #2

declare dso_local i32 @testRestoreDb(i8*, i8*) #2

declare dso_local i32 @tdb_lsm_open(i8*, i8*, i32, i32**) #2

declare dso_local i32 @tdb_lsm_prepare_sync_crash(i32*, i32) #2

declare dso_local i32* @tdb_lsm(i32*) #2

declare dso_local i32 @lsm_work(i32*, i32, i32, i32*) #2

declare dso_local i32 @lsm_checkpoint(i32*, i32) #2

declare dso_local i32 @tdb_close(i32*) #2

declare dso_local i32 @testCompareCksumLsmdb(i8*, i32, i32, i32, i32*) #2

declare dso_local i32 @testCksumArrayGet(i32*, i32) #2

declare dso_local i32 @testCksumArrayFree(i32*) #2

declare dso_local i32 @testDatasourceFree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
