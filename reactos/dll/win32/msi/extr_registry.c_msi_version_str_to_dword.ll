; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_msi_version_str_to_dword.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_msi_version_str_to_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_version_str_to_dword(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @atoiW(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @strchrW(i64 %15, i8 signext 46)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @atoiW(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i64, i64* %3, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i64 @strchrW(i64 %24, i8 signext 46)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @atoiW(i64 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %19
  br label %33

33:                                               ; preds = %32, %12
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @MAKEWORD(i32 %35, i32 %36)
  %38 = call i32 @MAKELONG(i32 %34, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @atoiW(i64) #1

declare dso_local i64 @strchrW(i64, i8 signext) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
