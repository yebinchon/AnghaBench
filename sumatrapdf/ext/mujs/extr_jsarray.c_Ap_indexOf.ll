; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_indexOf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_indexOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_indexOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_indexOf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @js_getlength(i32* %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @js_isdefined(i32* %8, i32 2)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_tointeger(i32* %12, i32 2)
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ]
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @js_copy(i32* %28, i32 1)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %52, %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @js_hasindex(i32* %36, i32 0, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32*, i32** %2, align 8
  %42 = call i64 @js_strictequal(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @js_pushnumber(i32* %45, i32 %46)
  br label %58

48:                                               ; preds = %40
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @js_pop(i32* %49, i32 1)
  br label %51

51:                                               ; preds = %48, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @js_pushnumber(i32* %56, i32 -1)
  br label %58

58:                                               ; preds = %55, %44
  ret void
}

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i64 @js_isdefined(i32*, i32) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i64 @js_hasindex(i32*, i32, i32) #1

declare dso_local i64 @js_strictequal(i32*) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
