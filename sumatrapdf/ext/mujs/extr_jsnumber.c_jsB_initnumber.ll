; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsnumber.c_jsB_initnumber.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsnumber.c_jsB_initnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Number.prototype.valueOf\00", align 1
@Np_valueOf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Number.prototype.toString\00", align 1
@Np_toString = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Number.prototype.toLocaleString\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Number.prototype.toFixed\00", align 1
@Np_toFixed = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Number.prototype.toExponential\00", align 1
@Np_toExponential = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Number.prototype.toPrecision\00", align 1
@Np_toPrecision = common dso_local global i32 0, align 4
@jsB_Number = common dso_local global i32 0, align 4
@jsB_new_Number = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"MAX_VALUE\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"MIN_VALUE\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@NAN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"NEGATIVE_INFINITY\00", align 1
@INFINITY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"POSITIVE_INFINITY\00", align 1
@JS_DONTENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsB_initnumber(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = call i32 @js_pushobject(%struct.TYPE_11__* %8, %struct.TYPE_12__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = load i32, i32* @Np_valueOf, align 4
  %15 = call i32 @jsB_propf(%struct.TYPE_11__* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i32 0)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = load i32, i32* @Np_toString, align 4
  %18 = call i32 @jsB_propf(%struct.TYPE_11__* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 1)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = load i32, i32* @Np_toString, align 4
  %21 = call i32 @jsB_propf(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 0)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = load i32, i32* @Np_toFixed, align 4
  %24 = call i32 @jsB_propf(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %23, i32 1)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = load i32, i32* @Np_toExponential, align 4
  %27 = call i32 @jsB_propf(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %26, i32 1)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = load i32, i32* @Np_toPrecision, align 4
  %30 = call i32 @jsB_propf(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %29, i32 1)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = load i32, i32* @jsB_Number, align 4
  %33 = load i32, i32* @jsB_new_Number, align 4
  %34 = call i32 @js_newcconstructor(%struct.TYPE_11__* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = call i32 @jsB_propn(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 undef)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = call i32 @jsB_propn(%struct.TYPE_11__* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = load i32, i32* @NAN, align 4
  %41 = call i32 @jsB_propn(%struct.TYPE_11__* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = load i32, i32* @INFINITY, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @jsB_propn(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = load i32, i32* @INFINITY, align 4
  %48 = call i32 @jsB_propn(%struct.TYPE_11__* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = load i32, i32* @JS_DONTENUM, align 4
  %51 = call i32 @js_defglobal(%struct.TYPE_11__* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i32 @js_pushobject(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @jsB_propf(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @js_newcconstructor(%struct.TYPE_11__*, i32, i32, i8*, i32) #1

declare dso_local i32 @jsB_propn(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @js_defglobal(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
