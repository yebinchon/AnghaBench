; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_newfunction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_newfunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_20__* }

@JS_CFUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4
@JS_DONTCONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"constructor\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_newfunction(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = load i32, i32* @JS_CFUNCTION, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_19__* @jsV_newobject(%struct.TYPE_18__* %8, i32 %9, i32 %12)
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %7, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %18, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i32* %19, i32** %23, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = call i32 @js_pushobject(%struct.TYPE_18__* %24, %struct.TYPE_19__* %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @js_pushnumber(%struct.TYPE_18__* %27, i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = load i32, i32* @JS_READONLY, align 4
  %34 = load i32, i32* @JS_DONTENUM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @JS_DONTCONF, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @js_defproperty(%struct.TYPE_18__* %32, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = call i32 @js_newobject(%struct.TYPE_18__* %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = call i32 @js_copy(%struct.TYPE_18__* %41, i32 -2)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = load i32, i32* @JS_DONTENUM, align 4
  %45 = call i32 @js_defproperty(%struct.TYPE_18__* %43, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = load i32, i32* @JS_DONTCONF, align 4
  %48 = call i32 @js_defproperty(%struct.TYPE_18__* %46, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local %struct.TYPE_19__* @jsV_newobject(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @js_pushnumber(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @js_defproperty(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @js_newobject(%struct.TYPE_18__*) #1

declare dso_local i32 @js_copy(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
