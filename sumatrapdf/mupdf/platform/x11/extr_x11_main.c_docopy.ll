; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_docopy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_docopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@copylatin1 = common dso_local global i8* null, align 8
@copyutf8 = common dso_local global i8* null, align 8
@gapp = common dso_local global i32 0, align 4
@xdpy = common dso_local global i32 0, align 4
@xwin = common dso_local global i32 0, align 4
@copytime = common dso_local global i32 0, align 4
@justcopied = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @docopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docopy(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16384 x i16], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** @copylatin1, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** @copyutf8, align 8
  store i8* %11, i8** %7, align 8
  %12 = getelementptr inbounds [16384 x i16], [16384 x i16]* %5, i64 0, i64 0
  %13 = call i32 @pdfapp_oncopy(i32* @gapp, i16* %12, i32 16384)
  %14 = getelementptr inbounds [16384 x i16], [16384 x i16]* %5, i64 0, i64 0
  store i16* %14, i16** %8, align 8
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i16*, i16** %8, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 0
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load i16*, i16** %8, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 0
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @fz_runetochar(i8* %26, i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  store i8 %36, i8* %37, align 1
  br label %42

39:                                               ; preds = %21
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  store i8 63, i8* %40, align 1
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i16*, i16** %8, align 8
  %45 = getelementptr inbounds i16, i16* %44, i32 1
  store i16* %45, i16** %8, align 8
  br label %15

46:                                               ; preds = %15
  %47 = load i8*, i8** %7, align 8
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %6, align 8
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* @xdpy, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @xwin, align 4
  %52 = load i32, i32* @copytime, align 4
  %53 = call i32 @XSetSelectionOwner(i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 1, i32* @justcopied, align 4
  ret void
}

declare dso_local i32 @pdfapp_oncopy(i32*, i16*, i32) #1

declare dso_local i32 @fz_runetochar(i8*, i32) #1

declare dso_local i32 @XSetSelectionOwner(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
