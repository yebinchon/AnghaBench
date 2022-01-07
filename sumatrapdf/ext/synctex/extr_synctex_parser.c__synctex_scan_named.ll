; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_named.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_NOT_OK = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_synctex_scan_named(i32* %0, i8* %1, i8* %2, i64 (i32*, i8*)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i32*, i8*)*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 (i32*, i8*)* %3, i64 (i32*, i8*)** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* null, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* null, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* null, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %9, align 8
  %21 = icmp eq i64 (i32*, i8*)* null, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %13, %4
  %23 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %23, i64* %5, align 8
  br label %53

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @_synctex_match_string(i32* %26, i8* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %53

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @_synctex_next_line(i32* %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %5, align 8
  br label %53

46:                                               ; preds = %38
  br label %25

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %9, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 %49(i32* %50, i8* %51)
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %48, %44, %32, %22
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i64 @_synctex_match_string(i32*, i8*) #1

declare dso_local i64 @_synctex_next_line(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
