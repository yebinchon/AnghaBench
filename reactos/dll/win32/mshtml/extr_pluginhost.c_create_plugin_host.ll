; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_create_plugin_host.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_create_plugin_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_21__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, i32, %struct.TYPE_20__*, i32, i32*, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32 }

@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OleClientSiteVtbl = common dso_local global i32 0, align 4
@AdviseSinkExVtbl = common dso_local global i32 0, align 4
@PropertyNotifySinkVtbl = common dso_local global i32 0, align 4
@DispatchVtbl = common dso_local global i32 0, align 4
@OleInPlaceSiteExVtbl = common dso_local global i32 0, align 4
@OleControlSiteVtbl = common dso_local global i32 0, align 4
@BindHostVtbl = common dso_local global i32 0, align 4
@ServiceProviderVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_plugin_host(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @create_activex_object(%struct.TYPE_20__* %16, i32 %20, i32* %8)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @E_FAIL, align 4
  store i32 %25, i32* %3, align 4
  br label %84

26:                                               ; preds = %2
  %27 = call %struct.TYPE_18__* @heap_alloc_zero(i32 112)
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %6, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = icmp ne %struct.TYPE_18__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @IUnknown_Release(i32* %31)
  %33 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %26
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 13
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  store i32* @OleClientSiteVtbl, i32** %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 12
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  store i32* @AdviseSinkExVtbl, i32** %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 11
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  store i32* @PropertyNotifySinkVtbl, i32** %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  store i32* @DispatchVtbl, i32** %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 0
  store i32* @OleInPlaceSiteExVtbl, i32** %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  store i32* @OleControlSiteVtbl, i32** %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  store i32* @BindHostVtbl, i32** %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  store i32* @ServiceProviderVtbl, i32** %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %69, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %77, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %80, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = call i32 @initialize_plugin_object(%struct.TYPE_18__* %81)
  %83 = load i32, i32* @S_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %34, %30, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @create_activex_object(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local %struct.TYPE_18__* @heap_alloc_zero(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @initialize_plugin_object(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
