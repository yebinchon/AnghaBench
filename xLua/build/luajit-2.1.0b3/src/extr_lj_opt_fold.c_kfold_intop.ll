; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_fold.c_kfold_intop.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_fold.c_kfold_intop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @kfold_intop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfold_intop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %84 [
    i32 142, label %8
    i32 128, label %12
    i32 130, label %16
    i32 131, label %20
    i32 129, label %24
    i32 141, label %27
    i32 140, label %31
    i32 134, label %35
    i32 136, label %39
    i32 135, label %44
    i32 137, label %49
    i32 139, label %54
    i32 138, label %59
    i32 132, label %64
    i32 133, label %74
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* %4, align 4
  br label %86

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %86

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %86

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @lj_vm_modi(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %86

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %86

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %86

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %86

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %86

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 31
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %86

44:                                               ; preds = %3
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 31
  %48 = ashr i32 %45, %47
  store i32 %48, i32* %4, align 4
  br label %86

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 31
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %86

54:                                               ; preds = %3
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 31
  %58 = call i32 @lj_rol(i32 %55, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %86

59:                                               ; preds = %3
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 31
  %63 = call i32 @lj_ror(i32 %60, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %86

64:                                               ; preds = %3
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %4, align 4
  br label %86

74:                                               ; preds = %3
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %3
  %85 = call i32 @lua_assert(i32 0)
  br label %86

86:                                               ; preds = %84, %82, %72, %59, %54, %49, %44, %39, %35, %31, %27, %24, %20, %16, %12, %8
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @lj_vm_modi(i32, i32) #1

declare dso_local i32 @lj_rol(i32, i32) #1

declare dso_local i32 @lj_ror(i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
