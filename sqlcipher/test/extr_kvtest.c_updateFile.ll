; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_updateFile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_updateFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"No such file: \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot allocate %lld bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot open \22%s\22 for writing\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Wrote only %d of %d bytes to \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i32)* @updateFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateFile(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @fileSize(i8* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64*, i64** %5, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %73

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = call i8* @sqlite3_malloc64(i64 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @sqlite3_randomness(i32 %35, i8* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32* @fopen(i8* %38, i8* %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @fwrite(i8* %47, i32 1, i64 %48, i32* %49)
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @fileno(i32* %54)
  %56 = call i32 @fsync(i32 %55)
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %8, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %63, %57
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @sqlite3_free(i8* %71)
  br label %73

73:                                               ; preds = %70, %24
  ret void
}

declare dso_local i64 @fileSize(i8*) #1

declare dso_local i32 @fatalError(i8*, ...) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i32 @sqlite3_randomness(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
