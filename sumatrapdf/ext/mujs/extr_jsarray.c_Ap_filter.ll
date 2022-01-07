; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_filter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"callback is not a function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_filter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @js_gettop(i32* %7)
  %9 = icmp sge i32 %8, 3
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @js_iscallable(i32* %11, i32 1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @js_typeerror(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @js_newarray(i32* %18)
  store i32 0, i32* %5, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @js_getlength(i32* %20, i32 0)
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %67, %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @js_hasindex(i32* %27, i32 0, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @js_copy(i32* %32, i32 1)
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @js_copy(i32* %37, i32 2)
  br label %42

39:                                               ; preds = %31
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @js_pushundefined(i32* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @js_copy(i32* %43, i32 -3)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @js_pushnumber(i32* %45, i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @js_copy(i32* %48, i32 0)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @js_call(i32* %50, i32 3)
  %52 = load i32*, i32** %2, align 8
  %53 = call i64 @js_toboolean(i32* %52, i32 -1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @js_pop(i32* %56, i32 1)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = call i32 @js_setindex(i32* %58, i32 -2, i32 %59)
  br label %65

62:                                               ; preds = %42
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @js_pop(i32* %63, i32 2)
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %65, %26
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %22

70:                                               ; preds = %22
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i64 @js_hasindex(i32*, i32, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @js_call(i32*, i32) #1

declare dso_local i64 @js_toboolean(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
