; ModuleID = '/home/carl/AnghaBench/streem/src/extr_value.c_strm_value_eq.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_value.c_strm_value_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_value_eq(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %3, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @strm_value_tag(i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @strm_value_tag(i64 %14)
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %47

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @strm_value_tag(i64 %19)
  switch i32 %20, label %48 [
    i32 133, label %21
    i32 128, label %21
    i32 129, label %25
    i32 130, label %25
    i32 132, label %29
    i32 131, label %40
  ]

21:                                               ; preds = %18, %18
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @strm_ary_eq(i64 %22, i64 %23)
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %18, %18
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @strm_str_eq(i64 %26, i64 %27)
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %18
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @strm_value_val(i64 %30)
  %32 = sext i32 %31 to i64
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @strm_value_val(i64 %34)
  %36 = sext i32 %35 to i64
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %33, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %18
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @strm_value_vptr(i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @strm_value_vptr(i64 %43)
  %45 = icmp eq i32 %42, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %65

47:                                               ; preds = %17
  br label %48

48:                                               ; preds = %18, %47
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @strm_number_p(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @strm_number_p(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @strm_value_float(i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @strm_value_float(i64 %59)
  %61 = icmp eq i32 %58, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %52, %48
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %56, %40, %29, %25, %21, %9
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @strm_value_tag(i64) #1

declare dso_local i32 @strm_ary_eq(i64, i64) #1

declare dso_local i32 @strm_str_eq(i64, i64) #1

declare dso_local i32 @strm_value_val(i64) #1

declare dso_local i32 @strm_value_vptr(i64) #1

declare dso_local i32 @strm_number_p(i64) #1

declare dso_local i32 @strm_value_float(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
