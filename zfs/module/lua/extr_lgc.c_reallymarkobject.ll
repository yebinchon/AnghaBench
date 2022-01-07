; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_reallymarkobject.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_reallymarkobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_20__, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*)* @reallymarkobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallymarkobject(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @white2gray(i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_19__* @gch(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %98 [
    i32 132, label %14
    i32 134, label %14
    i32 128, label %18
    i32 129, label %35
    i32 135, label %52
    i32 136, label %62
    i32 131, label %72
    i32 130, label %78
    i32 133, label %88
  ]

14:                                               ; preds = %2, %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @gco2ts(i32* %15)
  %17 = call i32 @sizestring(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %100

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.TYPE_23__* @gco2u(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @markobject(%struct.TYPE_21__* %23, i32* %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_23__* @gco2u(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @markobject(%struct.TYPE_21__* %26, i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call %struct.TYPE_23__* @gco2u(i32* %32)
  %34 = call i32 @sizeudata(%struct.TYPE_23__* %33)
  store i32 %34, i32* %5, align 4
  br label %100

35:                                               ; preds = %2
  %36 = load i32*, i32** %4, align 8
  %37 = call %struct.TYPE_22__* @gco2uv(i32* %36)
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %7, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @markvalue(%struct.TYPE_21__* %38, i32* %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = icmp ne i32* %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %108

51:                                               ; preds = %35
  store i32 16, i32* %5, align 4
  br label %100

52:                                               ; preds = %2
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call %struct.TYPE_17__* @gco2lcl(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  br label %108

62:                                               ; preds = %2
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call %struct.TYPE_18__* @gco2ccl(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store i32* %65, i32** %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  br label %108

72:                                               ; preds = %2
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @gco2t(i32* %73)
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = call i32 @linktable(i32 %74, i32** %76)
  br label %108

78:                                               ; preds = %2
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call %struct.TYPE_15__* @gco2th(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32* %81, i32** %84, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  br label %108

88:                                               ; preds = %2
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = call %struct.TYPE_16__* @gco2p(i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32* %91, i32** %94, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  br label %108

98:                                               ; preds = %2
  %99 = call i32 @lua_assert(i32 0)
  br label %108

100:                                              ; preds = %51, %18, %14
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @gray2black(i32* %101)
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %100, %98, %88, %78, %72, %62, %52, %50
  ret void
}

declare dso_local i32 @white2gray(i32*) #1

declare dso_local %struct.TYPE_19__* @gch(i32*) #1

declare dso_local i32 @sizestring(i32) #1

declare dso_local i32 @gco2ts(i32*) #1

declare dso_local %struct.TYPE_23__* @gco2u(i32*) #1

declare dso_local i32 @markobject(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @sizeudata(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @gco2uv(i32*) #1

declare dso_local i32 @markvalue(%struct.TYPE_21__*, i32*) #1

declare dso_local %struct.TYPE_17__* @gco2lcl(i32*) #1

declare dso_local %struct.TYPE_18__* @gco2ccl(i32*) #1

declare dso_local i32 @linktable(i32, i32**) #1

declare dso_local i32 @gco2t(i32*) #1

declare dso_local %struct.TYPE_15__* @gco2th(i32*) #1

declare dso_local %struct.TYPE_16__* @gco2p(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @gray2black(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
