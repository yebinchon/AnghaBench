; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_detach_plugin_host.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_detach_plugin_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i64, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@IID_IOleObject = common dso_local global i32 0, align 4
@OLECLOSE_NOSAVE = common dso_local global i32 0, align 4
@IID_IConnectionPointContainer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detach_plugin_host(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %141

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @IOleInPlaceObject_UIDeactivate(i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @IOleInPlaceObject_InPlaceDeactivate(i64 %32)
  br label %34

34:                                               ; preds = %29, %14
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32** %4 to i8**
  %44 = call i32 @IUnknown_QueryInterface(i32* %42, i32* @IID_IOleObject, i8** %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @SUCCEEDED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @OLECLOSE_NOSAVE, align 4
  %56 = call i32 @IOleObject_Close(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @IOleObject_SetClientSite(i32* %58, i32* null)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @IOleObject_Release(i32* %60)
  br label %62

62:                                               ; preds = %57, %39
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %118

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = bitcast i32** %5 to i8**
  %79 = call i32 @IUnknown_QueryInterface(i32* %77, i32* @IID_IConnectionPointContainer, i8** %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i64 @SUCCEEDED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %68
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = call i32 @IConnectionPointContainer_FindConnectionPoint(i32* %84, i32* %88, i32** %6)
  store i32 %89, i32* %3, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @IConnectionPointContainer_Release(i32* %90)
  %92 = load i32, i32* %3, align 4
  %93 = call i64 @SUCCEEDED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %83
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @IConnectionPoint_Unadvise(i32* %96, i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @IConnectionPoint_Release(i32* %103)
  br label %105

105:                                              ; preds = %95, %83
  br label %106

106:                                              ; preds = %105, %68
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = call i32 @IDispatch_Release(i32* %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %117, align 8
  br label %118

118:                                              ; preds = %106, %63
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = call i32 @release_plugin_ifaces(%struct.TYPE_9__* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = icmp ne %struct.TYPE_8__* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %131, align 8
  br label %132

132:                                              ; preds = %125, %118
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = call i32 @list_remove(i32* %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = call i32 @list_init(i32* %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i32* null, i32** %140, align 8
  br label %141

141:                                              ; preds = %132, %13
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @IOleInPlaceObject_UIDeactivate(i64) #1

declare dso_local i32 @IOleInPlaceObject_InPlaceDeactivate(i64) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IOleObject_Close(i32*, i32) #1

declare dso_local i32 @IOleObject_SetClientSite(i32*, i32*) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IConnectionPointContainer_FindConnectionPoint(i32*, i32*, i32**) #1

declare dso_local i32 @IConnectionPointContainer_Release(i32*) #1

declare dso_local i32 @IConnectionPoint_Unadvise(i32*, i32) #1

declare dso_local i32 @IConnectionPoint_Release(i32*) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @release_plugin_ifaces(%struct.TYPE_9__*) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
