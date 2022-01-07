; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_scsi_get_serial.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_serial.c_scsi_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_id_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32, i64 }

@SCSI_INQ_BUFF_LEN = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@PAGE_80 = common dso_local global i32 0, align 4
@PAGE_83 = common dso_local global i32 0, align 4
@PAGE_83_PRE_SPC3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: unsupported page code 0x%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_get_serial(%struct.scsi_id_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_id_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timespec, align 8
  %17 = alloca i32, align 4
  store %struct.scsi_id_device* %0, %struct.scsi_id_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  %22 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @memzero(i32 %24, i32 %25)
  %27 = call i32 (...) @initialize_srand()
  store i32 20, i32* %13, align 4
  br label %28

28:                                               ; preds = %55, %4
  %29 = load i32, i32* %13, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = load i32, i32* @O_NONBLOCK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @O_CLOEXEC, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @open(i8* %32, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EBUSY, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %31
  br label %58

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = call i32 (...) @rand()
  %49 = srem i32 %48, 100
  %50 = mul nsw i32 %49, 1000
  %51 = mul nsw i32 %50, 1000
  %52 = add nsw i32 200000000, %51
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = call i32 @nanosleep(%struct.timespec* %16, i32* null)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  br label %28

58:                                               ; preds = %45, %28
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %262

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PAGE_80, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %70 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %73 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @do_scsi_page80_inquiry(%struct.scsi_id_device* %67, i32 %68, i32 %71, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  store i32 1, i32* %15, align 4
  br label %258

79:                                               ; preds = %66
  store i32 0, i32* %15, align 4
  br label %258

80:                                               ; preds = %62
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @PAGE_83, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80
  %85 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %88 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %91 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %95 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %98 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %101 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %104 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @do_scsi_page83_inquiry(%struct.scsi_id_device* %85, i32 %86, i32 %89, i32 %92, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %84
  store i32 1, i32* %15, align 4
  br label %258

109:                                              ; preds = %84
  store i32 0, i32* %15, align 4
  br label %258

110:                                              ; preds = %80
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @PAGE_83_PRE_SPC3, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %158

114:                                              ; preds = %110
  %115 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %118 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %121 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @do_scsi_page83_prespc3_inquiry(%struct.scsi_id_device* %115, i32 %116, i32 %119, i32 %122, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %157

127:                                              ; preds = %114
  %128 = load i32, i32* %15, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %156

130:                                              ; preds = %127
  %131 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %134 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %137 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %141 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %144 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %147 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %150 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @do_scsi_page83_inquiry(%struct.scsi_id_device* %131, i32 %132, i32 %135, i32 %138, i32 %139, i32 %142, i32 %145, i32 %148, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %130
  store i32 1, i32* %15, align 4
  br label %258

155:                                              ; preds = %130
  store i32 0, i32* %15, align 4
  br label %258

156:                                              ; preds = %127
  store i32 1, i32* %15, align 4
  br label %258

157:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  br label %258

158:                                              ; preds = %110
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %163 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %164, i32 %165)
  store i32 1, i32* %15, align 4
  br label %258

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  %171 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @SCSI_INQ_BUFF_LEN, align 4
  %174 = call i64 @do_scsi_page0_inquiry(%struct.scsi_id_device* %171, i32 %172, i8* %21, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i32 1, i32* %15, align 4
  br label %258

177:                                              ; preds = %170
  store i32 4, i32* %14, align 4
  br label %178

178:                                              ; preds = %220, %177
  %179 = load i32, i32* %14, align 4
  %180 = getelementptr inbounds i8, i8* %21, i64 3
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = add nsw i32 %182, 3
  %184 = icmp sle i32 %179, %183
  br i1 %184, label %185, label %223

185:                                              ; preds = %178
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %21, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load i32, i32* @PAGE_83, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %219

193:                                              ; preds = %185
  %194 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %197 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %200 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %204 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %207 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %210 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %213 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @do_scsi_page83_inquiry(%struct.scsi_id_device* %194, i32 %195, i32 %198, i32 %201, i32 %202, i32 %205, i32 %208, i32 %211, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %193
  store i32 0, i32* %15, align 4
  br label %258

218:                                              ; preds = %193
  br label %219

219:                                              ; preds = %218, %185
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  br label %178

223:                                              ; preds = %178
  store i32 4, i32* %14, align 4
  br label %224

224:                                              ; preds = %254, %223
  %225 = load i32, i32* %14, align 4
  %226 = getelementptr inbounds i8, i8* %21, i64 3
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = add nsw i32 %228, 3
  %230 = icmp sle i32 %225, %229
  br i1 %230, label %231, label %257

231:                                              ; preds = %224
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %21, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = load i32, i32* @PAGE_80, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %231
  %240 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %243 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.scsi_id_device*, %struct.scsi_id_device** %6, align 8
  %246 = getelementptr inbounds %struct.scsi_id_device, %struct.scsi_id_device* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i64 @do_scsi_page80_inquiry(%struct.scsi_id_device* %240, i32 %241, i32 %244, i32 %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %239
  store i32 0, i32* %15, align 4
  br label %258

252:                                              ; preds = %239
  br label %253

253:                                              ; preds = %252, %231
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %14, align 4
  br label %224

257:                                              ; preds = %224
  store i32 1, i32* %15, align 4
  br label %258

258:                                              ; preds = %257, %251, %217, %176, %161, %157, %156, %155, %154, %109, %108, %79, %78
  %259 = load i32, i32* %12, align 4
  %260 = call i32 @close(i32 %259)
  %261 = load i32, i32* %15, align 4
  store i32 %261, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %262

262:                                              ; preds = %258, %61
  %263 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memzero(i32, i32) #2

declare dso_local i32 @initialize_srand(...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #2

declare dso_local i64 @do_scsi_page80_inquiry(%struct.scsi_id_device*, i32, i32, i32, i32) #2

declare dso_local i64 @do_scsi_page83_inquiry(%struct.scsi_id_device*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @do_scsi_page83_prespc3_inquiry(%struct.scsi_id_device*, i32, i32, i32, i32) #2

declare dso_local i32 @log_debug(i8*, i32, i32) #2

declare dso_local i64 @do_scsi_page0_inquiry(%struct.scsi_id_device*, i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
