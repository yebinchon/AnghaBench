; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_parse-util.c_parse_mtu.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_parse-util.c_parse_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT32_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@IPV4_MIN_MTU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_mtu(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @parse_size(i8* %11, i32 1024, i64* %8)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @UINT32_MAX, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ERANGE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AF_INET6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @IPV6_MIN_MTU, align 8
  store i64 %29, i64* %9, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* @IPV4_MIN_MTU, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ERANGE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %36, %21, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @parse_size(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
