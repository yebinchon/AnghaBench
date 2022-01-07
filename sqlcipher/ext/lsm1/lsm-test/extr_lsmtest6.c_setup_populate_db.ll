; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_setup_populate_db.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_setup_populate_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"sixteen\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"twentyfive\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"thirtysix\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"fourtynine\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"sixtyfour\00", align 1
@__const.setup_populate_db.azStr = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)], align 16
@LSMTEST6_TESTDB = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_populate_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_populate_db() #0 {
  %1 = alloca [16 x i8*], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = bitcast [16 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([16 x i8*]* @__const.setup_populate_db.azStr to i8*), i64 128, i1 false)
  %6 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %7 = call i32 @testDeleteLsmdb(i32 %6)
  %8 = call i32 (...) @tdb_lsm_env()
  %9 = call i32 @lsm_new(i32 %8, i32** %4)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @LSM_OK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %16 = call i32 @lsm_open(i32* %14, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %0
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @LSM_OK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds [16 x i8*], [16 x i8*]* %1, i64 0, i64 0
  %25 = call i32 @ArraySize(i8** %24)
  %26 = icmp slt i32 %23, %25
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  br i1 %28, label %29, label %44

29:                                               ; preds = %27
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [16 x i8*], [16 x i8*]* %1, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i8*], [16 x i8*]* %1, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @lsmWriteStr(i32* %30, i8* %34, i8* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %3, align 4
  br label %18

44:                                               ; preds = %27
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @lsm_close(i32* %45)
  %47 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %48 = call i32 @testSaveDb(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @LSM_OK, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @testDeleteLsmdb(i32) #2

declare dso_local i32 @lsm_new(i32, i32**) #2

declare dso_local i32 @tdb_lsm_env(...) #2

declare dso_local i32 @lsm_open(i32*, i32) #2

declare dso_local i32 @ArraySize(i8**) #2

declare dso_local i32 @lsmWriteStr(i32*, i8*, i8*) #2

declare dso_local i32 @lsm_close(i32*) #2

declare dso_local i32 @testSaveDb(i32, i8*) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
