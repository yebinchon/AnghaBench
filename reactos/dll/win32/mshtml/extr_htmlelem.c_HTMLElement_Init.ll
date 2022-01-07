; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLElement_Init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLElement_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32* }
%struct.TYPE_22__ = type { %struct.TYPE_14__, %struct.TYPE_19__, i32, i32*, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { %struct.TYPE_20__*, i32*, i32*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }

@HTMLElementVtbl = common dso_local global i32 0, align 4
@HTMLElement2Vtbl = common dso_local global i32 0, align 4
@HTMLElement3Vtbl = common dso_local global i32 0, align 4
@HTMLElement4Vtbl = common dso_local global i32 0, align 4
@HTMLElement_dispex_vtbl = common dso_local global i32 0, align 4
@HTMLElement_dispex = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTMLElement_Init(%struct.TYPE_22__* %0, i32* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %8, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32* @HTMLElementVtbl, i32** %11, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32* @HTMLElement2Vtbl, i32** %14, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i32* @HTMLElement3Vtbl, i32** %17, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i32* @HTMLElement4Vtbl, i32** %20, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %22 = icmp ne %struct.TYPE_21__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  store i32* @HTMLElement_dispex_vtbl, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %23, %4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = bitcast %struct.TYPE_19__* %37 to i32*
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = icmp ne %struct.TYPE_21__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi %struct.TYPE_21__* [ %42, %41 ], [ @HTMLElement_dispex, %43 ]
  %46 = call i32 @init_dispex(i32* %35, i32* %38, %struct.TYPE_21__* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @HTMLDOMNode_Init(i32* %50, %struct.TYPE_14__* %52, i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %49, %44
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  store i32* %68, i32** %71, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = bitcast %struct.TYPE_19__* %75 to i32*
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ConnectionPointContainer_Init(i32* %73, i32* %76, i32 %82)
  ret void
}

declare dso_local i32 @init_dispex(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @HTMLDOMNode_Init(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ConnectionPointContainer_Init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
