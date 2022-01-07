; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_newuserdatax.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_newuserdatax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32, i8* }

@JS_CUSERDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_newuserdatax(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @js_isobject(i32* %17, i32 -1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.TYPE_10__* @js_toobject(i32* %21, i32 -1)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %15, align 8
  br label %23

23:                                               ; preds = %20, %7
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @js_pop(i32* %24, i32 1)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @JS_CUSERDATA, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %29 = call %struct.TYPE_10__* @jsV_newobject(i32* %26, i32 %27, %struct.TYPE_10__* %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %16, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i8* %30, i8** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 5
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %62 = call i32 @js_pushobject(i32* %60, %struct.TYPE_10__* %61)
  ret void
}

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @js_toobject(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @jsV_newobject(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @js_pushobject(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
