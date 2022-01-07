; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_jsB_initmath.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsmath.c_jsB_initmath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@JS_CMATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LN10\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LN2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"LOG2E\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"LOG10E\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SQRT1_2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"SQRT2\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Math.abs\00", align 1
@Math_abs = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"Math.acos\00", align 1
@Math_acos = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"Math.asin\00", align 1
@Math_asin = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"Math.atan\00", align 1
@Math_atan = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"Math.atan2\00", align 1
@Math_atan2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"Math.ceil\00", align 1
@Math_ceil = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"Math.cos\00", align 1
@Math_cos = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"Math.exp\00", align 1
@Math_exp = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"Math.floor\00", align 1
@Math_floor = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"Math.log\00", align 1
@Math_log = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"Math.max\00", align 1
@Math_max = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"Math.min\00", align 1
@Math_min = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"Math.pow\00", align 1
@Math_pow = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"Math.random\00", align 1
@Math_random = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"Math.round\00", align 1
@Math_round = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"Math.sin\00", align 1
@Math_sin = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"Math.sqrt\00", align 1
@Math_sqrt = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"Math.tan\00", align 1
@Math_tan = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"Math\00", align 1
@JS_DONTENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsB_initmath(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = call i32 @time(i32* null)
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = load i32, i32* @JS_CMATH, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @jsV_newobject(%struct.TYPE_8__* %7, i32 %8, i32 %11)
  %13 = call i32 @js_pushobject(%struct.TYPE_8__* %6, i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call i32 @jsB_propn(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), double 0x4005BF0A8B145769)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i32 @jsB_propn(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double 0x40026BB1BBB55516)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call i32 @jsB_propn(%struct.TYPE_8__* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double 0x3FE62E42FEFA39EF)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = call i32 @jsB_propn(%struct.TYPE_8__* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double 0x3FF71547652B82FE)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = call i32 @jsB_propn(%struct.TYPE_8__* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), double 0x3FDBCB7B1526E50E)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = call i32 @jsB_propn(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), double 0x400921FB54442D18)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = call i32 @jsB_propn(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double 0x3FE6A09E667F3BCD)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 @jsB_propn(%struct.TYPE_8__* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double 0x3FF6A09E667F3BCD)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = load i32, i32* @Math_abs, align 4
  %32 = call i32 @jsB_propf(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %31, i32 1)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = load i32, i32* @Math_acos, align 4
  %35 = call i32 @jsB_propf(%struct.TYPE_8__* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %34, i32 1)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = load i32, i32* @Math_asin, align 4
  %38 = call i32 @jsB_propf(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %37, i32 1)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = load i32, i32* @Math_atan, align 4
  %41 = call i32 @jsB_propf(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %40, i32 1)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = load i32, i32* @Math_atan2, align 4
  %44 = call i32 @jsB_propf(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %43, i32 2)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = load i32, i32* @Math_ceil, align 4
  %47 = call i32 @jsB_propf(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %46, i32 1)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = load i32, i32* @Math_cos, align 4
  %50 = call i32 @jsB_propf(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %49, i32 1)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = load i32, i32* @Math_exp, align 4
  %53 = call i32 @jsB_propf(%struct.TYPE_8__* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %52, i32 1)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = load i32, i32* @Math_floor, align 4
  %56 = call i32 @jsB_propf(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %55, i32 1)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = load i32, i32* @Math_log, align 4
  %59 = call i32 @jsB_propf(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %58, i32 1)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = load i32, i32* @Math_max, align 4
  %62 = call i32 @jsB_propf(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %61, i32 0)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = load i32, i32* @Math_min, align 4
  %65 = call i32 @jsB_propf(%struct.TYPE_8__* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %64, i32 0)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = load i32, i32* @Math_pow, align 4
  %68 = call i32 @jsB_propf(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %67, i32 2)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = load i32, i32* @Math_random, align 4
  %71 = call i32 @jsB_propf(%struct.TYPE_8__* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %70, i32 0)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = load i32, i32* @Math_round, align 4
  %74 = call i32 @jsB_propf(%struct.TYPE_8__* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %73, i32 1)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = load i32, i32* @Math_sin, align 4
  %77 = call i32 @jsB_propf(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %76, i32 1)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = load i32, i32* @Math_sqrt, align 4
  %80 = call i32 @jsB_propf(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32 %79, i32 1)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = load i32, i32* @Math_tan, align 4
  %83 = call i32 @jsB_propf(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %82, i32 1)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = load i32, i32* @JS_DONTENUM, align 4
  %86 = call i32 @js_defglobal(%struct.TYPE_8__* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %85)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @jsV_newobject(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @jsB_propn(%struct.TYPE_8__*, i8*, double) #1

declare dso_local i32 @jsB_propf(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @js_defglobal(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
