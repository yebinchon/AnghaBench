; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_info.c_MCIAVI_mciGetDevCaps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_info.c_MCIAVI_mciGetDevCaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32 }

@MCIERR_UNSUPPORTED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(%04x, %08X, %p)\0A\00", align 1
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_GETDEVCAPS_ITEM = common dso_local global i32 0, align 4
@MCIERR_MISSING_PARAMETER = common dso_local global i32 0, align 4
@MCI_TEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"MCI_GETDEVCAPS_DEVICE_TYPE !\0A\00", align 1
@MCI_DEVTYPE_DIGITAL_VIDEO = common dso_local global i32 0, align 4
@MCI_RESOURCE_RETURNED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"MCI_GETDEVCAPS_HAS_AUDIO !\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MCI_TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"MCI_GETDEVCAPS_HAS_VIDEO !\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MCI_GETDEVCAPS_USES_FILES !\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"MCI_GETDEVCAPS_COMPOUND_DEVICE !\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"MCI_GETDEVCAPS_CAN_EJECT !\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MCI_FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"MCI_GETDEVCAPS_CAN_PLAY !\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"MCI_GETDEVCAPS_CAN_RECORD !\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"MCI_GETDEVCAPS_CAN_SAVE !\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"MCI_DGV_GETDEVCAPS_CAN_REVERSE !\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"MCI_DGV_GETDEVCAPS_CAN_STRETCH !\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"MCI_DGV_GETDEVCAPS_CAN_LOCK !\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"MCI_DGV_GETDEVCAPS_CAN_FREEZE !\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"MCI_DGV_GETDEVCAPS_CAN_STRETCH_INPUT !\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"MCI_DGV_GETDEVCAPS_HAS_STILL !\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"MCI_DGV_GETDEVCAPS_CAN_TEST !\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"MCI_DGV_GETDEVCAPS_PALETTES !\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Unknown capability (%08x) !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MCIAVI_mciGetDevCaps(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_5__* @MCIAVI_mciGetOpenDev(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i32, i32* @MCIERR_UNSUPPORTED_FUNCTION, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, %struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %20, i32* %4, align 4
  br label %198

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %25, i32* %4, align 4
  br label %198

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MCI_GETDEVCAPS_ITEM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @MCIERR_MISSING_PARAMETER, align 4
  store i32 %32, i32* %4, align 4
  br label %198

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MCI_TEST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %198

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @EnterCriticalSection(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MCI_GETDEVCAPS_ITEM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %193

47:                                               ; preds = %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %187 [
    i32 131, label %51
    i32 130, label %59
    i32 129, label %67
    i32 128, label %75
    i32 132, label %83
    i32 136, label %91
    i32 135, label %99
    i32 134, label %107
    i32 133, label %115
    i32 142, label %123
    i32 141, label %131
    i32 143, label %139
    i32 144, label %147
    i32 140, label %155
    i32 138, label %163
    i32 139, label %171
    i32 137, label %179
  ]

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @MCI_DEVTYPE_DIGITAL_VIDEO, align 4
  %54 = load i32, i32* @MCI_DEVTYPE_DIGITAL_VIDEO, align 4
  %55 = call i8* @MAKEMCIRESOURCE(i32 %53, i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %58, i32* %9, align 4
  br label %192

59:                                               ; preds = %47
  %60 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32, i32* @MCI_TRUE, align 4
  %63 = call i8* @MAKEMCIRESOURCE(i32 %61, i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %66, i32* %9, align 4
  br label %192

67:                                               ; preds = %47
  %68 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @TRUE, align 4
  %70 = load i32, i32* @MCI_TRUE, align 4
  %71 = call i8* @MAKEMCIRESOURCE(i32 %69, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %74, i32* %9, align 4
  br label %192

75:                                               ; preds = %47
  %76 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32, i32* @MCI_TRUE, align 4
  %79 = call i8* @MAKEMCIRESOURCE(i32 %77, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %82, i32* %9, align 4
  br label %192

83:                                               ; preds = %47
  %84 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* @TRUE, align 4
  %86 = load i32, i32* @MCI_TRUE, align 4
  %87 = call i8* @MAKEMCIRESOURCE(i32 %85, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %90, i32* %9, align 4
  br label %192

91:                                               ; preds = %47
  %92 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @FALSE, align 4
  %94 = load i32, i32* @MCI_FALSE, align 4
  %95 = call i8* @MAKEMCIRESOURCE(i32 %93, i32 %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %98, i32* %9, align 4
  br label %192

99:                                               ; preds = %47
  %100 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @TRUE, align 4
  %102 = load i32, i32* @MCI_TRUE, align 4
  %103 = call i8* @MAKEMCIRESOURCE(i32 %101, i32 %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %106, i32* %9, align 4
  br label %192

107:                                              ; preds = %47
  %108 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %109 = load i32, i32* @FALSE, align 4
  %110 = load i32, i32* @MCI_FALSE, align 4
  %111 = call i8* @MAKEMCIRESOURCE(i32 %109, i32 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %114, i32* %9, align 4
  br label %192

115:                                              ; preds = %47
  %116 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* @FALSE, align 4
  %118 = load i32, i32* @MCI_FALSE, align 4
  %119 = call i8* @MAKEMCIRESOURCE(i32 %117, i32 %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %122, i32* %9, align 4
  br label %192

123:                                              ; preds = %47
  %124 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %125 = load i32, i32* @FALSE, align 4
  %126 = load i32, i32* @MCI_FALSE, align 4
  %127 = call i8* @MAKEMCIRESOURCE(i32 %125, i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %130, i32* %9, align 4
  br label %192

131:                                              ; preds = %47
  %132 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %133 = load i32, i32* @FALSE, align 4
  %134 = load i32, i32* @MCI_FALSE, align 4
  %135 = call i8* @MAKEMCIRESOURCE(i32 %133, i32 %134)
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %138, i32* %9, align 4
  br label %192

139:                                              ; preds = %47
  %140 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %141 = load i32, i32* @FALSE, align 4
  %142 = load i32, i32* @MCI_FALSE, align 4
  %143 = call i8* @MAKEMCIRESOURCE(i32 %141, i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %146, i32* %9, align 4
  br label %192

147:                                              ; preds = %47
  %148 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %149 = load i32, i32* @FALSE, align 4
  %150 = load i32, i32* @MCI_FALSE, align 4
  %151 = call i8* @MAKEMCIRESOURCE(i32 %149, i32 %150)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %154, i32* %9, align 4
  br label %192

155:                                              ; preds = %47
  %156 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %157 = load i32, i32* @FALSE, align 4
  %158 = load i32, i32* @MCI_FALSE, align 4
  %159 = call i8* @MAKEMCIRESOURCE(i32 %157, i32 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %162, i32* %9, align 4
  br label %192

163:                                              ; preds = %47
  %164 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %165 = load i32, i32* @FALSE, align 4
  %166 = load i32, i32* @MCI_FALSE, align 4
  %167 = call i8* @MAKEMCIRESOURCE(i32 %165, i32 %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %170, i32* %9, align 4
  br label %192

171:                                              ; preds = %47
  %172 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %173 = load i32, i32* @TRUE, align 4
  %174 = load i32, i32* @MCI_TRUE, align 4
  %175 = call i8* @MAKEMCIRESOURCE(i32 %173, i32 %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %178, i32* %9, align 4
  br label %192

179:                                              ; preds = %47
  %180 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %181 = load i32, i32* @FALSE, align 4
  %182 = load i32, i32* @MCI_FALSE, align 4
  %183 = call i8* @MAKEMCIRESOURCE(i32 %181, i32 %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %186, i32* %9, align 4
  br label %192

187:                                              ; preds = %47
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %187, %179, %171, %163, %155, %147, %139, %131, %123, %115, %107, %99, %91, %83, %75, %67, %59, %51
  br label %193

193:                                              ; preds = %192, %39
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = call i32 @LeaveCriticalSection(i32* %195)
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %193, %38, %31, %24, %19
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.TYPE_5__* @MCIAVI_mciGetOpenDev(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i8* @MAKEMCIRESOURCE(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
