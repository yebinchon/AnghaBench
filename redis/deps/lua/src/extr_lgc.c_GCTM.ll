; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lgc.c_GCTM.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lgc.c_GCTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_26__* }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_26__* }

@TM_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @GCTM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GCTM(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %10 = call %struct.TYPE_24__* @G(%struct.TYPE_23__* %9)
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %3, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %4, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = call %struct.TYPE_25__* @rawgco2u(%struct.TYPE_26__* %17)
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %5, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = icmp eq %struct.TYPE_26__* %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 3
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %26, align 8
  br label %37

27:                                               ; preds = %1
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %36, align 8
  br label %37

37:                                               ; preds = %27, %24
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %45, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  store %struct.TYPE_26__* %46, %struct.TYPE_26__** %50, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %53 = call i32 @makewhite(%struct.TYPE_24__* %51, %struct.TYPE_26__* %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TM_GC, align 4
  %60 = call i32* @fasttm(%struct.TYPE_23__* %54, i32 %58, i32 %59)
  store i32* %60, i32** %6, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %107

63:                                               ; preds = %37
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %7, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %8, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 2, %74
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @setobj2s(%struct.TYPE_23__* %78, i64 %81, i32* %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = call i32 @setuvalue(%struct.TYPE_23__* %84, i64 %88, %struct.TYPE_25__* %89)
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 2
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 2
  %100 = call i32 @luaD_call(%struct.TYPE_23__* %95, i64 %99, i32 0)
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %63, %37
  ret void
}

declare dso_local %struct.TYPE_24__* @G(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_25__* @rawgco2u(%struct.TYPE_26__*) #1

declare dso_local i32 @makewhite(%struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local i32* @fasttm(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @setobj2s(%struct.TYPE_23__*, i64, i32*) #1

declare dso_local i32 @setuvalue(%struct.TYPE_23__*, i64, %struct.TYPE_25__*) #1

declare dso_local i32 @luaD_call(%struct.TYPE_23__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
