; ModuleID = '/home/carl/AnghaBench/streem/src/extr_ns.c_strm_ns_name.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_ns.c_strm_ns_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nstbl = common dso_local global i32 0, align 4
@strm_str_null = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_ns_name(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @nstbl, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @strm_str_null, align 4
  store i32 %8, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i32, i32* @nstbl, align 4
  %11 = call i64 @kh_begin(i32 %10)
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %34, %9
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @nstbl, align 4
  %15 = call i64 @kh_end(i32 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load i32, i32* @nstbl, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @kh_exist(i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i32, i32* @nstbl, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32* @kh_value(i32 %23, i64 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @nstbl, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @kh_key(i32 %29, i64 %30)
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %12

37:                                               ; preds = %12
  %38 = load i32, i32* @strm_str_null, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %28, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @kh_begin(i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local i64 @kh_exist(i32, i64) #1

declare dso_local i32* @kh_value(i32, i64) #1

declare dso_local i32 @kh_key(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
