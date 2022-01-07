; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_posix_memalign.c_posix_memalign.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_posix_memalign.c_posix_memalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_memalign(i8** %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @check_align(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @SIZE_MAX, align 4
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %17
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 0, %26
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %28, 1
  %30 = and i64 %27, %29
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i8* @memalign(i64 %34, i64 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* @errno, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %25
  %44 = load i8*, i8** %10, align 8
  %45 = load i8**, i8*** %5, align 8
  store i8* %44, i8** %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %39, %23, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @check_align(i64) #1

declare dso_local i8* @memalign(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
