; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciwave/extr_mciwave.c_WAVE_mciOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciwave/extr_mciwave.c_WAVE_mciOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32*, i32, i64, i32, i32*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%04X, %08X, %p)\0A\00", align 1
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_OPEN_SHAREABLE = common dso_local global i32 0, align 4
@MCIERR_UNSUPPORTED_FUNCTION = common dso_local global i32 0, align 4
@MCIERR_DEVICE_OPEN = common dso_local global i32 0, align 4
@WAVE_MAPPER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MCI_MODE_NOT_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"wDevID=%04X (lpParams->wDeviceID=%08X)\0A\00", align 1
@MCI_OPEN_ELEMENT = common dso_local global i32 0, align 4
@MCI_OPEN_ELEMENT_ID = common dso_local global i32 0, align 4
@MCIERR_UNRECOGNIZED_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"hFile=%p\0A\00", align 1
@MCI_MODE_STOP = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_8__*)* @WAVE_mciOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WAVE_mciOpen(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @mciGetDriverData(i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15, %struct.TYPE_8__* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %21, i32* %4, align 4
  br label %145

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %26, i32* %4, align 4
  br label %145

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MCI_OPEN_SHAREABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @MCIERR_UNSUPPORTED_FUNCTION, align 4
  store i32 %33, i32* %4, align 4
  br label %145

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @MCIERR_DEVICE_OPEN, align 4
  store i32 %40, i32* %4, align 4
  br label %145

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* @WAVE_MAPPER, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 10
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @MCI_MODE_NOT_READY, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 6
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = call i32 @WAVE_mciDefaultFmt(%struct.TYPE_7__* %65)
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @MCI_OPEN_ELEMENT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %41
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @MCI_OPEN_ELEMENT_ID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @MCIERR_UNRECOGNIZED_COMMAND, align 4
  store i32 %86, i32* %8, align 4
  br label %93

87:                                               ; preds = %80
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @WAVE_mciOpenFile(%struct.TYPE_7__* %88, i32 %91)
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %87, %85
  br label %94

94:                                               ; preds = %93, %41
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %94
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @MCI_MODE_STOP, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @MCI_NOTIFY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %117 = call i32 @WAVE_mciNotify(i32 %114, %struct.TYPE_7__* %115, i32 %116)
  br label %118

118:                                              ; preds = %111, %101
  br label %143

119:                                              ; preds = %94
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @mmioClose(i64 %131, i32 0)
  br label %133

133:                                              ; preds = %128, %119
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = call i32 (...) @GetProcessHeap()
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @HeapFree(i32 %136, i32 0, i32* %139)
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %133, %118
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %39, %32, %25, %20
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @mciGetDriverData(i32) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @WAVE_mciDefaultFmt(%struct.TYPE_7__*) #1

declare dso_local i32 @WAVE_mciOpenFile(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @WAVE_mciNotify(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mmioClose(i64, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
