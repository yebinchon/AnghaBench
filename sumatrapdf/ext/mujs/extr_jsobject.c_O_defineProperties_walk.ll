; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_defineProperties_walk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_defineProperties_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__*, i64, i32, i32, %struct.TYPE_3__* }

@JS_DONTENUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @O_defineProperties_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @O_defineProperties_walk(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  call void @O_defineProperties_walk(i32* %12, %struct.TYPE_3__* %15)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @JS_DONTENUM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @js_pushvalue(i32* %24, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @js_toobject(i32* %30, i32 1)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @js_toobject(i32* %35, i32 -1)
  %37 = call i32 @ToPropertyDescriptor(i32* %29, i32 %31, i32 %34, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @js_pop(i32* %38, i32 1)
  br label %40

40:                                               ; preds = %23, %16
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  call void @O_defineProperties_walk(i32* %48, %struct.TYPE_3__* %51)
  br label %52

52:                                               ; preds = %47, %40
  ret void
}

declare dso_local i32 @js_pushvalue(i32*, i32) #1

declare dso_local i32 @ToPropertyDescriptor(i32*, i32, i32, i32) #1

declare dso_local i32 @js_toobject(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
