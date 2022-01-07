; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_prog_stream.c_fz_open_file_progressive.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_prog_stream.c_fz_open_file_progressive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_open_file_progressive(i32* %0, i8* %1, i32 %2, void (i8*, i32)* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i8*, i32)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store void (i8*, i32)* %3, void (i8*, i32)** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @fz_throw(i32* %17, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %16, %5
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load void (i8*, i32)*, void (i8*, i32)** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32* @fz_open_file_ptr_progressive(i32* %22, i32* %23, i32 %24, void (i8*, i32)* %25, i8* %26)
  ret i32* %27
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i8*) #1

declare dso_local i32* @fz_open_file_ptr_progressive(i32*, i32*, i32, void (i8*, i32)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
