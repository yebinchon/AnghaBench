; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_next_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_next_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@SYNCTEX_CUR = common dso_local global i8* null, align 8
@SYNCTEX_END = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_synctex_next_line(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %6, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* null, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %10, i64* %2, align 8
  br label %38

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %37, %11
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i8*, i8** @SYNCTEX_CUR, align 8
  %15 = load i8*, i8** @SYNCTEX_END, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i8*, i8** @SYNCTEX_CUR, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** @SYNCTEX_CUR, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** @SYNCTEX_CUR, align 8
  store i64 1, i64* %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @_synctex_buffer_get_available_size(i32* %25, i64* %5)
  store i64 %26, i64* %2, align 8
  br label %38

27:                                               ; preds = %17
  %28 = load i8*, i8** @SYNCTEX_CUR, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** @SYNCTEX_CUR, align 8
  br label %13

30:                                               ; preds = %13
  store i64 1, i64* %5, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @_synctex_buffer_get_available_size(i32* %31, i64* %5)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %38

37:                                               ; preds = %30
  br label %12

38:                                               ; preds = %35, %22, %9
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @_synctex_buffer_get_available_size(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
