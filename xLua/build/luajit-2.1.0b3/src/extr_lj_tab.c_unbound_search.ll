; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_unbound_search.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_unbound_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @unbound_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unbound_search(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %52, %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @lj_tab_getint(i32* %14, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @tvisnil(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %53

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @INT_MAX, align 4
  %31 = sub nsw i32 %30, 2
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @lj_tab_getint(i32* %35, i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @tvisnil(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %34

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %80

52:                                               ; preds = %25
  br label %13

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %77, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %60, %61
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32* @lj_tab_getint(i32* %64, i32 %65)
  store i32* %66, i32** %9, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @tvisnil(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %7, align 4
  br label %77

75:                                               ; preds = %69, %59
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %73
  br label %54

78:                                               ; preds = %54
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %49
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32* @lj_tab_getint(i32*, i32) #1

declare dso_local i32 @tvisnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
