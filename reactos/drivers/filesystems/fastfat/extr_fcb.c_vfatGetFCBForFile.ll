; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatGetFCBForFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatGetFCBForFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__, %struct.TYPE_29__, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"vfatGetFCBForFile (%p,%p,%p,%wZ)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"returning root FCB\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@STATUS_OBJECT_NAME_INVALID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Element in requested path is not a directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%wZ\0A\00", align 1
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vfatGetFCBForFile(i32 %0, %struct.TYPE_28__** %1, %struct.TYPE_28__** %2, %struct.TYPE_29__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__**, align 8
  %8 = alloca %struct.TYPE_28__**, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_27__, align 8
  %14 = alloca %struct.TYPE_27__, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  %16 = alloca [260 x i32], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_28__** %1, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__** %2, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %9, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %11, align 8
  %21 = call { i32*, i64 } @RTL_CONSTANT_STRING(i8* bitcast ([2 x i32]* @.str to i8*))
  %22 = bitcast %struct.TYPE_27__* %14 to { i32*, i64 }*
  %23 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %22, i32 0, i32 0
  %24 = extractvalue { i32*, i64 } %21, 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %22, i32 0, i32 1
  %26 = extractvalue { i32*, i64 } %21, 1
  store i64 %26, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  %29 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %31 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27, %struct.TYPE_28__** %28, %struct.TYPE_28__** %29, %struct.TYPE_29__* %30)
  %32 = getelementptr inbounds [260 x i32], [260 x i32]* %16, i64 0, i64 0
  %33 = call i32 @RtlInitEmptyUnicodeString(%struct.TYPE_27__* %15, i32* %32, i32 1040)
  %34 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %34, align 8
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %12, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %37 = icmp eq %struct.TYPE_28__* %36, null
  br i1 %37, label %38, label %226

