; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Status.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_STATUS_ITEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dwItem = %x\0A\00", align 1
@IOCTL_CDROM_CURRENT_POSITION = common dso_local global i8* null, align 8
@IOCTL_CDROM_READ_Q_CHANNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"CURRENT_TRACK=%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"MCI_TRACK #%u LENGTH=??? !\0A\00", align 1
@MCIERR_OUTOFRANGE = common dso_local global i32 0, align 4
@MCI_FORMAT_TMSF = common dso_local global i32 0, align 4
@MCI_FORMAT_MSF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"LENGTH=%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MCI_STATUS_MODE=%08lX\0A\00", align 1
@MCI_RESOURCE_RETURNED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MCI_FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MCI_TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"MCI_STATUS_MEDIA_PRESENT =%c!\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"MCI_STATUS_NUMBER_OF_TRACKS = %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"get MCI_STATUS_START !\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"get MCI_TRACK #%u !\0A\00", align 1
@MCIERR_FLAGS_NOT_COMPATIBLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"MCI_STATUS_POSITION=%08lX\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"MCI_STATUS_READY !\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"MCI_STATUS_READY=%u!\0A\00", align 1
@MCI_FORMAT_RETURN_BASE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"MCI_STATUS_TIME_FORMAT=%08x!\0A\00", align 1
@MCIERR_MISSING_PARAMETER = common dso_local global i32 0, align 4
@MCI_CDA_TRACK_OTHER = common dso_local global i32 0, align 4
@MCI_CDA_TRACK_AUDIO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"MCI_CDA_STATUS_TYPE_TRACK[%d]=%ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"unknown command %08X !\0A\00", align 1
@MCIERR_UNSUPPORTED_FUNCTION = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_23__*)* @MCICDA_Status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_Status(i32 %0, i32 %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__, align 8
  %11 = alloca %struct.TYPE_22__, align 4
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_21__* @MCICDA_GetOpenDrv(i32 %14)
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, %struct.TYPE_23__* %18)
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %21 = icmp eq %struct.TYPE_23__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %23, i32* %4, align 4
  br label %460

24:                                               ; preds = %3
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = icmp eq %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %28, i32* %4, align 4
  br label %460

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MCI_STATUS_ITEM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %440

34:                                               ; preds = %29
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %433 [
    i32 137, label %42
    i32 136, label %64
    i32 134, label %164
    i32 135, label %184
    i32 133, label %210
    i32 132, label %239
    i32 131, label %329
    i32 129, label %354
    i32 4001, label %373
    i32 140, label %373
  ]

