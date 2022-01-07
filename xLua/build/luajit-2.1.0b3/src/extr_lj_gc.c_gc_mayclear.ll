; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_mayclear.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_mayclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @gc_mayclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_mayclear(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @tvisgcv(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @tvisstr(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @strV(i32* %14)
  %16 = call i32 @gc_mark_str(i32 %15)
  store i32 0, i32* %3, align 4
  br label %38

17:                                               ; preds = %9
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @gcV(i32* %18)
  %20 = call i64 @iswhite(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %38

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @tvisudata(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @udataV(i32* %31)
  %33 = call i64 @isfinalized(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %38

36:                                               ; preds = %30, %27, %23
  br label %37

37:                                               ; preds = %36, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %35, %22, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @tvisgcv(i32*) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32 @gc_mark_str(i32) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i64 @iswhite(i32) #1

declare dso_local i32 @gcV(i32*) #1

declare dso_local i64 @tvisudata(i32*) #1

declare dso_local i64 @isfinalized(i32) #1

declare dso_local i32 @udataV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
