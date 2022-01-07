; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showstream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@showcolumn = common dso_local global i64 0, align 8
@showdecode = common dso_local global i64 0, align 8
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@showbinary = common dso_local global i64 0, align 8
@out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @showstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showstream(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @showcolumn, align 8
  %6 = load i64, i64* @showdecode, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @ctx, align 4
  %10 = load i32, i32* @doc, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32* @pdf_open_stream_number(i32 %9, i32 %10, i32 %11)
  store i32* %12, i32** %3, align 8
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @ctx, align 4
  %15 = load i32, i32* @doc, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32* @pdf_open_raw_stream_number(i32 %14, i32 %15, i32 %16)
  store i32* %17, i32** %3, align 8
  br label %18

18:                                               ; preds = %13, %8
  br label %19

19:                                               ; preds = %18, %40
  %20 = load i32, i32* @ctx, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %23 = call i64 @fz_read(i32 %20, i32* %21, i8* %22, i32 2048)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %41

27:                                               ; preds = %19
  %28 = load i64, i64* @showbinary, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* @ctx, align 4
  %32 = load i32, i32* @out, align 4
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @fz_write_data(i32 %31, i32 %32, i8* %33, i64 %34)
  br label %40

36:                                               ; preds = %27
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @showsafe(i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %30
  br label %19

41:                                               ; preds = %26
  %42 = load i32, i32* @ctx, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @fz_drop_stream(i32 %42, i32* %43)
  ret void
}

declare dso_local i32* @pdf_open_stream_number(i32, i32, i32) #1

declare dso_local i32* @pdf_open_raw_stream_number(i32, i32, i32) #1

declare dso_local i64 @fz_read(i32, i32*, i8*, i32) #1

declare dso_local i32 @fz_write_data(i32, i32, i8*, i64) #1

declare dso_local i32 @showsafe(i8*, i64) #1

declare dso_local i32 @fz_drop_stream(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
