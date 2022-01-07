; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_jsB_initfunction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_jsB_initfunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i64, i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Function.prototype\00", align 1
@jsB_Function_prototype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Function.prototype.toString\00", align 1
@Fp_toString = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Function.prototype.apply\00", align 1
@Fp_apply = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Function.prototype.call\00", align 1
@Fp_call = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Function.prototype.bind\00", align 1
@Fp_bind = common dso_local global i32 0, align 4
@jsB_Function = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@JS_DONTENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsB_initfunction(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load i32, i32* @jsB_Function_prototype, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  store i32 %9, i32* %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = call i32 @js_pushobject(%struct.TYPE_12__* %28, %struct.TYPE_13__* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = load i32, i32* @Fp_toString, align 4
  %35 = call i32 @jsB_propf(%struct.TYPE_12__* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 2)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = load i32, i32* @Fp_apply, align 4
  %38 = call i32 @jsB_propf(%struct.TYPE_12__* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 2)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = load i32, i32* @Fp_call, align 4
  %41 = call i32 @jsB_propf(%struct.TYPE_12__* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 1)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = load i32, i32* @Fp_bind, align 4
  %44 = call i32 @jsB_propf(%struct.TYPE_12__* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 1)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = load i32, i32* @jsB_Function, align 4
  %47 = load i32, i32* @jsB_Function, align 4
  %48 = call i32 @js_newcconstructor(%struct.TYPE_12__* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = load i32, i32* @JS_DONTENUM, align 4
  %51 = call i32 @js_defglobal(%struct.TYPE_12__* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i32 @js_pushobject(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @jsB_propf(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @js_newcconstructor(%struct.TYPE_12__*, i32, i32, i8*, i32) #1

declare dso_local i32 @js_defglobal(%struct.TYPE_12__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
