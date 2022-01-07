; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_setup_populate_db2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_setup_populate_db2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSMTEST6_TESTDB = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@LSM_CONFIG_BLOCK_SIZE = common dso_local global i32 0, align 4
@LSM_CONFIG_PAGE_SIZE = common dso_local global i32 0, align 4
@LSM_CONFIG_AUTOFLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_populate_db2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_populate_db2() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 65536, i32* %4, align 4
  store i32 1024, i32* %5, align 4
  store i32 4096, i32* %6, align 4
  %12 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %13 = call i32 @testDeleteLsmdb(i32 %12)
  %14 = call i32 (...) @tdb_lsm_env()
  %15 = call i32 @lsm_new(i32 %14, i32** %7)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @LSM_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %22 = call i32 @lsm_open(i32* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %0
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @LSM_CONFIG_BLOCK_SIZE, align 4
  %26 = call i32 @lsm_config(i32* %24, i32 %25, i32* %4)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @LSM_CONFIG_PAGE_SIZE, align 4
  %29 = call i32 @lsm_config(i32* %27, i32 %28, i32* %5)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @LSM_CONFIG_AUTOFLUSH, align 4
  %32 = call i32 @lsm_config(i32* %30, i32 %31, i32* %6)
  %33 = call i32* (...) @getDatasource()
  store i32* %33, i32** %1, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %53, %23
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @LSM_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 5000
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i1 [ false, %34 ], [ %40, %38 ]
  br i1 %42, label %43, label %56

43:                                               ; preds = %41
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @testDatasourceEntry(i32* %44, i32 %45, i8** %8, i32* %9, i8** %10, i32* %11)
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @lsm_insert(i32* %47, i8* %48, i32 %49, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %34

56:                                               ; preds = %41
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @testDatasourceFree(i32* %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @lsm_close(i32* %59)
  %61 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %62 = call i32 @testSaveDb(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @LSM_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  ret void
}

declare dso_local i32 @testDeleteLsmdb(i32) #1

declare dso_local i32 @lsm_new(i32, i32**) #1

declare dso_local i32 @tdb_lsm_env(...) #1

declare dso_local i32 @lsm_open(i32*, i32) #1

declare dso_local i32 @lsm_config(i32*, i32, i32*) #1

declare dso_local i32* @getDatasource(...) #1

declare dso_local i32 @testDatasourceEntry(i32*, i32, i8**, i32*, i8**, i32*) #1

declare dso_local i32 @lsm_insert(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @testDatasourceFree(i32*) #1

declare dso_local i32 @lsm_close(i32*) #1

declare dso_local i32 @testSaveDb(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
