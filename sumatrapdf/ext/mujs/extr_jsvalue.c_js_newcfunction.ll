; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_newcfunction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_newcfunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i32, i32*, i32 }

@JS_CCFUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4
@JS_DONTCONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"constructor\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_newcfunction(%struct.TYPE_16__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = load i32, i32* @JS_CCFUNCTION, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_17__* @jsV_newobject(%struct.TYPE_16__* %10, i32 %11, i32 %14)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  store i32 %21, i32* %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = call i32 @js_pushobject(%struct.TYPE_16__* %35, %struct.TYPE_17__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @js_pushnumber(%struct.TYPE_16__* %38, i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = load i32, i32* @JS_READONLY, align 4
  %43 = load i32, i32* @JS_DONTENUM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @JS_DONTCONF, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @js_defproperty(%struct.TYPE_16__* %41, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = call i32 @js_newobject(%struct.TYPE_16__* %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = call i32 @js_copy(%struct.TYPE_16__* %50, i32 -2)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = load i32, i32* @JS_DONTENUM, align 4
  %54 = call i32 @js_defproperty(%struct.TYPE_16__* %52, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = load i32, i32* @JS_DONTCONF, align 4
  %57 = call i32 @js_defproperty(%struct.TYPE_16__* %55, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  ret void
}

declare dso_local %struct.TYPE_17__* @jsV_newobject(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @js_pushnumber(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @js_defproperty(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @js_newobject(%struct.TYPE_16__*) #1

declare dso_local i32 @js_copy(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
