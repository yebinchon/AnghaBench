; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hpp/extr_hpp.c_LoadFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hpp/extr_hpp.c_LoadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Loading file...\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Could not open file\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ok. Size is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not allocate memory for file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @LoadFile(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %52

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @SEEK_END, align 4
  %19 = call i32 @fseek(i32* %17, i64 0, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @ftell(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i32 @fseek(i32* %22, i64 0, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @malloc(i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %16
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @fread(i8* %37, i32 1, i32 %38, i32* %39)
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @free(i8* %43)
  store i8* null, i8** %7, align 8
  br label %45

45:                                               ; preds = %42, %35
  br label %48

46:                                               ; preds = %16
  %47 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @fclose(i32* %49)
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %48, %14
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
