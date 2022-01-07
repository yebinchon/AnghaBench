; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/testzlib/extr_testzlib.c_ReadFileMemory.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/testzlib/extr_testzlib.c_ReadFileMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadFileMemory(i8* %0, i64* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 1, i32* %10, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @SEEK_END, align 4
  %19 = call i32 @fseek(i32* %17, i32 0, i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @ftell(i32* %20)
  %22 = load i64*, i64** %6, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i32 @fseek(i32* %23, i32 0, i32 %24)
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %44

33:                                               ; preds = %16
  %34 = load i8*, i8** %9, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @fread(i8* %34, i32 1, i64 %36, i32* %37)
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = load i8**, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
