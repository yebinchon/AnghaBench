; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ir.c_lj_ir_strcmp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ir.c_lj_ir_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_ir_strcmp(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @lj_str_cmp(i32* %9, i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %29 [
    i32 128, label %13
    i32 131, label %17
    i32 129, label %21
    i32 130, label %25
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %3
  %30 = call i32 @lua_assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %25, %21, %17, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @lj_str_cmp(i32*, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
