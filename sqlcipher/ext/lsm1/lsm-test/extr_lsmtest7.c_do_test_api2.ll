; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest7.c_do_test_api2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest7.c_do_test_api2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"api2.lsm\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"testdb.lsm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @do_test_api2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test_api2(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @testCaseBegin(i32* %11, i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %10
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %16 = call i32 @testDeleteLsmdb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @newLsmConnection(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32* %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @testPagesize(i32* %19, i32 4096, i32 1024, i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @newLsmConnection(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1024, i32 65536, i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @testPagesize(i32* %24, i32 4096, i32 1024, i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lsm_close(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @lsm_close(i32* %29)
  %31 = call i32 @testDeleteLsmdb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @newLsmConnection(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1024, i32 65536, i32* %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @testPagesize(i32* %34, i32 1024, i32 65536, i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @newLsmConnection(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32* %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @testPagesize(i32* %39, i32 1024, i32 65536, i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @lsm_close(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @lsm_close(i32* %44)
  %46 = call i32 @testDeleteLsmdb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %4, align 8
  %48 = call i32* @newLsmConnection(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 8192, i32 2048, i32* %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @testPagesize(i32* %49, i32 8192, i32 2048, i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32* @newLsmConnection(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1024, i32 65536, i32* %52)
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @testPagesize(i32* %54, i32 8192, i32 2048, i32* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @lsm_close(i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @lsm_close(i32* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @testCaseFinish(i32 %62)
  br label %64

64:                                               ; preds = %15, %10, %2
  ret void
}

declare dso_local i64 @testCaseBegin(i32*, i8*, i8*) #1

declare dso_local i32 @testDeleteLsmdb(i8*) #1

declare dso_local i32* @newLsmConnection(i8*, i32, i32, i32*) #1

declare dso_local i32 @testPagesize(i32*, i32, i32, i32*) #1

declare dso_local i32 @lsm_close(i32*) #1

declare dso_local i32 @testCaseFinish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
