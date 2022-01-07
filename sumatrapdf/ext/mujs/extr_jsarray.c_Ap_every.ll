; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_every.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_every.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"callback is not a function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_every to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_every(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @js_gettop(i32* %6)
  %8 = icmp sge i32 %7, 3
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @js_iscallable(i32* %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @js_typeerror(i32* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @js_getlength(i32* %17, i32 0)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %57, %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @js_hasindex(i32* %24, i32 0, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @js_copy(i32* %29, i32 1)
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @js_copy(i32* %34, i32 2)
  br label %39

36:                                               ; preds = %28
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @js_pushundefined(i32* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @js_copy(i32* %40, i32 -3)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @js_pushnumber(i32* %42, i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @js_copy(i32* %45, i32 0)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @js_call(i32* %47, i32 3)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @js_toboolean(i32* %49, i32 -1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %63

53:                                               ; preds = %39
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @js_pop(i32* %54, i32 2)
  br label %56

56:                                               ; preds = %53, %23
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @js_pushboolean(i32* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %52
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i64 @js_hasindex(i32*, i32, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @js_call(i32*, i32) #1

declare dso_local i32 @js_toboolean(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
