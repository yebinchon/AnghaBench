; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_speedtest8.c_prepareAndRun.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_speedtest8.c_prepareAndRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"***************************************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SQL statement: [%s]\0A\00", align 1
@prepTime = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"sqlite3_prepare_v2() returns %d in %llu cycles\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@runTime = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"sqlite3_step() returns %d after %d rows in %llu cycles\0A\00", align 1
@finalizeTime = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"sqlite3_finalize() returns %d in %llu cycles\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32)* @prepareAndRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepareAndRun(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = call i64 (...) @sqlite3Hwtime()
  store i64 %24, i64* %9, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @sqlite3_prepare_v2(i32* %25, i8* %26, i32 -1, i32** %7, i8** %8)
  store i32 %27, i32* %11, align 4
  %28 = call i64 (...) @sqlite3Hwtime()
  %29 = load i64, i64* %9, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @prepTime, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* @prepTime, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* %10, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %23
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  %45 = call i64 (...) @sqlite3Hwtime()
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %51, %44
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @sqlite3_step(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @SQLITE_ROW, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %46

54:                                               ; preds = %46
  %55 = call i64 (...) @sqlite3Hwtime()
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @runTime, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* @runTime, align 8
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %54
  %69 = call i64 (...) @sqlite3Hwtime()
  store i64 %69, i64* %9, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @sqlite3_finalize(i32* %70)
  store i32 %71, i32* %11, align 4
  %72 = call i64 (...) @sqlite3Hwtime()
  %73 = load i64, i64* %9, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @finalizeTime, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* @finalizeTime, align 8
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %10, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %80, %68
  br label %85

85:                                               ; preds = %84, %40
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @sqlite3Hwtime(...) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i8**) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
