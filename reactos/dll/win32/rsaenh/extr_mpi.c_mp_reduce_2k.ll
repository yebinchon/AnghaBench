; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_reduce_2k.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_reduce_2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_OKAY = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_reduce_2k(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 @mp_init(i32* %8)
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @MP_OKAY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @mp_count_bits(i32* %17)
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %50, %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @mp_div_2d(i32* %20, i32 %21, i32* %8, i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @MP_OKAY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %56

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mp_mul_d(i32* %8, i32 %31, i32* %8)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @MP_OKAY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %56

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @s_mp_add(i32* %38, i32* %8, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @MP_OKAY, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %56

44:                                               ; preds = %37
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @mp_cmp_mag(i32* %45, i32* %46)
  %48 = load i64, i64* @MP_LT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @s_mp_sub(i32* %51, i32* %52, i32* %53)
  br label %19

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %43, %35, %26
  %57 = call i32 @mp_clear(i32* %8)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mp_init(i32*) #1

declare dso_local i32 @mp_count_bits(i32*) #1

declare dso_local i32 @mp_div_2d(i32*, i32, i32*, i32*) #1

declare dso_local i32 @mp_mul_d(i32*, i32, i32*) #1

declare dso_local i32 @s_mp_add(i32*, i32*, i32*) #1

declare dso_local i64 @mp_cmp_mag(i32*, i32*) #1

declare dso_local i32 @s_mp_sub(i32*, i32*, i32*) #1

declare dso_local i32 @mp_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
