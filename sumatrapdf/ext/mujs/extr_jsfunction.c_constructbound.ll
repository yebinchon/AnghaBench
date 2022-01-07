; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_constructbound.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_constructbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"__TargetFunction__\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"__BoundArguments__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @constructbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructbound(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @js_gettop(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @js_gettop(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_currentfunction(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @js_getproperty(i32* %14, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @js_gettop(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @js_getproperty(i32* %19, i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @js_getlength(i32* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %34, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @js_getindex(i32* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @js_remove(i32* %38, i32 %39)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %49, %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @js_copy(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %41

52:                                               ; preds = %41
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %54, %55
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @js_construct(i32* %53, i32 %57)
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @js_currentfunction(i32*) #1

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i32 @js_getindex(i32*, i32, i32) #1

declare dso_local i32 @js_remove(i32*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_construct(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
