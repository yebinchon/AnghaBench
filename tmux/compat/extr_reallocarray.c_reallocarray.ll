; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_reallocarray.c_reallocarray.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_reallocarray.c_reallocarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MUL_NO_OVERFLOW = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @reallocarray(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @MUL_NO_OVERFLOW, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MUL_NO_OVERFLOW, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i64, i64* @SIZE_MAX, align 8
  %20 = load i64, i64* %6, align 8
  %21 = udiv i64 %19, %20
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %32

26:                                               ; preds = %18, %15, %11
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 %28, %29
  %31 = call i8* @realloc(i8* %27, i64 %30)
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %26, %24
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