42:                                               ; preds = %34
  %43 = load i8*, i8** @IOCTL_CDROM_CURRENT_POSITION, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IOCTL_CDROM_READ_Q_CHANNEL, align 4
  %49 = call i32 @device_io(i32 %47, i32 %48, %struct.TYPE_25__* %10, i32 8, %struct.TYPE_22__* %11, i32 8, i32* %13, i32* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %53 = call i32 @MCICDA_GetError(%struct.TYPE_21__* %52)
  store i32 %53, i32* %4, align 4
  br label %460

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %439

64:                                               ; preds = %34
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = call i32 @MCICDA_ReadTOC(%struct.TYPE_21__* %65, %struct.TYPE_24__* %12, i32* %13)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %70 = call i32 @MCICDA_GetError(%struct.TYPE_21__* %69)
  store i32 %70, i32* %4, align 4
  br label %460

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %123

75:                                               ; preds = %71
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %75
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86, %75
  %94 = load i32, i32* @MCIERR_OUTOFRANGE, align 4
  store i32 %94, i32* %4, align 4
  br label %460

95:                                               ; preds = %86
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  %100 = call i8* @FRAME_OF_TOC(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %12, i64 %99)
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i8* @FRAME_OF_TOC(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %12, i64 %103)
  %105 = ptrtoint i8* %100 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %95
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %117, %95
  br label %138

123:                                              ; preds = %71
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  %127 = call i8* @FRAME_OF_TOC(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %12, i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @FRAME_OF_TOC(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %12, i64 %129)
  %131 = ptrtoint i8* %127 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sub nsw i64 %133, 1
  %135 = trunc i64 %134 to i32
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %123, %122
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MCI_FORMAT_TMSF, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @MCI_FORMAT_MSF, align 4
  br label %151

147:                                              ; preds = %138
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  br label %151

151:                                              ; preds = %147, %145
  %152 = phi i32 [ %146, %145 ], [ %150, %147 ]
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @MCICDA_CalcTime(%struct.TYPE_21__* %139, i32 %152, i32 %155, i32* %9)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  br label %439

164:                                              ; preds = %34
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %166 = call i32 @MCICDA_GetStatus(%struct.TYPE_21__* %165)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @MAKEMCIRESOURCE(i32 %175, i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %183, i32* %9, align 4
  br label %439

184:                                              ; preds = %34
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %186 = call i32 @MCICDA_GetStatus(%struct.TYPE_21__* %185)
  %187 = icmp eq i32 %186, 138
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* @FALSE, align 4
  %190 = load i32, i32* @MCI_FALSE, align 4
  %191 = call i8* @MAKEMCIRESOURCE(i32 %189, i32 %190)
  br label %196

192:                                              ; preds = %184
  %193 = load i32, i32* @TRUE, align 4
  %194 = load i32, i32* @MCI_TRUE, align 4
  %195 = call i8* @MAKEMCIRESOURCE(i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %188
  %197 = phi i8* [ %191, %188 ], [ %195, %192 ]
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @LOWORD(i32 %203)
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 89, i32 78
  %208 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %209, i32* %9, align 4
  br label %439

210:                                              ; preds = %34
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %212 = call i32 @MCICDA_ReadTOC(%struct.TYPE_21__* %211, %struct.TYPE_24__* %12, i32* %13)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %216 = call i32 @MCICDA_GetError(%struct.TYPE_21__* %215)
  store i32 %216, i32* %4, align 4
  br label %460

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = sub i64 %219, %221
  %223 = add i64 %222, 1
  %224 = trunc i64 %223 to i32
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %229)
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %238

235:                                              ; preds = %217
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %237 = call i32 @MCICDA_GetError(%struct.TYPE_21__* %236)
  store i32 %237, i32* %4, align 4
  br label %460

238:                                              ; preds = %217
  br label %439

239:                                              ; preds = %34
  %240 = load i32, i32* %6, align 4
  %241 = and i32 %240, 130
  switch i32 %241, label %311 [
    i32 130, label %242
    i32 128, label %257
    i32 0, label %292
  ]

242:                                              ; preds = %239
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %244 = call i32 @MCICDA_ReadTOC(%struct.TYPE_21__* %243, %struct.TYPE_24__* %12, i32* %13)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %248 = call i32 @MCICDA_GetError(%struct.TYPE_21__* %247)
  store i32 %248, i32* %4, align 4
  br label %460

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = call i8* @FRAME_OF_TOC(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %12, i64 %251)
  %253 = ptrtoint i8* %252 to i32
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %313

257:                                              ; preds = %239
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %259 = call i32 @MCICDA_ReadTOC(%struct.TYPE_21__* %258, %struct.TYPE_24__* %12, i32* %13)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %257
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %263 = call i32 @MCICDA_GetError(%struct.TYPE_21__* %262)
  store i32 %263, i32* %4, align 4
  br label %460

264:                                              ; preds = %257
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ult i64 %267, %269
  br i1 %270, label %278, label %271

271:                                              ; preds = %264
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ugt i64 %274, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %271, %264
  %279 = load i32, i32* @MCIERR_OUTOFRANGE, align 4
  store i32 %279, i32* %4, align 4
  br label %460

280:                                              ; preds = %271
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = call i8* @FRAME_OF_TOC(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %12, i64 %283)
  %285 = ptrtoint i8* %284 to i32
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %290)
  br label %313

292:                                              ; preds = %239
  %293 = load i8*, i8** @IOCTL_CDROM_CURRENT_POSITION, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  store i8* %293, i8** %294, align 8
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @IOCTL_CDROM_READ_Q_CHANNEL, align 4
  %299 = call i32 @device_io(i32 %297, i32 %298, %struct.TYPE_25__* %10, i32 8, %struct.TYPE_22__* %11, i32 8, i32* %13, i32* null)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %292
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %303 = call i32 @MCICDA_GetError(%struct.TYPE_21__* %302)
  store i32 %303, i32* %4, align 4
  br label %460

304:                                              ; preds = %292
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @FRAME_OF_ADDR(i32 %307)
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  br label %313

311:                                              ; preds = %239
  %312 = load i32, i32* @MCIERR_FLAGS_NOT_COMPATIBLE, align 4
  store i32 %312, i32* %4, align 4
  br label %460

313:                                              ; preds = %304, %280, %249
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i8* @MCICDA_CalcTime(%struct.TYPE_21__* %314, i32 %317, i32 %320, i32* %9)
  %322 = ptrtoint i8* %321 to i32
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %327)
  br label %439

329:                                              ; preds = %34
  %330 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %332 = call i32 @MCICDA_GetStatus(%struct.TYPE_21__* %331)
  switch i32 %332, label %340 [
    i32 139, label %333
    i32 138, label %333
  ]

333:                                              ; preds = %329, %329
  %334 = load i32, i32* @FALSE, align 4
  %335 = load i32, i32* @MCI_FALSE, align 4
  %336 = call i8* @MAKEMCIRESOURCE(i32 %334, i32 %335)
  %337 = ptrtoint i8* %336 to i32
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  br label %347

340:                                              ; preds = %329
  %341 = load i32, i32* @TRUE, align 4
  %342 = load i32, i32* @MCI_TRUE, align 4
  %343 = call i8* @MAKEMCIRESOURCE(i32 %341, i32 %342)
  %344 = ptrtoint i8* %343 to i32
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 1
  store i32 %344, i32* %346, align 4
  br label %347

347:                                              ; preds = %340, %333
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @LOWORD(i32 %350)
  %352 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %351)
  %353 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %353, i32* %9, align 4
  br label %439

