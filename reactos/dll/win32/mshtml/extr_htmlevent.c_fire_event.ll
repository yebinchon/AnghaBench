; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_fire_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_fire_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fire_event(i32* %0, i32 %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %6
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @get_node(i32* %19, i32* %20, i32 %21, i32** %14)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %61

27:                                               ; preds = %18
  %28 = call %struct.TYPE_5__* (...) @create_event()
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %13, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @node_release(i32* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %61

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @set_event_info(%struct.TYPE_5__* %35, i32* %36, i32 %37, i32* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @IHTMLEventObj_Release(i32* %45)
  br label %61

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %6
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @fire_event_obj(i32* %49, i32 %50, %struct.TYPE_5__* %51, i32* %52, i32* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @IHTMLEventObj_Release(i32* %59)
  br label %61

61:                                               ; preds = %26, %33, %43, %57, %48
  ret void
}

declare dso_local i32 @get_node(i32*, i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_5__* @create_event(...) #1

declare dso_local i32 @node_release(i32*) #1

declare dso_local i32 @set_event_info(%struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @IHTMLEventObj_Release(i32*) #1

declare dso_local i32 @fire_event_obj(i32*, i32, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
