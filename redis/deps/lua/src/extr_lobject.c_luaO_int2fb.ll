; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lobject.c_luaO_int2fb.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lobject.c_luaO_int2fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaO_int2fb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %8, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp uge i32 %6, 16
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = add i32 %9, 1
  %11 = lshr i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  %22 = shl i32 %21, 3
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @cast_int(i32 %23)
  %25 = sub nsw i32 %24, 8
  %26 = or i32 %22, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @cast_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