354:                                              ; preds = %34
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @MCI_FORMAT_RETURN_BASE, align 4
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %358, %361
  %363 = call i8* @MAKEMCIRESOURCE(i32 %357, i32 %362)
  %364 = ptrtoint i8* %363 to i32
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @LOWORD(i32 %369)
  %371 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* @MCI_RESOURCE_RETURNED, align 4
  store i32 %372, i32* %9, align 4
  br label %439

373:                                              ; preds = %34, %34
  %374 = load i32, i32* %6, align 4
  %375 = and i32 %374, 128
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %373
  %378 = load i32, i32* @MCIERR_MISSING_PARAMETER, align 4
  store i32 %378, i32* %9, align 4
  br label %425

379:                                              ; preds = %373
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %381 = call i32 @MCICDA_ReadTOC(%struct.TYPE_21__* %380, %struct.TYPE_24__* %12, i32* %13)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %379
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %385 = call i32 @MCICDA_GetError(%struct.TYPE_21__* %384)
  store i32 %385, i32* %4, align 4
  br label %460

386:                                              ; preds = %379
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = icmp ult i64 %389, %391
  br i1 %392, label %400, label %393

393:                                              ; preds = %386
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = icmp ugt i64 %396, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %393, %386
  %401 = load i32, i32* @MCIERR_OUTOFRANGE, align 4
  store i32 %401, i32* %9, align 4
  br label %424

402:                                              ; preds = %393
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %404 = load %struct.TYPE_19__*, %struct.TYPE_19__** %403, align 8
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = sub i64 %407, %409
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %404, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = and i32 %413, 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %402
  %417 = load i32, i32* @MCI_CDA_TRACK_OTHER, align 4
  br label %420

418:                                              ; preds = %402
  %419 = load i32, i32* @MCI_CDA_TRACK_AUDIO, align 4
  br label %420

420:                                              ; preds = %418, %416
  %421 = phi i32 [ %417, %416 ], [ %419, %418 ]
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i32 0, i32 1
  store i32 %421, i32* %423, align 4
  br label %424

424:                                              ; preds = %420, %400
  br label %425

425:                                              ; preds = %424, %377
  %426 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %426, i32 0, i32 2
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i64 %428, i32 %431)
  br label %439

433:                                              ; preds = %34
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %436)
  %438 = load i32, i32* @MCIERR_UNSUPPORTED_FUNCTION, align 4
  store i32 %438, i32* %4, align 4
  br label %460

439:                                              ; preds = %425, %354, %347, %313, %238, %196, %164, %151, %54
  br label %442

440:                                              ; preds = %29
  %441 = load i32, i32* @MCIERR_MISSING_PARAMETER, align 4
  store i32 %441, i32* %4, align 4
  br label %460

442:                                              ; preds = %439
  %443 = load i32, i32* %6, align 4
  %444 = load i32, i32* @MCI_NOTIFY, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %458

447:                                              ; preds = %442
  %448 = load i32, i32* %9, align 4
  %449 = call i64 @HRESULT_CODE(i32 %448)
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %458

451:                                              ; preds = %447
  %452 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %456 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %457 = call i32 @MCICDA_Notify(i32 %454, %struct.TYPE_21__* %455, i32 %456)
  br label %458

458:                                              ; preds = %451, %447, %442
  %459 = load i32, i32* %9, align 4
  store i32 %459, i32* %4, align 4
  br label %460

460:                                              ; preds = %458, %440, %433, %383, %311, %301, %278, %261, %246, %235, %214, %93, %68, %51, %27, %22
  %461 = load i32, i32* %4, align 4
  ret i32 %461
}

declare dso_local %struct.TYPE_21__* @MCICDA_GetOpenDrv(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @device_io(i32, i32, %struct.TYPE_25__*, i32, %struct.TYPE_22__*, i32, i32*, i32*) #1

declare dso_local i32 @MCICDA_GetError(%struct.TYPE_21__*) #1

declare dso_local i32 @MCICDA_ReadTOC(%struct.TYPE_21__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i8* @FRAME_OF_TOC(%struct.TYPE_24__* byval(%struct.TYPE_24__) align 8, i64) #1

declare dso_local i8* @MCICDA_CalcTime(%struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i32 @MCICDA_GetStatus(%struct.TYPE_21__*) #1

declare dso_local i8* @MAKEMCIRESOURCE(i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @FRAME_OF_ADDR(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @HRESULT_CODE(i32) #1

declare dso_local i32 @MCICDA_Notify(i32, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
