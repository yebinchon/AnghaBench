; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_olefont.c_OLEFontImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_olefont.c_OLEFontImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, i32*, i32*, %struct.TYPE_21__, i32, i32, i64, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32 }

@OLEFontImpl_VTable = common dso_local global i32 0, align 4
@OLEFontImpl_IDispatch_VTable = common dso_local global i32 0, align 4
@OLEFontImpl_IPersistStream_VTable = common dso_local global i32 0, align 4
@OLEFontImpl_IConnectionPointContainer_VTable = common dso_local global i32 0, align 4
@OLEFontImpl_IPersistPropertyBag_VTable = common dso_local global i32 0, align 4
@OLEFontImpl_IPersistStreamInit_VTable = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@IID_IPropertyNotifySink = common dso_local global i32 0, align 4
@IID_IFontEventsDisp = common dso_local global i32 0, align 4
@ifont_cnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_23__*)* @OLEFontImpl_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @OLEFontImpl_Construct(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %5 = call i32 (...) @GetProcessHeap()
  %6 = call %struct.TYPE_22__* @HeapAlloc(i32 %5, i32 0, i32 128)
  store %struct.TYPE_22__* %6, %struct.TYPE_22__** %4, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %8 = icmp eq %struct.TYPE_22__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %2, align 8
  br label %123

11:                                               ; preds = %1
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store i32* @OLEFontImpl_VTable, i32** %14, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 13
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i32* @OLEFontImpl_IDispatch_VTable, i32** %17, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 12
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i32* @OLEFontImpl_IPersistStream_VTable, i32** %20, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 11
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store i32* @OLEFontImpl_IConnectionPointContainer_VTable, i32** %23, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i32* @OLEFontImpl_IPersistPropertyBag_VTable, i32** %26, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  store i32* @OLEFontImpl_IPersistStreamInit_VTable, i32** %29, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store i32 28, i32* %34, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strdupW(i32 %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 7
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @TRUE, align 4
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = call i32 (...) @get_dc()
  %84 = load i32, i32* @LOGPIXELSY, align 4
  %85 = call i32 @GetDeviceCaps(i32 %83, i32 %84)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  store i64 2540, i64* %89, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 3
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 4
  %96 = bitcast %struct.TYPE_21__* %95 to i32*
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = call i32 @CreateConnectionPoint(i32* %96, i32* @IID_IPropertyNotifySink, i32** %98)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 4
  %102 = bitcast %struct.TYPE_21__* %101 to i32*
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = call i32 @CreateConnectionPoint(i32* %102, i32* @IID_IFontEventsDisp, i32** %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %11
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %110, %11
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = call i32 @OLEFontImpl_Destroy(%struct.TYPE_22__* %116)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %2, align 8
  br label %123

118:                                              ; preds = %110
  %119 = call i32 @InterlockedIncrement(i32* @ifont_cnt)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %120)
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %122, %struct.TYPE_22__** %2, align 8
  br label %123

123:                                              ; preds = %118, %115, %9
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  ret %struct.TYPE_22__* %124
}

declare dso_local %struct.TYPE_22__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strdupW(i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @get_dc(...) #1

declare dso_local i32 @CreateConnectionPoint(i32*, i32*, i32**) #1

declare dso_local i32 @OLEFontImpl_Destroy(%struct.TYPE_22__*) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
