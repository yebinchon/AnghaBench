; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_doLiveRecovery.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_doLiveRecovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@TEST_DATASOURCE_RANDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testcopy.lsm\00", align 1
@TEST_CKSUM_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"test_no_recovery=1\00", align 1
@LSM_CONFIG_AUTOFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*)* @doLiveRecovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doLiveRecovery(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LSM_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %23 = load i32, i32* @TEST_DATASOURCE_RANDOM, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 20, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 25, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i32 100, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  store i32 500, i32* %27, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %28 = load i32, i32* @TEST_CKSUM_BYTES, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %10, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  store i32* null, i32** %12, align 8
  %32 = call i32* @testDatasourceNew(%struct.TYPE_7__* %7)
  store i32* %32, i32** %8, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @testCopyLsmdb(i8* %33, i8* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @tdb_lsm_open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 0, i32** %12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %85

40:                                               ; preds = %21
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @testCksumDatabase(i32* %41, i8* %31)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @testCompareStr(i8* %43, i8* %31, i32* %13)
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @testWriteDatasourceRange(i32* %45, i32* %46, i32 1, i32 10, i32* %13)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @testDeleteDatasourceRange(i32* %48, i32* %49, i32 1, i32 10, i32* %13)
  %51 = load i8*, i8** %9, align 8
  %52 = call %struct.TYPE_6__* @getShmHeader(i8* %51)
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %14, align 8
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %40
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i64 @memcmp(i32* %57, i32* %59, i32 4)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %55, %40
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = call i32 @testFree(%struct.TYPE_6__* %64)
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  store i32 64, i32* %16, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = call i32* @tdb_lsm(i32* %69)
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* @LSM_CONFIG_AUTOFLUSH, align 4
  %73 = call i32 @lsm_config(i32* %71, i32 %72, i32* %16)
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @lsm_begin(i32* %74, i32 1)
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @lsm_commit(i32* %76, i32 0)
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @lsm_work(i32* %78, i32 0, i32 0, i32 0)
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %68, %63
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @testCksumDatabase(i32* %81, i8* %31)
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @testCompareStr(i8* %83, i8* %31, i32* %13)
  br label %85

85:                                               ; preds = %80, %21
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @testDatasourceFree(i32* %86)
  %88 = call i32 @testClose(i32** %12)
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @testDeleteLsmdb(i8* %89)
  %91 = load i32, i32* %13, align 4
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %94

94:                                               ; preds = %85, %3
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @testDatasourceNew(%struct.TYPE_7__*) #2

declare dso_local i32 @testCopyLsmdb(i8*, i8*) #2

declare dso_local i32 @tdb_lsm_open(i8*, i8*, i32, i32**) #2

declare dso_local i32 @testCksumDatabase(i32*, i8*) #2

declare dso_local i32 @testCompareStr(i8*, i8*, i32*) #2

declare dso_local i32 @testWriteDatasourceRange(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @testDeleteDatasourceRange(i32*, i32*, i32, i32, i32*) #2

declare dso_local %struct.TYPE_6__* @getShmHeader(i8*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @testFree(%struct.TYPE_6__*) #2

declare dso_local i32* @tdb_lsm(i32*) #2

declare dso_local i32 @lsm_config(i32*, i32, i32*) #2

declare dso_local i32 @lsm_begin(i32*, i32) #2

declare dso_local i32 @lsm_commit(i32*, i32) #2

declare dso_local i32 @lsm_work(i32*, i32, i32, i32) #2

declare dso_local i32 @testDatasourceFree(i32*) #2

declare dso_local i32 @testClose(i32**) #2

declare dso_local i32 @testDeleteLsmdb(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
