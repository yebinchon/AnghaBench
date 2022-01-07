; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_setvar.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_setvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, i64 }
%struct.TYPE_16__ = type { i32, i32, i64 }

@JS_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"'%s' is read-only\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"assignment to undeclared variable '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8*)* @js_setvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @js_setvar(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %5, align 8
  br label %10

10:                                               ; preds = %69, %2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.TYPE_16__* @jsV_getproperty(%struct.TYPE_15__* %11, i64 %14, i8* %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %65

19:                                               ; preds = %10
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @js_pushobject(%struct.TYPE_15__* %25, i64 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @js_pushobject(%struct.TYPE_15__* %30, i64 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = call i32 @js_copy(%struct.TYPE_15__* %35, i32 -3)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = call i32 @js_call(%struct.TYPE_15__* %37, i32 1)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = call i32 @js_pop(%struct.TYPE_15__* %39, i32 1)
  br label %88

41:                                               ; preds = %19
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @JS_READONLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = call i32* @stackidx(%struct.TYPE_15__* %49, i32 -1)
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %64

54:                                               ; preds = %41
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @js_typeerror(%struct.TYPE_15__* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %48
  br label %88

65:                                               ; preds = %10
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %5, align 8
  br label %69

69:                                               ; preds = %65
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = icmp ne %struct.TYPE_17__* %70, null
  br i1 %71, label %10, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @js_referenceerror(%struct.TYPE_15__* %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @jsR_setproperty(%struct.TYPE_15__* %82, i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %81, %64, %24
  ret void
}

declare dso_local %struct.TYPE_16__* @jsV_getproperty(%struct.TYPE_15__*, i64, i8*) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @js_copy(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @js_call(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @js_pop(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @stackidx(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @js_typeerror(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @js_referenceerror(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @jsR_setproperty(%struct.TYPE_15__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
