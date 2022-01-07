; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_instanceof.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_instanceof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@.str = private unnamed_addr constant [28 x i8] c"instanceof: invalid operand\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"instanceof: 'prototype' property is not an object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @js_instanceof(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @js_iscallable(i32* %6, i32 -1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @js_typeerror(i32* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @js_isobject(i32* %13, i32 -2)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %46

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @js_getproperty(i32* %18, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @js_isobject(i32* %20, i32 -1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @js_typeerror(i32* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_3__* @js_toobject(i32* %27, i32 -1)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @js_pop(i32* %29, i32 1)
  %31 = load i32*, i32** %3, align 8
  %32 = call %struct.TYPE_3__* @js_toobject(i32* %31, i32 -2)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %5, align 8
  br label %33

33:                                               ; preds = %44, %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = icmp eq %struct.TYPE_3__* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %46

44:                                               ; preds = %36
  br label %33

45:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %43, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_isobject(i32*, i32) #1

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_3__* @js_toobject(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