38:                                               ; preds = %4
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %40 = call i32 @RtlCopyUnicodeString(%struct.TYPE_27__* %15, %struct.TYPE_29__* %39)
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i64 @RtlEqualUnicodeString(%struct.TYPE_27__* %15, %struct.TYPE_27__* %14, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.TYPE_28__* @vfatOpenRootFCB(i32 %46)
  store %struct.TYPE_28__* %47, %struct.TYPE_28__** %11, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %49 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_28__* %48, %struct.TYPE_28__** %49, align 8
  %50 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %50, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %52 = icmp ne %struct.TYPE_28__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i64, i64* @STATUS_SUCCESS, align 8
  br label %57

55:                                               ; preds = %44
  %56 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  store i64 %58, i64* %5, align 8
  br label %483

59:                                               ; preds = %38
  %60 = load i32, i32* %6, align 4
  %61 = call %struct.TYPE_28__* @vfatGrabFCBFromTable(i32 %60, %struct.TYPE_27__* %15)
  store %struct.TYPE_28__* %61, %struct.TYPE_28__** %11, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %63 = icmp ne %struct.TYPE_28__* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %66 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_28__* %65, %struct.TYPE_28__** %66, align 8
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %68, align 8
  %70 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__* %69, %struct.TYPE_28__** %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %72, align 8
  %74 = call i32 @vfatGrabFCB(i32 %71, %struct.TYPE_28__* %73)
  %75 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %75, i64* %5, align 8
  br label %483

76:                                               ; preds = %59
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %81, 4
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = getelementptr inbounds i32, i32* %83, i64 -1
  store i32* %84, i32** %17, align 8
  store i32* %84, i32** %19, align 8
  br label %85

85:                                               ; preds = %96, %76
  %86 = load i32*, i32** %17, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 92
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32*, i32** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ugt i32* %90, %92
  br label %94

94:                                               ; preds = %89, %85
  %95 = phi i1 [ false, %85 ], [ %93, %89 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load i32*, i32** %17, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 -1
  store i32* %98, i32** %17, align 8
  br label %85

99:                                               ; preds = %94
  %100 = load i32*, i32** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ugt i32* %100, %102
  br i1 %103, label %104, label %215

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  store i32* %106, i32** %107, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = ptrtoint i32* %108 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call %struct.TYPE_28__* @vfatGrabFCBFromTable(i32 %119, %struct.TYPE_27__* %13)
  store %struct.TYPE_28__* %120, %struct.TYPE_28__** %11, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %122 = icmp ne %struct.TYPE_28__* %121, null
  br i1 %122, label %123, label %214

123:                                              ; preds = %104
  %124 = load i32*, i32** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = ptrtoint i32* %124 to i64
  %128 = ptrtoint i32* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %133, %137
  br i1 %138, label %139, label %202

139:                                              ; preds = %123
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %141, %145
  %147 = load i32, i32* %20, align 4
  %148 = sub nsw i32 %146, %147
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %148, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %139
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %155 = call i32 @vfatReleaseFCB(i32 %153, %struct.TYPE_28__* %154)
  %156 = load i64, i64* @STATUS_OBJECT_NAME_INVALID, align 8
  store i64 %156, i64* %5, align 8
  br label %483

157:                                              ; preds = %139
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = udiv i64 %164, 4
  %166 = getelementptr inbounds i32, i32* %159, i64 %165
  %167 = load i32*, i32** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %20, align 4
  %171 = sub nsw i32 %169, %170
  %172 = call i32 @RtlMoveMemory(i32* %166, i32* %167, i32 %171)
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %20, align 4
  %178 = sub nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %179
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = udiv i64 %191, 4
  %193 = getelementptr inbounds i32, i32* %186, i64 %192
  store i32* %193, i32** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = udiv i64 %198, 4
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = getelementptr inbounds i32, i32* %200, i64 -1
  store i32* %201, i32** %19, align 8
  br label %202

202:                                              ; preds = %157, %123
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @RtlCopyMemory(i32* %204, i32 %208, i32 %212)
  br label %214

214:                                              ; preds = %202, %104
  br label %216

215:                                              ; preds = %99
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %11, align 8
  br label %216

216:                                              ; preds = %215, %214
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %218 = icmp eq %struct.TYPE_28__* %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load i32, i32* %6, align 4
  %221 = call %struct.TYPE_28__* @vfatOpenRootFCB(i32 %220)
  store %struct.TYPE_28__* %221, %struct.TYPE_28__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  store i32* %223, i32** %17, align 8
  br label %224

224:                                              ; preds = %219, %216
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %12, align 8
  %225 = load i32*, i32** %17, align 8
  store i32* %225, i32** %18, align 8
  br label %263

226:                                              ; preds = %4
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 1
  %229 = call i32 @RtlCopyUnicodeString(%struct.TYPE_27__* %15, %struct.TYPE_29__* %228)
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = udiv i64 %234, 4
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = getelementptr inbounds i32, i32* %236, i64 -1
  store i32* %237, i32** %17, align 8
  %238 = load i32*, i32** %17, align 8
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 92
  br i1 %240, label %241, label %245

241:                                              ; preds = %226
  %242 = call i32 @RtlAppendUnicodeToString(%struct.TYPE_27__* %15, i8* bitcast ([2 x i32]* @.str to i8*))
  %243 = load i32*, i32** %17, align 8
  %244 = getelementptr inbounds i32, i32* %243, i32 1
  store i32* %244, i32** %17, align 8
  br label %245

245:                                              ; preds = %241, %226
  %246 = load i32*, i32** %17, align 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 92
  %249 = zext i1 %248 to i32
  %250 = call i32 @ASSERT(i32 %249)
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %252 = call i32 @RtlAppendUnicodeStringToString(%struct.TYPE_27__* %15, %struct.TYPE_29__* %251)
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %253, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %12, align 8
  %254 = load i32*, i32** %17, align 8
  store i32* %254, i32** %18, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = udiv i64 %259, 4
  %261 = getelementptr inbounds i32, i32* %256, i64 %260
  %262 = getelementptr inbounds i32, i32* %261, i64 -1
  store i32* %262, i32** %19, align 8
  br label %263

263:                                              ; preds = %245, %224
  br label %264

264:                                              ; preds = %476, %263
  %265 = load i32*, i32** %17, align 8
  %266 = load i32*, i32** %19, align 8
  %267 = icmp ule i32* %265, %266
  br i1 %267, label %268, label %477

268:                                              ; preds = %264
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %270 = icmp ne %struct.TYPE_28__* %269, null
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32, i32* %6, align 4
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %274 = call i32 @vfatReleaseFCB(i32 %272, %struct.TYPE_28__* %273)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %12, align 8
  br label %275

275:                                              ; preds = %271, %268
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %277 = call i32 @vfatFCBIsDirectory(%struct.TYPE_28__* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %287, label %279

279:                                              ; preds = %275
  %280 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %281 = load i32, i32* %6, align 4
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %283 = call i32 @vfatReleaseFCB(i32 %281, %struct.TYPE_28__* %282)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %11, align 8
  %284 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %284, align 8
  %285 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %285, align 8
  %286 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  store i64 %286, i64* %5, align 8
  br label %483

287:                                              ; preds = %275
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* %288, %struct.TYPE_28__** %12, align 8
  %289 = load i32*, i32** %18, align 8
  %290 = load i32*, i32** %17, align 8
  %291 = icmp ult i32* %289, %290
  br i1 %291, label %292, label %390

292:                                              ; preds = %287
  %293 = load i32*, i32** %17, align 8
  %294 = load i32*, i32** %18, align 8
  %295 = ptrtoint i32* %293 to i64
  %296 = ptrtoint i32* %294 to i64
  %297 = sub i64 %295, %296
  %298 = sdiv exact i64 %297, 4
  %299 = mul i64 %298, 4
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %20, align 4
  %301 = load i32, i32* %20, align 4
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %301, %305
  br i1 %306, label %307, label %379

307:                                              ; preds = %292
  %308 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %309, %313
  %315 = load i32, i32* %20, align 4
  %316 = sub nsw i32 %314, %315
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = icmp sgt i32 %316, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %307
  %321 = load i32, i32* %6, align 4
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %323 = call i32 @vfatReleaseFCB(i32 %321, %struct.TYPE_28__* %322)
  %324 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %324, align 8
  %325 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %325, align 8
  %326 = load i64, i64* @STATUS_OBJECT_NAME_INVALID, align 8
  store i64 %326, i64* %5, align 8
  br label %483

327:                                              ; preds = %307
  %328 = load i32*, i32** %18, align 8
  %329 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = sext i32 %332 to i64
  %334 = udiv i64 %333, 4
  %335 = getelementptr inbounds i32, i32* %328, i64 %334
  %336 = load i32*, i32** %17, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  %340 = load i32*, i32** %17, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = ptrtoint i32* %340 to i64
  %344 = ptrtoint i32* %342 to i64
  %345 = sub i64 %343, %344
  %346 = sdiv exact i64 %345, 4
  %347 = mul i64 %346, 4
  %348 = sub i64 %339, %347
  %349 = trunc i64 %348 to i32
  %350 = call i32 @RtlMoveMemory(i32* %335, i32* %336, i32 %349)
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* %20, align 4
  %356 = sub nsw i32 %354, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = add nsw i64 %360, %357
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %358, align 8
  %363 = load i32*, i32** %18, align 8
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = sext i32 %367 to i64
  %369 = udiv i64 %368, 4
  %370 = getelementptr inbounds i32, i32* %363, i64 %369
  store i32* %370, i32** %17, align 8
  %371 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = sext i32 %374 to i64
  %376 = udiv i64 %375, 4
  %377 = getelementptr inbounds i32, i32* %372, i64 %376
  %378 = getelementptr inbounds i32, i32* %377, i64 -1
  store i32* %378, i32** %19, align 8
  br label %379

379:                                              ; preds = %327, %292
  %380 = load i32*, i32** %18, align 8
  %381 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %382 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @RtlCopyMemory(i32* %380, i32 %384, i32 %388)
  br label %390

390:                                              ; preds = %379, %287
  %391 = load i32*, i32** %17, align 8
  %392 = getelementptr inbounds i32, i32* %391, i32 1
  store i32* %392, i32** %17, align 8
  %393 = load i32*, i32** %17, align 8
  store i32* %393, i32** %18, align 8
  br label %394

394:                                              ; preds = %404, %390
  %395 = load i32*, i32** %17, align 8
  %396 = load i32, i32* %395, align 4
  %397 = icmp ne i32 %396, 92
  br i1 %397, label %398, label %402

398:                                              ; preds = %394
  %399 = load i32*, i32** %17, align 8
  %400 = load i32*, i32** %19, align 8
  %401 = icmp ule i32* %399, %400
  br label %402

402:                                              ; preds = %398, %394
  %403 = phi i1 [ false, %394 ], [ %401, %398 ]
  br i1 %403, label %404, label %407

404:                                              ; preds = %402
  %405 = load i32*, i32** %17, align 8
  %406 = getelementptr inbounds i32, i32* %405, i32 1
  store i32* %406, i32** %17, align 8
  br label %394

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  store i32* %409, i32** %410, align 8
  %411 = load i32*, i32** %17, align 8
  %412 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = ptrtoint i32* %411 to i64
  %415 = ptrtoint i32* %413 to i64
  %416 = sub i64 %414, %415
  %417 = sdiv exact i64 %416, 4
  %418 = mul i64 %417, 4
  %419 = trunc i64 %418 to i32
  %420 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  store i32 %419, i32* %420, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 2
  %422 = load i32, i32* %421, align 4
  %423 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store i32 %422, i32* %423, align 4
  %424 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_27__* %13)
  %425 = load i32, i32* %6, align 4
  %426 = call %struct.TYPE_28__* @vfatGrabFCBFromTable(i32 %425, %struct.TYPE_27__* %13)
  store %struct.TYPE_28__* %426, %struct.TYPE_28__** %11, align 8
  %427 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %428 = icmp eq %struct.TYPE_28__* %427, null
  br i1 %428, label %429, label %476

429:                                              ; preds = %407
  %430 = load i32*, i32** %18, align 8
  %431 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  store i32* %430, i32** %431, align 8
  %432 = load i32*, i32** %17, align 8
  %433 = load i32*, i32** %18, align 8
  %434 = ptrtoint i32* %432 to i64
  %435 = ptrtoint i32* %433 to i64
  %436 = sub i64 %434, %435
  %437 = sdiv exact i64 %436, 4
  %438 = mul i64 %437, 4
  %439 = trunc i64 %438 to i32
  %440 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  store i32 %439, i32* %440, align 8
  %441 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  store i32 %439, i32* %441, align 4
  %442 = load i32, i32* %6, align 4
  %443 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %444 = call i64 @vfatDirFindFile(i32 %442, %struct.TYPE_28__* %443, %struct.TYPE_27__* %13, %struct.TYPE_28__** %11)
  store i64 %444, i64* %10, align 8
  %445 = load i64, i64* %10, align 8
  %446 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %463

448:                                              ; preds = %429
  %449 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %449, align 8
  %450 = load i32*, i32** %17, align 8
  %451 = load i32*, i32** %19, align 8
  %452 = icmp ugt i32* %450, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %448
  %454 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %455 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__* %454, %struct.TYPE_28__** %455, align 8
  %456 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  store i64 %456, i64* %5, align 8
  br label %483

457:                                              ; preds = %448
  %458 = load i32, i32* %6, align 4
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %460 = call i32 @vfatReleaseFCB(i32 %458, %struct.TYPE_28__* %459)
  %461 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %461, align 8
  %462 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  store i64 %462, i64* %5, align 8
  br label %483

463:                                              ; preds = %429
  %464 = load i64, i64* %10, align 8
  %465 = call i32 @NT_SUCCESS(i64 %464)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %474, label %467

467:                                              ; preds = %463
  %468 = load i32, i32* %6, align 4
  %469 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %470 = call i32 @vfatReleaseFCB(i32 %468, %struct.TYPE_28__* %469)
  %471 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %471, align 8
  %472 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %472, align 8
  %473 = load i64, i64* %10, align 8
  store i64 %473, i64* %5, align 8
  br label %483

474:                                              ; preds = %463
  br label %475

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475, %407
  br label %264

477:                                              ; preds = %264
  %478 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %479 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %7, align 8
  store %struct.TYPE_28__* %478, %struct.TYPE_28__** %479, align 8
  %480 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %481 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %8, align 8
  store %struct.TYPE_28__* %480, %struct.TYPE_28__** %481, align 8
  %482 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %482, i64* %5, align 8
  br label %483

483:                                              ; preds = %477, %467, %457, %453, %320, %279, %152, %64, %57
  %484 = load i64, i64* %5, align 8
  ret i64 %484
}

declare dso_local { i32*, i64 } @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @RtlInitEmptyUnicodeString(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @RtlCopyUnicodeString(%struct.TYPE_27__*, %struct.TYPE_29__*) #1

declare dso_local i64 @RtlEqualUnicodeString(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_28__* @vfatOpenRootFCB(i32) #1

declare dso_local %struct.TYPE_28__* @vfatGrabFCBFromTable(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @vfatGrabFCB(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @vfatReleaseFCB(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @RtlMoveMemory(i32*, i32*, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #1

declare dso_local i32 @RtlAppendUnicodeToString(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RtlAppendUnicodeStringToString(%struct.TYPE_27__*, %struct.TYPE_29__*) #1

declare dso_local i32 @vfatFCBIsDirectory(%struct.TYPE_28__*) #1

declare dso_local i64 @vfatDirFindFile(i32, %struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_28__**) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
