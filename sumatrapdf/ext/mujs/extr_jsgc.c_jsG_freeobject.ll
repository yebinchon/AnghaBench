; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsgc.c_jsG_freeobject.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsgc.c_jsG_freeobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32, i32 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_15__ = type { i64 }

@JS_CREGEXP = common dso_local global i64 0, align 8
@JS_CITERATOR = common dso_local global i64 0, align 8
@JS_CUSERDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*)* @jsG_freeobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsG_freeobject(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %5 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = call i32 @jsG_freeproperty(%struct.TYPE_20__* %12, %struct.TYPE_15__* %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @JS_CREGEXP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = call i32 @js_free(%struct.TYPE_20__* %24, %struct.TYPE_21__* %29)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @js_regfreex(i32 %33, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %23, %17
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @JS_CITERATOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @jsG_freeiterator(%struct.TYPE_20__* %50, i32 %55)
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @JS_CUSERDATA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.TYPE_20__*, i32)* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %75(%struct.TYPE_20__* %76, i32 %81)
  br label %83

83:                                               ; preds = %70, %63, %57
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = call i32 @js_free(%struct.TYPE_20__* %84, %struct.TYPE_21__* %85)
  ret void
}

declare dso_local i32 @jsG_freeproperty(%struct.TYPE_20__*, %struct.TYPE_15__*) #1

declare dso_local i32 @js_free(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @js_regfreex(i32, i32, i32) #1

declare dso_local i32 @jsG_freeiterator(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
