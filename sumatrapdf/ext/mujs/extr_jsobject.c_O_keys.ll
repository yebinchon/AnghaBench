; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_keys.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"not an object\00", align 1
@JS_CSTRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @O_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @O_keys(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @js_isobject(i32* %6, i32 1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @js_typeerror(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_8__* @js_toobject(i32* %13, i32 1)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @js_newarray(i32* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call i32 @O_keys_walk(i32* %24, %struct.TYPE_9__* %27, i32 0)
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @JS_CSTRING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @js_pushnumber(i32* %46, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = call i32 @js_setindex(i32* %49, i32 -2, i32 %50)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %37

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %30
  ret void
}

declare dso_local i32 @js_isobject(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @js_toobject(i32*, i32) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @O_keys_walk(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
