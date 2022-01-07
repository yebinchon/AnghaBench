; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatSetBasicInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatSetBasicInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"VfatSetBasicInformation()\0A\00", align 1
@_A_VOLID = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SYSTEM = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_TEMPORARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Setting temporary attribute on a directory!\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Setting directory attribute on a file!\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Setting attributes 0x%02x\0A\00", align 1
@FILE_NOTIFY_CHANGE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_CREATION = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_LAST_ACCESS = common dso_local global i32 0, align 4
@FILE_NOTIFY_CHANGE_LAST_WRITE = common dso_local global i32 0, align 4
@FILE_ACTION_MODIFIED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i32*, %struct.TYPE_17__*)* @VfatSetBasicInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatSetBasicInformation(i32* %0, %struct.TYPE_16__* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %12 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* null, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = icmp ne %struct.TYPE_16__* null, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* null, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = icmp ne %struct.TYPE_17__* null, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @_A_VOLID, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 0, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  store i32 0, i32* %10, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %105

42:                                               ; preds = %4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %47 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %45, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = call i64 @vfatFCBIsDirectory(%struct.TYPE_16__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %42
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FILE_ATTRIBUTE_TEMPORARY, align 4
  %64 = call i64 @BooleanFlagOn(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %68, i32* %5, align 4
  br label %289

69:                                               ; preds = %59
  %70 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %84

73:                                               ; preds = %42
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %78 = call i64 @BooleanFlagOn(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %82, i32* %5, align 4
  br label %289

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32 %92, i32* %95, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @FILE_NOTIFY_CHANGE_ATTRIBUTES, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %91, %84
  br label %105

105:                                              ; preds = %104, %4
  %106 = load i32*, i32** %8, align 8
  %107 = call i64 @vfatVolumeIsFatX(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %194

109:                                              ; preds = %105
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %109
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  %133 = call i32 @FsdSystemTimeToDosDateTime(i32* %122, %struct.TYPE_12__* %124, i32* %128, i32* %132)
  %134 = load i32, i32* @FILE_NOTIFY_CHANGE_CREATION, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %121, %115, %109
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %137
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load i32*, i32** %8, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = call i32 @FsdSystemTimeToDosDateTime(i32* %150, %struct.TYPE_12__* %152, i32* %156, i32* %160)
  %162 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_ACCESS, align 4
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %149, %143, %137
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %165
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, -1
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load i32*, i32** %8, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = call i32 @FsdSystemTimeToDosDateTime(i32* %178, %struct.TYPE_12__* %180, i32* %184, i32* %188)
  %190 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_WRITE, align 4
  %191 = load i32, i32* %10, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %177, %171, %165
  br label %275

194:                                              ; preds = %105
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %194
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, -1
  br i1 %205, label %206, label %222

206:                                              ; preds = %200
  %207 = load i32*, i32** %8, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 3
  %218 = call i32 @FsdSystemTimeToDosDateTime(i32* %207, %struct.TYPE_12__* %209, i32* %213, i32* %217)
  %219 = load i32, i32* @FILE_NOTIFY_CHANGE_CREATION, align 4
  %220 = load i32, i32* %10, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %206, %200, %194
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %246

228:                                              ; preds = %222
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, -1
  br i1 %233, label %234, label %246

234:                                              ; preds = %228
  %235 = load i32*, i32** %8, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 2
  %242 = call i32 @FsdSystemTimeToDosDateTime(i32* %235, %struct.TYPE_12__* %237, i32* %241, i32* null)
  %243 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_ACCESS, align 4
  %244 = load i32, i32* %10, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %234, %228, %222
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %274

252:                                              ; preds = %246
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %258, label %274

258:                                              ; preds = %252
  %259 = load i32*, i32** %8, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  %270 = call i32 @FsdSystemTimeToDosDateTime(i32* %259, %struct.TYPE_12__* %261, i32* %265, i32* %269)
  %271 = load i32, i32* @FILE_NOTIFY_CHANGE_LAST_WRITE, align 4
  %272 = load i32, i32* %10, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %10, align 4
  br label %274

274:                                              ; preds = %258, %252, %246
  br label %275

275:                                              ; preds = %274, %193
  %276 = load i32*, i32** %8, align 8
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %278 = call i32 @VfatUpdateEntry(i32* %276, %struct.TYPE_16__* %277)
  %279 = load i32, i32* %10, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = load i32*, i32** %8, align 8
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* @FILE_ACTION_MODIFIED, align 4
  %286 = call i32 @vfatReportChange(i32* %282, %struct.TYPE_16__* %283, i32 %284, i32 %285)
  br label %287

287:                                              ; preds = %281, %275
  %288 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %287, %80, %66
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @vfatFCBIsDirectory(%struct.TYPE_16__*) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i64 @vfatVolumeIsFatX(i32*) #1

declare dso_local i32 @FsdSystemTimeToDosDateTime(i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @VfatUpdateEntry(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @vfatReportChange(i32*, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
