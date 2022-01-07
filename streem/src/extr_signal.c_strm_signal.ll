; ModuleID = '/home/carl/AnghaBench/streem/src/extr_signal.c_strm_signal.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_signal.c_strm_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIG_IGN = common dso_local global i64 0, align 8
@SIG_ERR = common dso_local global i64 0, align 8
@STRM_NG = common dso_local global i32 0, align 4
@handler = common dso_local global i64 0, align 8
@sigcall = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_signal(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i64, i64* @SIG_IGN, align 8
  %11 = call i64 @signal(i32 %9, i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @SIG_ERR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @STRM_NG, align 4
  store i32 %16, i32* %4, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @handler, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @sigcall, align 4
  %27 = load i64, i64* %8, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @add_sig(i32 %25, i32 %26, i8* %28)
  %30 = load i32, i32* @STRM_NG, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @STRM_NG, align 4
  store i32 %33, i32* %4, align 4
  br label %55

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %20, %17
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @add_sig(i32 %36, i32 %37, i8* %38)
  %40 = load i32, i32* @STRM_NG, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @STRM_NG, align 4
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* @handler, align 8
  %47 = call i64 @signal(i32 %45, i64 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @SIG_ERR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @STRM_NG, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @STRM_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %51, %42, %32, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i32 @add_sig(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
