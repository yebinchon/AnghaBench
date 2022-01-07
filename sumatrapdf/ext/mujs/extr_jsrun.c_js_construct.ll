; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_construct.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s is not callable\00", align 1
@JS_CCFUNCTION = common dso_local global i64 0, align 8
@BOT = common dso_local global i32 0, align 4
@TOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@JS_COBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_construct(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 0, %10
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @js_iscallable(%struct.TYPE_26__* %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 0, %18
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @js_typeof(%struct.TYPE_26__* %17, i32 %20)
  %22 = call i32 @js_typeerror(%struct.TYPE_26__* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 0, %25
  %27 = sub nsw i32 %26, 1
  %28 = call %struct.TYPE_27__* @js_toobject(%struct.TYPE_26__* %24, i32 %27)
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %5, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @JS_CCFUNCTION, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %23
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %34
  %42 = load i32, i32* @BOT, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %44 = call i32 @js_pushnull(%struct.TYPE_26__* %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @js_rot(%struct.TYPE_26__* %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i32, i32* @TOP, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* @BOT, align 4
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @jsR_pushtrace(%struct.TYPE_26__* %57, i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @jsR_callcfunction(%struct.TYPE_26__* %64, i32 %65, i32 %70, i64 %75)
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* @BOT, align 4
  br label %128

82:                                               ; preds = %34, %23
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 0, %84
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @js_getproperty(%struct.TYPE_26__* %83, i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %89 = call i64 @js_isobject(%struct.TYPE_26__* %88, i32 -1)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %93 = call %struct.TYPE_27__* @js_toobject(%struct.TYPE_26__* %92, i32 -1)
  store %struct.TYPE_27__* %93, %struct.TYPE_27__** %6, align 8
  br label %98

94:                                               ; preds = %82
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %96, align 8
  store %struct.TYPE_27__* %97, %struct.TYPE_27__** %6, align 8
  br label %98

98:                                               ; preds = %94, %91
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %100 = call i32 @js_pop(%struct.TYPE_26__* %99, i32 1)
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %102 = load i32, i32* @JS_COBJECT, align 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %104 = call %struct.TYPE_27__* @jsV_newobject(%struct.TYPE_26__* %101, i32 %102, %struct.TYPE_27__* %103)
  store %struct.TYPE_27__* %104, %struct.TYPE_27__** %7, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %107 = call i32 @js_pushobject(%struct.TYPE_26__* %105, %struct.TYPE_27__* %106)
  %108 = load i32, i32* %4, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %98
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @js_rot(%struct.TYPE_26__* %111, i32 %113)
  br label %115

115:                                              ; preds = %110, %98
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @js_call(%struct.TYPE_26__* %116, i32 %117)
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %120 = call i64 @js_isobject(%struct.TYPE_26__* %119, i32 -1)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %115
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %124 = call i32 @js_pop(%struct.TYPE_26__* %123, i32 1)
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %127 = call i32 @js_pushobject(%struct.TYPE_26__* %125, %struct.TYPE_27__* %126)
  br label %128

128:                                              ; preds = %52, %122, %115
  ret void
}

declare dso_local i32 @js_iscallable(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @js_typeerror(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @js_typeof(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_27__* @js_toobject(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @js_pushnull(%struct.TYPE_26__*) #1

declare dso_local i32 @js_rot(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @jsR_pushtrace(%struct.TYPE_26__*, i32, i8*, i32) #1

declare dso_local i32 @jsR_callcfunction(%struct.TYPE_26__*, i32, i32, i64) #1

declare dso_local i32 @js_getproperty(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i64 @js_isobject(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @js_pop(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_27__* @jsV_newobject(%struct.TYPE_26__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @js_call(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
