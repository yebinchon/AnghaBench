; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_readFile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_readFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @readFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readFile(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @fileSize(i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %47

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %47

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @sqlite3_malloc64(i64 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %47

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @fread(i8* %28, i64 %29, i32 1, i32* %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @sqlite3_free(i8* %37)
  store i8* null, i8** %3, align 8
  br label %47

39:                                               ; preds = %27
  %40 = load i64*, i64** %5, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %45, %36, %26, %20, %14
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i64 @fileSize(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i64 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
