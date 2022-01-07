; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_imageio_util.c_ImgIoUtilWriteFile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/imageio/extr_imageio_util.c_ImgIoUtilWriteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Error! Cannot open output file '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ImgIoUtilWriteFile(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @WSTRCMP(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ true, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %57

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** @stdout, align 8
  %29 = call i32* @ImgIoUtilSetBinaryMode(i32* %28)
  br label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @WFOPEN(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32* [ %29, %27 ], [ %32, %30 ]
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = call i32 @WFPRINTF(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  store i32 0, i32* %4, align 4
  br label %57

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @fwrite(i32* %43, i64 %44, i32 1, i32* %45)
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** @stdout, align 8
  %51 = icmp ne i32* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @fclose(i32* %53)
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %37, %23
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @WSTRCMP(i8*, i8*) #1

declare dso_local i32* @ImgIoUtilSetBinaryMode(i32*) #1

declare dso_local i32* @WFOPEN(i8*, i8*) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32*) #1

declare dso_local i32 @fwrite(i32*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
