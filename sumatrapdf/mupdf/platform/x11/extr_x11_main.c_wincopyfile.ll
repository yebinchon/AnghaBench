; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_wincopyfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_wincopyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot open source file for copying\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot open target file for copying\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"cannot read data from source file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wincopyfile(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [32768 x i8], align 16
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @pdfapp_error(i32* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %53

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @pdfapp_error(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @fclose(i32* %26)
  br label %53

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %47, %28
  %30 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @fread(i8* %30, i32 1, i32 32768, i32* %31)
  store i64 %32, i64* %10, align 8
  %33 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %34 = load i64, i64* %10, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fwrite(i8* %33, i32 1, i64 %34, i32* %35)
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %37, 32768
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @ferror(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @pdfapp_error(i32* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  br label %48

47:                                               ; preds = %29
  br label %29

48:                                               ; preds = %46
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @fclose(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @fclose(i32* %51)
  br label %53

53:                                               ; preds = %48, %23, %15
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pdfapp_error(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
