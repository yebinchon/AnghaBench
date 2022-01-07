; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_jsB_new_Array.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_jsB_new_Array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @jsB_new_Array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsB_new_Array(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @js_gettop(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @js_newarray(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @js_isnumber(i32* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @js_copy(i32* %16, i32 1)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @js_setproperty(i32* %18, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %25

20:                                               ; preds = %11
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @js_copy(i32* %21, i32 1)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @js_setindex(i32* %23, i32 -2, i32 0)
  br label %25

25:                                               ; preds = %20, %15
  br label %43

26:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @js_copy(i32* %32, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @js_setindex(i32* %35, i32 -2, i32 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %27

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %25
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i64 @js_isnumber(i32*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_setproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
