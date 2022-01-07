; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_speedtest16.c_prepareAndRun.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_speedtest16.c_prepareAndRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [66 x i8] c"****************************************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SQL statement: [%s]\0A\00", align 1
@prepTime = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"sqlite3_prepare16_v2() returns %d in %llu cycles\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@runTime = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"sqlite3_step() returns %d after %d rows in %llu cycles\0A\00", align 1
@finalizeTime = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"sqlite3_finalize() returns %d in %llu cycles\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @prepareAndRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepareAndRun(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @asciiToUtf16le(i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = call i64 (...) @sqlite3Hwtime()
  store i64 %17, i64* %8, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @sqlite3_prepare16_v2(i32* %18, i8* %19, i32 -1, i32** %6, i8** %7)
  store i32 %20, i32* %10, align 4
  %21 = call i64 (...) @sqlite3Hwtime()
  %22 = load i64, i64* %8, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @prepTime, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* @prepTime, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %27, i64 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SQLITE_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %34 = call i64 (...) @sqlite3Hwtime()
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %40, %33
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @sqlite3_step(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @SQLITE_ROW, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %35

43:                                               ; preds = %35
  %44 = call i64 (...) @sqlite3Hwtime()
  %45 = load i64, i64* %8, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @runTime, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* @runTime, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %51, i64 %52)
  %54 = call i64 (...) @sqlite3Hwtime()
  store i64 %54, i64* %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @sqlite3_finalize(i32* %55)
  store i32 %56, i32* %10, align 4
  %57 = call i64 (...) @sqlite3Hwtime()
  %58 = load i64, i64* %8, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @finalizeTime, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* @finalizeTime, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %43, %2
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @free(i8* %67)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @asciiToUtf16le(i8*) #1

declare dso_local i64 @sqlite3Hwtime(...) #1

declare dso_local i32 @sqlite3_prepare16_v2(i32*, i8*, i32, i32**, i8**) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
