; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_concat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_concat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @js_gettop(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @js_newarray(i32* %10)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %53, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @js_copy(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @js_isarray(i32* %20, i32 -1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %16
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @js_getlength(i32* %24, i32 -1)
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %41, %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @js_hasindex(i32* %31, i32 -1, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = call i32 @js_setindex(i32* %36, i32 -3, i32 %37)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @js_pop(i32* %45, i32 1)
  br label %52

47:                                               ; preds = %16
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = call i32 @js_setindex(i32* %48, i32 -2, i32 %49)
  br label %52

52:                                               ; preds = %47, %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %12

56:                                               ; preds = %12
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i64 @js_isarray(i32*, i32) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i64 @js_hasindex(i32*, i32, i32) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
