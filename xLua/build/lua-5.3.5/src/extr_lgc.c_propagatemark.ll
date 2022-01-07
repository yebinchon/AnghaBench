; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lgc.c_propagatemark.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lgc.c_propagatemark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, %struct.TYPE_38__*, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_38__* }
%struct.TYPE_37__ = type { %struct.TYPE_38__* }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_33__ = type { %struct.TYPE_38__* }
%struct.TYPE_36__ = type { %struct.TYPE_38__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*)* @propagatemark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagatemark(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %2, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  store %struct.TYPE_38__* %12, %struct.TYPE_38__** %4, align 8
  %13 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %14 = call i32 @isgray(%struct.TYPE_38__* %13)
  %15 = call i32 @lua_assert(i32 %14)
  %16 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %17 = call i32 @gray2black(%struct.TYPE_38__* %16)
  %18 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %83 [
    i32 129, label %21
    i32 131, label %32
    i32 132, label %43
    i32 128, label %54
    i32 130, label %72
  ]

21:                                               ; preds = %1
  %22 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %23 = call %struct.TYPE_35__* @gco2t(%struct.TYPE_38__* %22)
  store %struct.TYPE_35__* %23, %struct.TYPE_35__** %5, align 8
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 1
  store %struct.TYPE_38__* %26, %struct.TYPE_38__** %28, align 8
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %30 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %31 = call i64 @traversetable(%struct.TYPE_34__* %29, %struct.TYPE_35__* %30)
  store i64 %31, i64* %3, align 8
  br label %85

32:                                               ; preds = %1
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %34 = call %struct.TYPE_37__* @gco2lcl(%struct.TYPE_38__* %33)
  store %struct.TYPE_37__* %34, %struct.TYPE_37__** %6, align 8
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %36, align 8
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 1
  store %struct.TYPE_38__* %37, %struct.TYPE_38__** %39, align 8
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %41 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %42 = call i64 @traverseLclosure(%struct.TYPE_34__* %40, %struct.TYPE_37__* %41)
  store i64 %42, i64* %3, align 8
  br label %85

43:                                               ; preds = %1
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %45 = call %struct.TYPE_39__* @gco2ccl(%struct.TYPE_38__* %44)
  store %struct.TYPE_39__* %45, %struct.TYPE_39__** %7, align 8
  %46 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %47, align 8
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 1
  store %struct.TYPE_38__* %48, %struct.TYPE_38__** %50, align 8
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %52 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %53 = call i64 @traverseCclosure(%struct.TYPE_34__* %51, %struct.TYPE_39__* %52)
  store i64 %53, i64* %3, align 8
  br label %85

54:                                               ; preds = %1
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %56 = call %struct.TYPE_33__* @gco2th(%struct.TYPE_38__* %55)
  store %struct.TYPE_33__* %56, %struct.TYPE_33__** %8, align 8
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %58, align 8
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 1
  store %struct.TYPE_38__* %59, %struct.TYPE_38__** %61, align 8
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @linkgclist(%struct.TYPE_33__* %62, i32 %65)
  %67 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %68 = call i32 @black2gray(%struct.TYPE_38__* %67)
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %71 = call i64 @traversethread(%struct.TYPE_34__* %69, %struct.TYPE_33__* %70)
  store i64 %71, i64* %3, align 8
  br label %85

72:                                               ; preds = %1
  %73 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %74 = call %struct.TYPE_36__* @gco2p(%struct.TYPE_38__* %73)
  store %struct.TYPE_36__* %74, %struct.TYPE_36__** %9, align 8
  %75 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %76, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 1
  store %struct.TYPE_38__* %77, %struct.TYPE_38__** %79, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %82 = call i64 @traverseproto(%struct.TYPE_34__* %80, %struct.TYPE_36__* %81)
  store i64 %82, i64* %3, align 8
  br label %85

83:                                               ; preds = %1
  %84 = call i32 @lua_assert(i32 0)
  br label %93

85:                                               ; preds = %72, %54, %43, %32, %21
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  br label %93

93:                                               ; preds = %85, %83
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isgray(%struct.TYPE_38__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_35__* @gco2t(%struct.TYPE_38__*) #1

declare dso_local i64 @traversetable(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_37__* @gco2lcl(%struct.TYPE_38__*) #1

declare dso_local i64 @traverseLclosure(%struct.TYPE_34__*, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_39__* @gco2ccl(%struct.TYPE_38__*) #1

declare dso_local i64 @traverseCclosure(%struct.TYPE_34__*, %struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_33__* @gco2th(%struct.TYPE_38__*) #1

declare dso_local i32 @linkgclist(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @black2gray(%struct.TYPE_38__*) #1

declare dso_local i64 @traversethread(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_36__* @gco2p(%struct.TYPE_38__*) #1

declare dso_local i64 @traverseproto(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
