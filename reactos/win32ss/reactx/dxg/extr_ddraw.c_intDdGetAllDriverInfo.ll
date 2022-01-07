; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/reactx/dxg/extr_ddraw.c_intDdGetAllDriverInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/reactx/dxg/extr_ddraw.c_intDdGetAllDriverInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@DDHALINFO_GETDRIVERINFOSET = common dso_local global i32 0, align 4
@GUID_KernelCaps = common dso_local global i32 0, align 4
@GUID_KernelCallbacks = common dso_local global i32 0, align 4
@GUID_D3DCallbacks3 = common dso_local global i32 0, align 4
@EDDDGBL_D3DCALLBACKS3 = common dso_local global i32 0, align 4
@GUID_ColorControlCallbacks = common dso_local global i32 0, align 4
@EDDDGBL_COLORCONTROLCALLBACKS = common dso_local global i32 0, align 4
@GUID_MiscellaneousCallbacks = common dso_local global i32 0, align 4
@EDDDGBL_MISCCALLBACKS = common dso_local global i32 0, align 4
@GUID_Miscellaneous2Callbacks = common dso_local global i32 0, align 4
@EDDDGBL_MISC2CALLBACKS = common dso_local global i32 0, align 4
@GUID_NTCallbacks = common dso_local global i32 0, align 4
@EDDDGBL_NTCALLBACKS = common dso_local global i32 0, align 4
@GUID_DDMoreCaps = common dso_local global i32 0, align 4
@EDDDGBL_DDMORECAPS = common dso_local global i32 0, align 4
@GUID_NTPrivateDriverCaps = common dso_local global i32 0, align 4
@EDDDGBL_PRIVATEDRIVERCAPS = common dso_local global i32 0, align 4
@GUID_MotionCompCallbacks = common dso_local global i32 0, align 4
@EDDDGBL_MOTIONCOMPCALLBACKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intDdGetAllDriverInfo(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 11
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %132

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DDHALINFO_GETDRIVERINFOSET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %132

17:                                               ; preds = %9
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32, i32* @GUID_KernelCaps, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 10
  %22 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %18, i32 %19, i32* %21, i32 4, i32 0)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load i32, i32* @GUID_KernelCallbacks, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 9
  %27 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %23, i32 %24, i32* %26, i32 4, i32 0)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load i32, i32* @GUID_D3DCallbacks3, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 8
  %32 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %28, i32 %29, i32* %31, i32 4, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load i32, i32* @EDDDGBL_D3DCALLBACKS3, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %17
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = load i32, i32* @GUID_ColorControlCallbacks, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 7
  %45 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %41, i32 %42, i32* %44, i32 4, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* @EDDDGBL_COLORCONTROLCALLBACKS, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = load i32, i32* @GUID_MiscellaneousCallbacks, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  %58 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %54, i32 %55, i32* %57, i32 4, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @EDDDGBL_MISCCALLBACKS, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = load i32, i32* @GUID_Miscellaneous2Callbacks, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %67, i32 %68, i32* %70, i32 4, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @EDDDGBL_MISC2CALLBACKS, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = load i32, i32* @GUID_NTCallbacks, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %80, i32 %81, i32* %83, i32 4, i32 0)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @EDDDGBL_NTCALLBACKS, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = load i32, i32* @GUID_DDMoreCaps, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %93, i32 %94, i32* %96, i32 4, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @EDDDGBL_DDMORECAPS, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = load i32, i32* @GUID_NTPrivateDriverCaps, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %106, i32 %107, i32* %109, i32 4, i32 0)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load i32, i32* @EDDDGBL_PRIVATEDRIVERCAPS, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %105
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = load i32, i32* @GUID_MotionCompCallbacks, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = call i64 @intDdGetDriverInfo(%struct.TYPE_6__* %119, i32 %120, i32* %122, i32 4, i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32, i32* @EDDDGBL_MOTIONCOMPCALLBACKS, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %125, %118
  br label %132

132:                                              ; preds = %131, %9, %1
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @intDdGetDriverInfo(%struct.TYPE_6__*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
