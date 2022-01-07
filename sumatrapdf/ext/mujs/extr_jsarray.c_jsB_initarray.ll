; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_jsB_initarray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_jsB_initarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Array.prototype.toString\00", align 1
@Ap_toString = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Array.prototype.concat\00", align 1
@Ap_concat = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Array.prototype.join\00", align 1
@Ap_join = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Array.prototype.pop\00", align 1
@Ap_pop = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Array.prototype.push\00", align 1
@Ap_push = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Array.prototype.reverse\00", align 1
@Ap_reverse = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Array.prototype.shift\00", align 1
@Ap_shift = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Array.prototype.slice\00", align 1
@Ap_slice = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Array.prototype.sort\00", align 1
@Ap_sort = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Array.prototype.splice\00", align 1
@Ap_splice = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"Array.prototype.unshift\00", align 1
@Ap_unshift = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Array.prototype.indexOf\00", align 1
@Ap_indexOf = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"Array.prototype.lastIndexOf\00", align 1
@Ap_lastIndexOf = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"Array.prototype.every\00", align 1
@Ap_every = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Array.prototype.some\00", align 1
@Ap_some = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"Array.prototype.forEach\00", align 1
@Ap_forEach = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"Array.prototype.map\00", align 1
@Ap_map = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"Array.prototype.filter\00", align 1
@Ap_filter = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"Array.prototype.reduce\00", align 1
@Ap_reduce = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"Array.prototype.reduceRight\00", align 1
@Ap_reduceRight = common dso_local global i32 0, align 4
@jsB_new_Array = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Array.isArray\00", align 1
@A_isArray = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsB_initarray(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @js_pushobject(%struct.TYPE_7__* %3, i32 %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = load i32, i32* @Ap_toString, align 4
  %10 = call i32 @jsB_propf(%struct.TYPE_7__* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %9, i32 0)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = load i32, i32* @Ap_concat, align 4
  %13 = call i32 @jsB_propf(%struct.TYPE_7__* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 0)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load i32, i32* @Ap_join, align 4
  %16 = call i32 @jsB_propf(%struct.TYPE_7__* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 1)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = load i32, i32* @Ap_pop, align 4
  %19 = call i32 @jsB_propf(%struct.TYPE_7__* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %18, i32 0)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32, i32* @Ap_push, align 4
  %22 = call i32 @jsB_propf(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %21, i32 0)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load i32, i32* @Ap_reverse, align 4
  %25 = call i32 @jsB_propf(%struct.TYPE_7__* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %24, i32 0)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = load i32, i32* @Ap_shift, align 4
  %28 = call i32 @jsB_propf(%struct.TYPE_7__* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %27, i32 0)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = load i32, i32* @Ap_slice, align 4
  %31 = call i32 @jsB_propf(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %30, i32 2)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = load i32, i32* @Ap_sort, align 4
  %34 = call i32 @jsB_propf(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %33, i32 1)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = load i32, i32* @Ap_splice, align 4
  %37 = call i32 @jsB_propf(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %36, i32 0)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = load i32, i32* @Ap_unshift, align 4
  %40 = call i32 @jsB_propf(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %39, i32 0)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = load i32, i32* @Ap_indexOf, align 4
  %43 = call i32 @jsB_propf(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %42, i32 1)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = load i32, i32* @Ap_lastIndexOf, align 4
  %46 = call i32 @jsB_propf(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %45, i32 1)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = load i32, i32* @Ap_every, align 4
  %49 = call i32 @jsB_propf(%struct.TYPE_7__* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %48, i32 1)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = load i32, i32* @Ap_some, align 4
  %52 = call i32 @jsB_propf(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %51, i32 1)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = load i32, i32* @Ap_forEach, align 4
  %55 = call i32 @jsB_propf(%struct.TYPE_7__* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %54, i32 1)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = load i32, i32* @Ap_map, align 4
  %58 = call i32 @jsB_propf(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %57, i32 1)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = load i32, i32* @Ap_filter, align 4
  %61 = call i32 @jsB_propf(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %60, i32 1)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = load i32, i32* @Ap_reduce, align 4
  %64 = call i32 @jsB_propf(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 %63, i32 1)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = load i32, i32* @Ap_reduceRight, align 4
  %67 = call i32 @jsB_propf(%struct.TYPE_7__* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %66, i32 1)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = load i32, i32* @jsB_new_Array, align 4
  %70 = load i32, i32* @jsB_new_Array, align 4
  %71 = call i32 @js_newcconstructor(%struct.TYPE_7__* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 0)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = load i32, i32* @A_isArray, align 4
  %74 = call i32 @jsB_propf(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %73, i32 1)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = load i32, i32* @JS_DONTENUM, align 4
  %77 = call i32 @js_defglobal(%struct.TYPE_7__* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %76)
  ret void
}

declare dso_local i32 @js_pushobject(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @jsB_propf(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @js_newcconstructor(%struct.TYPE_7__*, i32, i32, i8*, i32) #1

declare dso_local i32 @js_defglobal(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
