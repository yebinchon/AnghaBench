; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_newcconstructor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_newcconstructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i32, i8*, i8* }

@JS_CCFUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4
@JS_DONTCONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"constructor\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_newcconstructor(%struct.TYPE_16__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = load i32, i32* @JS_CCFUNCTION, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_17__* @jsV_newobject(%struct.TYPE_16__* %12, i32 %13, i32 %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %11, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %40 = call i32 @js_pushobject(%struct.TYPE_16__* %38, %struct.TYPE_17__* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @js_pushnumber(%struct.TYPE_16__* %41, i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = load i32, i32* @JS_READONLY, align 4
  %46 = load i32, i32* @JS_DONTENUM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @JS_DONTCONF, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @js_defproperty(%struct.TYPE_16__* %44, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = call i32 @js_rot2(%struct.TYPE_16__* %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = call i32 @js_copy(%struct.TYPE_16__* %53, i32 -2)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = load i32, i32* @JS_DONTENUM, align 4
  %57 = call i32 @js_defproperty(%struct.TYPE_16__* %55, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = load i32, i32* @JS_READONLY, align 4
  %60 = load i32, i32* @JS_DONTENUM, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @JS_DONTCONF, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @js_defproperty(%struct.TYPE_16__* %58, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local %struct.TYPE_17__* @jsV_newobject(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @js_pushnumber(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @js_defproperty(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @js_rot2(%struct.TYPE_16__*) #1

declare dso_local i32 @js_copy(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
