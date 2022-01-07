; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lgc.c_singlestep.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lgc.c_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@KGC_EMERGENCY = common dso_local global i32 0, align 4
@GCFINALIZECOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @singlestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlestep(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_12__* @G(i32* %7)
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %108 [
    i32 133, label %12
    i32 132, label %29
    i32 135, label %49
    i32 131, label %61
    i32 129, label %67
    i32 128, label %73
    i32 130, label %77
    i32 134, label %88
  ]

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @restartcollection(%struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 132, i32* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %110

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @lua_assert(i32* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = call i32 @propagatemark(%struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 135, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %29
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %2, align 4
  br label %110

49:                                               ; preds = %1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = call i32 @propagateall(%struct.TYPE_12__* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @atomic(i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @entersweep(i32* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = call i32 @gettotalbytes(%struct.TYPE_12__* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %110

61:                                               ; preds = %1
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = call i32 @sweepstep(i32* %62, %struct.TYPE_12__* %63, i32 129, i32* %65)
  store i32 %66, i32* %2, align 4
  br label %110

67:                                               ; preds = %1
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = call i32 @sweepstep(i32* %68, %struct.TYPE_12__* %69, i32 128, i32* %71)
  store i32 %72, i32* %2, align 4
  br label %110

73:                                               ; preds = %1
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = call i32 @sweepstep(i32* %74, %struct.TYPE_12__* %75, i32 130, i32* null)
  store i32 %76, i32* %2, align 4
  br label %110

77:                                               ; preds = %1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @makewhite(%struct.TYPE_12__* %78, i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = call i32 @checkSizes(i32* %83, %struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i32 134, i32* %87, align 8
  store i32 0, i32* %2, align 4
  br label %110

88:                                               ; preds = %1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @KGC_EMERGENCY, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @runafewfinalizers(i32* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @GCFINALIZECOST, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %2, align 4
  br label %110

105:                                              ; preds = %93, %88
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 133, i32* %107, align 8
  store i32 0, i32* %2, align 4
  br label %110

108:                                              ; preds = %1
  %109 = call i32 @lua_assert(i32* null)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %105, %99, %77, %73, %67, %61, %49, %45, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_12__* @G(i32*) #1

declare dso_local i32 @restartcollection(%struct.TYPE_12__*) #1

declare dso_local i32 @lua_assert(i32*) #1

declare dso_local i32 @propagatemark(%struct.TYPE_12__*) #1

declare dso_local i32 @propagateall(%struct.TYPE_12__*) #1

declare dso_local i32 @atomic(i32*) #1

declare dso_local i32 @entersweep(i32*) #1

declare dso_local i32 @gettotalbytes(%struct.TYPE_12__*) #1

declare dso_local i32 @sweepstep(i32*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @makewhite(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @checkSizes(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @runafewfinalizers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
