; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_winreplacefile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_winreplacefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot convert filename to Unicode\00", align 1
@REPLACEFILE_IGNORE_MERGE_ERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @winreplacefile(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i32, i32* @CP_UTF8, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = call i32 @MultiByteToWideChar(i32 %19, i32 0, i8* %20, i32 -1, i32* %15, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @pdfapp_error(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %41

28:                                               ; preds = %3
  %29 = load i32, i32* @CP_UTF8, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = call i32 @MultiByteToWideChar(i32 %29, i32 0, i8* %30, i32 -1, i32* %18, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @pdfapp_error(i32* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %41

38:                                               ; preds = %28
  %39 = call i32 @DeleteFile(i32* %18)
  %40 = call i32 @MoveFile(i32* %15, i32* %18)
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %35, %25
  %42 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %45 [
    i32 0, label %44
    i32 1, label %44
  ]

44:                                               ; preds = %41, %41
  ret void

45:                                               ; preds = %41
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @pdfapp_error(i32*, i8*) #2

declare dso_local i32 @DeleteFile(i32*) #2

declare dso_local i32 @MoveFile(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
