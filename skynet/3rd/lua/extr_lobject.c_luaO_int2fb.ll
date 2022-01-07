; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lobject.c_luaO_int2fb.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lobject.c_luaO_int2fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaO_int2fb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %13, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp uge i32 %11, 128
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 15
  %16 = lshr i32 %15, 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %4, align 4
  br label %10

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %23, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp uge i32 %21, 16
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  %26 = lshr i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %20

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = shl i32 %31, 3
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @cast_int(i32 %33)
  %35 = sub nsw i32 %34, 8
  %36 = or i32 %32, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %7
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @cast_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
