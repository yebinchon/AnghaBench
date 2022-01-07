; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_rop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_rop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %68 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %15
    i32 3, label %20
    i32 4, label %23
    i32 5, label %28
    i32 6, label %31
    i32 7, label %35
    i32 8, label %40
    i32 9, label %44
    i32 10, label %49
    i32 11, label %51
    i32 12, label %56
    i32 13, label %58
    i32 14, label %63
    i32 15, label %67
  ]

9:                                                ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  store i32 %14, i32* %4, align 4
  br label %70

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %70

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %21, -1
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %70

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %32, %33
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %36, %37
  %39 = xor i32 %38, -1
  store i32 %39, i32* %4, align 4
  br label %70

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %70

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %46, %47
  store i32 %48, i32* %4, align 4
  br label %70

49:                                               ; preds = %3
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %4, align 4
  br label %70

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %4, align 4
  br label %70

56:                                               ; preds = %3
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %4, align 4
  br label %70

58:                                               ; preds = %3
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, -1
  %62 = or i32 %59, %61
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %3
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %70

68:                                               ; preds = %3
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %67, %63, %58, %56, %51, %49, %44, %40, %35, %31, %28, %23, %20, %15, %10, %9
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
