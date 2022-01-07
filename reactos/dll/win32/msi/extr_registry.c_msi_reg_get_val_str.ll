; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_msi_reg_get_val_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_msi_reg_get_val_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @msi_reg_get_val_str(i32 %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @RegQueryValueExW(i32 %9, i32 %10, i32* null, i32* null, i32* null, i32* %6)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64* @msi_alloc(i32 %21)
  store i64* %22, i64** %7, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i64* null, i64** %3, align 8
  br label %35

26:                                               ; preds = %16
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i64*, i64** %7, align 8
  %32 = bitcast i64* %31 to i32*
  %33 = call i64 @RegQueryValueExW(i32 %29, i32 %30, i32* null, i32* null, i32* %32, i32* %6)
  %34 = load i64*, i64** %7, align 8
  store i64* %34, i64** %3, align 8
  br label %35

35:                                               ; preds = %26, %25, %15
  %36 = load i64*, i64** %3, align 8
  ret i64* %36
}

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64* @msi_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
