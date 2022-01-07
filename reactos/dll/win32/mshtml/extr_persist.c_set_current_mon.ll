; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_persist.c_set_current_mon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_persist.c_set_current_mon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@BINDING_REPLACE = common dso_local global i32 0, align 4
@BINDING_REFRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Skipping travellog update for frame navigation.\0A\00", align 1
@IID_IUriContainer = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"GetIUri failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"CrateUri failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"GetDisplayName failed: %08x\0A\00", align 1
@SCRIPTMODE_GECKO = common dso_local global i32 0, align 4
@SCRIPTMODE_ACTIVESCRIPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_current_mon(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BINDING_REPLACE, align 4
  %23 = load i32, i32* @BINDING_REFRESH, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp eq %struct.TYPE_9__* %28, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i32 @notify_travellog_update(%struct.TYPE_10__* %39)
  br label %43

41:                                               ; preds = %27
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43, %20, %15
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @IMoniker_Release(i32* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %3
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %136

58:                                               ; preds = %51
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @IMoniker_AddRef(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = bitcast i32** %7 to i8**
  %66 = call i32 @IMoniker_QueryInterface(i32* %64, i32* @IID_IUriContainer, i8** %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @SUCCEEDED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @IUriContainer_GetIUri(i32* %71, i32** %8)
  store i32 %72, i32* %9, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @IUriContainer_Release(i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @S_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32* null, i32** %8, align 8
  br label %81

81:                                               ; preds = %78, %70
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32*, i32** %8, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %115, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @IMoniker_GetDisplayName(i32* %86, i32* null, i32* null, i32** %10)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @SUCCEEDED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %85
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @create_uri(i32* %92, i32 0, i32** %8)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @FAILED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = call i32 @set_current_uri(%struct.TYPE_9__* %100, i32* null)
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @SysAllocString(i32* %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @CoTaskMemFree(i32* %106)
  br label %136

108:                                              ; preds = %91
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @CoTaskMemFree(i32* %109)
  br label %114

111:                                              ; preds = %85
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %82
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @set_current_uri(%struct.TYPE_9__* %116, i32* %117)
  %119 = load i32*, i32** %8, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @IUri_Release(i32* %122)
  br label %124

124:                                              ; preds = %121, %115
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = call i64 @use_gecko_script(%struct.TYPE_9__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @SCRIPTMODE_GECKO, align 4
  br label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @SCRIPTMODE_ACTIVESCRIPT, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = call i32 @set_script_mode(%struct.TYPE_9__* %125, i32 %134)
  br label %136

136:                                              ; preds = %133, %97, %57
  ret void
}

declare dso_local i32 @notify_travellog_update(%struct.TYPE_10__*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @IMoniker_AddRef(i32*) #1

declare dso_local i32 @IMoniker_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUriContainer_GetIUri(i32*, i32**) #1

declare dso_local i32 @IUriContainer_Release(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IMoniker_GetDisplayName(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @create_uri(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @set_current_uri(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @SysAllocString(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

declare dso_local i32 @set_script_mode(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @use_gecko_script(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
