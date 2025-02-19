; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_dispatch.c_lj_dispatch_init_hotcount.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_dispatch.c_lj_dispatch_init_hotcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@JIT_P_hotloop = common dso_local global i64 0, align 8
@HOTCOUNT_LOOP = common dso_local global i32 0, align 4
@HOTCOUNT_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_dispatch_init_hotcount(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_3__* @G2J(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @JIT_P_hotloop, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @HOTCOUNT_LOOP, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call %struct.TYPE_4__* @G2GG(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %31, %1
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @HOTCOUNT_SIZE, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %22

34:                                               ; preds = %22
  ret void
}

declare dso_local %struct.TYPE_3__* @G2J(i32*) #1

declare dso_local %struct.TYPE_4__* @G2GG(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
