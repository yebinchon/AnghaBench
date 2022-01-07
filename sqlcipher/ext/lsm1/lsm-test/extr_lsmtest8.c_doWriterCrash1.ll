; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_doWriterCrash1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_doWriterCrash1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"autowork=0\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"testdb.lsm\00", align 1
@TEST_CKSUM_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @doWriterCrash1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doWriterCrash1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 2000, i32* %3, align 4
  store i32 10, i32* %4, align 4
  store i32 20000, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = call i32 @tdb_lsm_open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1, i32** %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @TEST_CKSUM_BYTES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @setupDatabase1(i32* %21, i32** %8)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @testCksumDatabase(i32* %23, i8* %20)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @testBegin(i32* %25, i32 2, i32* %6)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %45, %16
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 2000
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (...) @testCaseNDot()
  %38 = call i32 @testCaseProgress(i32 %36, i32 2000, i32 %37, i32* %9)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 20000, %41
  %43 = call i32 @testWriteDatasourceRange(i32* %39, i32* %40, i32 %42, i32 10, i32* %6)
  %44 = call i32 @doLiveRecovery(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32* %6)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 10
  store i32 %47, i32* %12, align 4
  br label %27

48:                                               ; preds = %33
  %49 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %49)
  br label %50

50:                                               ; preds = %48, %1
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @testCommit(i32* %51, i32 0, i32* %6)
  %53 = call i32 @testClose(i32** %7)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @testDatasourceFree(i32* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %2, align 8
  store i32 %56, i32* %57, align 4
  ret void
}

declare dso_local i32 @tdb_lsm_open(i8*, i8*, i32, i32**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @setupDatabase1(i32*, i32**) #1

declare dso_local i32 @testCksumDatabase(i32*, i8*) #1

declare dso_local i32 @testBegin(i32*, i32, i32*) #1

declare dso_local i32 @testCaseProgress(i32, i32, i32, i32*) #1

declare dso_local i32 @testCaseNDot(...) #1

declare dso_local i32 @testWriteDatasourceRange(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @doLiveRecovery(i8*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @testCommit(i32*, i32, i32*) #1

declare dso_local i32 @testClose(i32**) #1

declare dso_local i32 @testDatasourceFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
