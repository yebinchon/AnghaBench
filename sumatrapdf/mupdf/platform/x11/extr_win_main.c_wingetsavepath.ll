; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_wingetsavepath.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_wingetsavepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i32, i32*, i32*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@wbuf = common dso_local global i32* null, align 8
@hwndframe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 77, i32 117, i32 80, i32 68, i32 70, i32 58, i32 32, i32 83, i32 97, i32 118, i32 101, i32 32, i32 80, i32 68, i32 70, i32 32, i32 102, i32 105, i32 108, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [42 x i32] [i32 80, i32 68, i32 70, i32 32, i32 68, i32 111, i32 99, i32 117, i32 109, i32 101, i32 110, i32 116, i32 115, i32 32, i32 40, i32 42, i32 46, i32 112, i32 100, i32 102, i32 41, i32 0, i32 42, i32 46, i32 112, i32 100, i32 102, i32 0, i32 65, i32 108, i32 108, i32 32, i32 70, i32 105, i32 108, i32 101, i32 115, i32 0, i32 42, i32 0, i32 0, i32 0], align 4
@OFN_HIDEREADONLY = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot convert filename to utf-8\00", align 1
@filename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wingetsavepath(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32*, i32** @wbuf, align 8
  %18 = call i32 @wcscpy(i32* %16, i32* %17)
  %19 = call i32 @memset(%struct.TYPE_4__* %10, i32 0, i32 56)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 56, i32* %20, align 8
  %21 = load i32, i32* @hwndframe, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 7
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 6
  store i32* %16, i32** %23, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i8* bitcast ([21 x i32]* @.str to i8*), i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i8* bitcast ([42 x i32]* @.str.1 to i8*), i8** %28, align 8
  %29 = load i32, i32* @OFN_HIDEREADONLY, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = call i64 @GetSaveFileName(%struct.TYPE_4__* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %3
  %34 = load i32, i32* @CP_UTF8, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @MIN(i32 %36, i32 %37)
  %39 = call i32 @WideCharToMultiByte(i32 %34, i32 0, i32* %16, i32 -1, i8* %35, i32 %38, i32* null, i32* null)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @pdfapp_error(i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %52

45:                                               ; preds = %33
  %46 = load i32*, i32** @wbuf, align 8
  %47 = call i32 @wcscpy(i32* %46, i32* %16)
  %48 = load i32, i32* @filename, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcpy(i32 %48, i8* %49)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %52

51:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %45, %42
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i64 @GetSaveFileName(%struct.TYPE_4__*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @pdfapp_error(i32*, i8*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
