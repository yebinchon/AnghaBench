; ModuleID = '/home/carl/AnghaBench/seafile/common/cdc/extr_rabin-checksum.c_polymod.c'
source_filename = "/home/carl/AnghaBench/seafile/common/cdc/extr_rabin-checksum.c_polymod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSB64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @polymod(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @fls64(i32 %9)
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sub nsw i32 63, %12
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MSB64, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %18
  store i32 62, i32* %7, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 63, %39
  %41 = ashr i32 %38, %40
  %42 = load i32, i32* %4, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = shl i32 %44, %46
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %37, %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %28

54:                                               ; preds = %28
  br label %55

55:                                               ; preds = %54, %3
  store i32 63, i32* %7, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @INT64(i32 1)
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 63, %69
  %71 = ashr i32 %68, %70
  %72 = load i32, i32* %5, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %67, %60
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %7, align 4
  br label %56

78:                                               ; preds = %56
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @fls64(i32) #1

declare dso_local i32 @INT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
