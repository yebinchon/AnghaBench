; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_check_fill_0x83_id.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_check_fill_0x83_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i32 }
%struct.scsi_id_search_values = type { i8, i8, i8 }

@SCSI_ID_TGTGROUP = common dso_local global i8 0, align 1
@SCSI_ID_NAA_DONT_CARE = common dso_local global i8 0, align 1
@SCSI_ID_ASCII = common dso_local global i8 0, align 1
@SCSI_ID_VENDOR_SPECIFIC = common dso_local global i8 0, align 1
@VENDOR_LENGTH = common dso_local global i64 0, align 8
@MODEL_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: length %d too short - need %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@hex_str = common dso_local global i8* null, align 8
@SCSI_ID_NAA = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_id_device*, i8*, %struct.scsi_id_search_values*, i8*, i8*, i32, i8*, i8*, i8*)* @check_fill_0x83_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fill_0x83_id(%struct.scsi_id_device* %0, i8* %1, %struct.scsi_id_search_values* %2, i8* %3, i8* %4, i32 %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_id_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.scsi_id_search_values*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.scsi_id_device* %0, %struct.scsi_id_device** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.scsi_id_search_values* %2, %struct.scsi_id_search_values** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 48
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %41

31:                                               ; preds = %9
  %32 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %33 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @SCSI_ID_TGTGROUP, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %305

40:                                               ; preds = %31
  br label %50

41:                                               ; preds = %9
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 48
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %305

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 15
  %56 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %57 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  br label %305

62:                                               ; preds = %50
  %63 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %64 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @SCSI_ID_NAA_DONT_CARE, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %72 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 240
  %80 = ashr i32 %79, 4
  %81 = icmp ne i32 %74, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %305

83:                                               ; preds = %70, %62
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 15
  %89 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %90 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %89, i32 0, i32 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %305

95:                                               ; preds = %83
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  store i32 %99, i32* %23, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 15
  %105 = load i8, i8* @SCSI_ID_ASCII, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load i32, i32* %23, align 4
  %110 = mul nsw i32 %109, 2
  store i32 %110, i32* %23, align 4
  br label %111

111:                                              ; preds = %108, %95
  %112 = load i32, i32* %23, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %23, align 4
  %114 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %115 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %114, i32 0, i32 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* @SCSI_ID_VENDOR_SPECIFIC, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %111
  %122 = load i64, i64* @VENDOR_LENGTH, align 8
  %123 = load i64, i64* @MODEL_LENGTH, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i32, i32* %23, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %23, align 4
  br label %129

129:                                              ; preds = %121, %111
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %23, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load %struct.scsi_id_device*, %struct.scsi_id_device** %11, align 8
  %135 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %23, align 4
  %139 = call i32 @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  store i32 1, i32* %10, align 4
  br label %305

140:                                              ; preds = %129
  %141 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %142 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %141, i32 0, i32 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* @SCSI_ID_TGTGROUP, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %140
  %149 = load i8*, i8** %19, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 6
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl i32 %155, 8
  %157 = load i8*, i8** %12, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 7
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = or i32 %156, %160
  store i32 %161, i32* %24, align 4
  %162 = load i8*, i8** %19, align 8
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @sprintf(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  store i32 1, i32* %10, align 4
  br label %305

165:                                              ; preds = %148, %140
  %166 = load i8*, i8** @hex_str, align 8
  %167 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %168 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %167, i32 0, i32 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds i8, i8* %166, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = load i8*, i8** %14, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  store i8 %172, i8* %174, align 1
  %175 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %176 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %175, i32 0, i32 0
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8, i8* @SCSI_ID_VENDOR_SPECIFIC, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %165
  %183 = load %struct.scsi_id_device*, %struct.scsi_id_device** %11, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = call i64 @append_vendor_model(%struct.scsi_id_device* %183, i8* %185)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i32 1, i32* %10, align 4
  br label %305

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %165
  store i32 4, i32* %20, align 4
  %191 = load i8*, i8** %14, align 8
  %192 = call i32 @strlen(i8* %191)
  store i32 %192, i32* %21, align 4
  store i32 %192, i32* %22, align 4
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = and i32 %196, 15
  %198 = load i8, i8* @SCSI_ID_ASCII, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %223

201:                                              ; preds = %190
  br label %202

202:                                              ; preds = %210, %201
  %203 = load i32, i32* %20, align 4
  %204 = load i8*, i8** %12, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 3
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = add nsw i32 4, %207
  %209 = icmp slt i32 %203, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %202
  %211 = load i8*, i8** %12, align 8
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %20, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %14, align 8
  %218 = load i32, i32* %21, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %21, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 %216, i8* %221, align 1
  br label %202

222:                                              ; preds = %202
  br label %269

223:                                              ; preds = %190
  br label %224

224:                                              ; preds = %232, %223
  %225 = load i32, i32* %20, align 4
  %226 = load i8*, i8** %12, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 3
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = add nsw i32 4, %229
  %231 = icmp slt i32 %225, %230
  br i1 %231, label %232, label %268

232:                                              ; preds = %224
  %233 = load i8*, i8** @hex_str, align 8
  %234 = load i8*, i8** %12, align 8
  %235 = load i32, i32* %20, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = and i32 %239, 240
  %241 = ashr i32 %240, 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %233, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = load i8*, i8** %14, align 8
  %246 = load i32, i32* %21, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %21, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  store i8 %244, i8* %249, align 1
  %250 = load i8*, i8** @hex_str, align 8
  %251 = load i8*, i8** %12, align 8
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = and i32 %256, 15
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %250, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = load i8*, i8** %14, align 8
  %262 = load i32, i32* %21, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %21, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i8, i8* %261, i64 %264
  store i8 %260, i8* %265, align 1
  %266 = load i32, i32* %20, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %20, align 4
  br label %224

268:                                              ; preds = %224
  br label %269

269:                                              ; preds = %268, %222
  %270 = load i8*, i8** %15, align 8
  %271 = load i8*, i8** %14, align 8
  %272 = load i32, i32* %22, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %271, i64 %273
  %275 = call i32 @strcpy(i8* %270, i8* %274)
  %276 = load %struct.scsi_id_search_values*, %struct.scsi_id_search_values** %13, align 8
  %277 = getelementptr inbounds %struct.scsi_id_search_values, %struct.scsi_id_search_values* %276, i32 0, i32 0
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = load i8, i8* @SCSI_ID_NAA, align 1
  %281 = zext i8 %280 to i32
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %304

283:                                              ; preds = %269
  %284 = load i8*, i8** %17, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %286, label %304

286:                                              ; preds = %283
  %287 = load i8*, i8** %17, align 8
  %288 = load i8*, i8** %14, align 8
  %289 = load i32, i32* %22, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %292 = call i32 @strncpy(i8* %287, i8* %291, i32 16)
  %293 = load i8*, i8** %18, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %303

295:                                              ; preds = %286
  %296 = load i8*, i8** %18, align 8
  %297 = load i8*, i8** %14, align 8
  %298 = load i32, i32* %22, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = getelementptr inbounds i8, i8* %300, i64 16
  %302 = call i32 @strncpy(i8* %296, i8* %301, i32 16)
  br label %303

303:                                              ; preds = %295, %286
  br label %304

304:                                              ; preds = %303, %283, %269
  store i32 0, i32* %10, align 4
  br label %305

305:                                              ; preds = %304, %188, %151, %133, %94, %82, %61, %48, %39
  %306 = load i32, i32* %10, align 4
  ret i32 %306
}

declare dso_local i32 @log_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @append_vendor_model(%struct.scsi_id_device*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
