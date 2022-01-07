; ModuleID = '/home/carl/AnghaBench/reactos/drivers/storage/floppy_new/extr_floppy.c_DetermineDriveType.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/storage/floppy_new/extr_floppy.c_DetermineDriveType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i32*, i64 }

@FALSE = common dso_local global i32 0, align 4
@DRIVE_TYPE_NONE = common dso_local global i64 0, align 8
@NonPagedPoolNxCacheAligned = common dso_local global i32 0, align 4
@MODE_DATA_SIZE = common dso_local global i32 0, align 4
@MODE_PAGE_FLEXIBILE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MODE_FLEXIBLE_DISK_PAGE = common dso_local global i32 0, align 4
@StartWritePrecom = common dso_local global i32 0, align 4
@NUMBER_OF_DRIVE_MEDIA_COMBINATIONS = common dso_local global i64 0, align 8
@DriveMediaConstants = common dso_local global %struct.TYPE_17__* null, align 8
@NUMBER_OF_DRIVE_TYPES = common dso_local global i64 0, align 8
@DriveMediaLimits = common dso_local global %struct.TYPE_16__* null, align 8
@NonPagedPoolCacheAligned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DetermineDriveType(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %13, align 4
  %24 = call i32 (...) @PAGED_CODE()
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DRIVE_TYPE_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %2, align 8
  br label %184

34:                                               ; preds = %1
  %35 = load i32, i32* @NonPagedPoolNxCacheAligned, align 4
  %36 = load i32, i32* @MODE_DATA_SIZE, align 4
  %37 = call i32* @ExAllocatePool(i32 %35, i32 %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @DRIVE_TYPE_NONE, align 8
  store i64 %41, i64* %2, align 8
  br label %184

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @MODE_DATA_SIZE, align 4
  %45 = call i32 @RtlZeroMemory(i32* %43, i32 %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @MODE_DATA_SIZE, align 4
  %49 = load i32, i32* @MODE_PAGE_FLEXIBILE, align 4
  %50 = call i64 @ClassModeSense(%struct.TYPE_15__* %46, i32* %47, i32 %48, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ult i64 %51, 4
  br i1 %52, label %53, label %66

53:                                               ; preds = %42
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @MODE_DATA_SIZE, align 4
  %57 = load i32, i32* @MODE_PAGE_FLEXIBILE, align 4
  %58 = call i64 @ClassModeSense(%struct.TYPE_15__* %54, i32* %55, i32 %56, i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ult i64 %59, 4
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @ExFreePool(i32* %62)
  %64 = load i64, i64* @DRIVE_TYPE_NONE, align 8
  store i64 %64, i64* %2, align 8
  br label %184

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32*, i32** %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* @MODE_PAGE_FLEXIBILE, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = call %struct.TYPE_12__* @ClassFindModePage(i32* %67, i64 %68, i32 %69, i32 %70)
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %7, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %180

74:                                               ; preds = %66
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 2
  %79 = load i32, i32* @MODE_FLEXIBLE_DISK_PAGE, align 4
  %80 = load i32, i32* @StartWritePrecom, align 4
  %81 = call i64 @offsetof(i32 %79, i32 %80)
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %180

83:                                               ; preds = %74
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %10, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %12, align 4
  store i64 0, i64* %9, align 8
  br label %105

105:                                              ; preds = %157, %83
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @NUMBER_OF_DRIVE_MEDIA_COMBINATIONS, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %160

109:                                              ; preds = %105
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** @DriveMediaConstants, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %156

117:                                              ; preds = %109
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** @DriveMediaConstants, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %156

125:                                              ; preds = %117
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** @DriveMediaConstants, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %156

133:                                              ; preds = %125
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @ExFreePool(i32* %134)
  store i64 0, i64* %8, align 8
  br label %136

136:                                              ; preds = %151, %133
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* @NUMBER_OF_DRIVE_TYPES, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DriveMediaLimits, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %9, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i64, i64* %8, align 8
  store i64 %149, i64* %2, align 8
  br label %184

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %8, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %8, align 8
  br label %136

154:                                              ; preds = %136
  %155 = load i64, i64* @DRIVE_TYPE_NONE, align 8
  store i64 %155, i64* %2, align 8
  br label %184

156:                                              ; preds = %125, %117, %109
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %9, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %9, align 8
  br label %105

160:                                              ; preds = %105
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %12, align 4
  %165 = icmp sge i32 %164, 256
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sdiv i32 %169, 3
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %12, align 4
  %173 = load i64, i64* %10, align 8
  %174 = mul nsw i64 %173, 3
  store i64 %174, i64* %10, align 8
  br label %179

175:                                              ; preds = %163, %160
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @ExFreePool(i32* %176)
  %178 = load i64, i64* @DRIVE_TYPE_NONE, align 8
  store i64 %178, i64* %2, align 8
  br label %184

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %74, %66
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @ExFreePool(i32* %181)
  %183 = load i64, i64* @DRIVE_TYPE_NONE, align 8
  store i64 %183, i64* %2, align 8
  br label %184

184:                                              ; preds = %180, %175, %154, %148, %61, %40, %30
  %185 = load i64, i64* %2, align 8
  ret i64 %185
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local i32* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i64 @ClassModeSense(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

declare dso_local %struct.TYPE_12__* @ClassFindModePage(i32*, i64, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
