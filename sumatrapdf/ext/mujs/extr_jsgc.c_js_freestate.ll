; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsgc.c_js_freestate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsgc.c_js_freestate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 (i32, %struct.TYPE_21__*, i32)*, %struct.TYPE_21__*, %struct.TYPE_19__, %struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_22__* }
%struct.TYPE_23__ = type { %struct.TYPE_23__* }
%struct.TYPE_24__ = type { %struct.TYPE_24__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_freestate(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = icmp ne %struct.TYPE_21__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %105

14:                                               ; preds = %1
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %7, align 8
  br label %18

18:                                               ; preds = %28, %14
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = icmp ne %struct.TYPE_24__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %8, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %27 = call i32 @jsG_freeenvironment(%struct.TYPE_21__* %25, %struct.TYPE_24__* %26)
  br label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %7, align 8
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %3, align 8
  br label %34

34:                                               ; preds = %44, %30
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = icmp ne %struct.TYPE_23__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %4, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = call i32 @jsG_freefunction(%struct.TYPE_21__* %41, %struct.TYPE_23__* %42)
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %3, align 8
  br label %34

46:                                               ; preds = %34
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  store %struct.TYPE_22__* %49, %struct.TYPE_22__** %5, align 8
  br label %50

50:                                               ; preds = %60, %46
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = icmp ne %struct.TYPE_22__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %6, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = call i32 @jsG_freeobject(%struct.TYPE_21__* %57, %struct.TYPE_22__* %58)
  br label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %5, align 8
  br label %50

62:                                               ; preds = %50
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %9, align 8
  br label %66

66:                                               ; preds = %76, %62
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = icmp ne %struct.TYPE_20__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %10, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %75 = call i32 @js_free(%struct.TYPE_21__* %73, %struct.TYPE_20__* %74)
  br label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %9, align 8
  br label %66

78:                                               ; preds = %66
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %80 = call i32 @jsS_freestrings(%struct.TYPE_21__* %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = call i32 @js_free(%struct.TYPE_21__* %81, %struct.TYPE_20__* %85)
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32 (i32, %struct.TYPE_21__*, i32)*, i32 (i32, %struct.TYPE_21__*, i32)** %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = call i32 %89(i32 %92, %struct.TYPE_21__* %95, i32 0)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i32 (i32, %struct.TYPE_21__*, i32)*, i32 (i32, %struct.TYPE_21__*, i32)** %98, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %104 = call i32 %99(i32 %102, %struct.TYPE_21__* %103, i32 0)
  br label %105

105:                                              ; preds = %78, %13
  ret void
}

declare dso_local i32 @jsG_freeenvironment(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local i32 @jsG_freefunction(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @jsG_freeobject(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @js_free(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @jsS_freestrings(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
