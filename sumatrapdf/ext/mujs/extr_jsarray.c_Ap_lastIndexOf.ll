; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_lastIndexOf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_lastIndexOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_lastIndexOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_lastIndexOf(i32* %0) #0 {
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
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ]
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @js_copy(i32* %34, i32 1)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %57, %33
  %38 = load i32, i32* %3, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @js_hasindex(i32* %41, i32 0, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32*, i32** %2, align 8
  %47 = call i64 @js_strictequal(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @js_pushnumber(i32* %50, i32 %51)
  br label %63

53:                                               ; preds = %45
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @js_pop(i32* %54, i32 1)
  br label %56

56:                                               ; preds = %53, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %3, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @js_pushnumber(i32* %61, i32 -1)
  br label %63

63:                                               ; preds = %60, %49
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
