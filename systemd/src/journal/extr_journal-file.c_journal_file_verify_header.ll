; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_verify_header.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_journal_file_verify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_11__*, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@HEADER_SIGNATURE = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@_STATE_MAX = common dso_local global i64 0, align 8
@HEADER_SIZE_MIN = common dso_local global i64 0, align 8
@n_entry_arrays = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@STATE_ARCHIVED = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@STATE_ONLINE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Journal file %s is already online. Assuming unclean closing.\00", align 1
@STATE_OFFLINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Journal file %s has unknown state %i.\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"Journal file %s is from the future, refusing to append new data to it that'd be older.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @journal_file_verify_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_file_verify_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i32 @assert(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = call i32 @assert(%struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 18
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HEADER_SIGNATURE, align 4
  %21 = call i64 @memcmp(i32 %19, i32 %20, i32 8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EBADMSG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %276

26:                                               ; preds = %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i64 @warn_wrong_flags(%struct.TYPE_11__* %27, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EPROTONOSUPPORT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %276

33:                                               ; preds = %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 10
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = call i64 @warn_wrong_flags(%struct.TYPE_11__* %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EPROTONOSUPPORT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %276

45:                                               ; preds = %38, %33
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @_STATE_MAX, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EBADMSG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %276

56:                                               ; preds = %45
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 17
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le64toh(i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @HEADER_SIZE_MIN, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @EBADMSG, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %276

69:                                               ; preds = %56
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = call i64 @JOURNAL_HEADER_SEALED(%struct.TYPE_11__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i32, i32* @n_entry_arrays, align 4
  %80 = call i32 @JOURNAL_HEADER_CONTAINS(%struct.TYPE_11__* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @EBADMSG, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %276

85:                                               ; preds = %75, %69
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 16
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @le64toh(i32 %90)
  store i64 %91, i64* %4, align 8
  %92 = load i64, i64* @UINT64_MAX, align 8
  %93 = load i64, i64* %5, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, i64* %4, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %85
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %4, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %100, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97, %85
  %107 = load i32, i32* @ENODATA, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %276

109:                                              ; preds = %97
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @le64toh(i32 %114)
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* %4, align 8
  %118 = add nsw i64 %116, %117
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load i32, i32* @ENODATA, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %276

123:                                              ; preds = %109
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 14
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @le64toh(i32 %128)
  %130 = call i32 @VALID64(i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %123
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @le64toh(i32 %137)
  %139 = call i32 @VALID64(i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %132
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 12
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @le64toh(i32 %146)
  %148 = call i32 @VALID64(i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %141
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 11
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @le64toh(i32 %155)
  %157 = call i32 @VALID64(i64 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %150, %141, %132, %123
  %160 = load i32, i32* @ENODATA, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %276

162:                                              ; preds = %150
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 10
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %257

167:                                              ; preds = %162
  %168 = call i32 @sd_id128_get_machine(i32* %6)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %2, align 4
  br label %276

173:                                              ; preds = %167
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @sd_id128_equal(i32 %174, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %173
  %183 = load i32, i32* @EHOSTDOWN, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %276

185:                                              ; preds = %173
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %7, align 8
  %191 = load i64, i64* %7, align 8
  %192 = load i64, i64* @STATE_ARCHIVED, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %185
  %195 = load i32, i32* @ESHUTDOWN, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %2, align 4
  br label %276

197:                                              ; preds = %185
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* @STATE_ONLINE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %197
  %202 = load i32, i32* @EBUSY, align 4
  %203 = call i32 @SYNTHETIC_ERRNO(i32 %202)
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32, i8*, i32, ...) @log_debug_errno(i32 %203, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %206)
  store i32 %207, i32* %2, align 4
  br label %276

208:                                              ; preds = %197
  %209 = load i64, i64* %7, align 8
  %210 = load i64, i64* @STATE_OFFLINE, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load i32, i32* @EBUSY, align 4
  %214 = call i32 @SYNTHETIC_ERRNO(i32 %213)
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = load i64, i64* %7, align 8
  %219 = call i32 (i32, i8*, i32, ...) @log_debug_errno(i32 %214, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %217, i64 %218)
  store i32 %219, i32* %2, align 4
  br label %276

220:                                              ; preds = %208
  br label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %222
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %229, %222
  %237 = load i32, i32* @EBADMSG, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %2, align 4
  br label %276

239:                                              ; preds = %229
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @le64toh(i32 %244)
  %246 = load i32, i32* @CLOCK_REALTIME, align 4
  %247 = call i64 @now(i32 %246)
  %248 = icmp sgt i64 %245, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %239
  %250 = load i32, i32* @ETXTBSY, align 4
  %251 = call i32 @SYNTHETIC_ERRNO(i32 %250)
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i32, i8*, i32, ...) @log_debug_errno(i32 %251, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %254)
  store i32 %255, i32* %2, align 4
  br label %276

256:                                              ; preds = %239
  br label %257

257:                                              ; preds = %256, %162
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %259, align 8
  %261 = call i32 @JOURNAL_HEADER_COMPRESSED_XZ(%struct.TYPE_11__* %260)
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 4
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = call i32 @JOURNAL_HEADER_COMPRESSED_LZ4(%struct.TYPE_11__* %266)
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 3
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = call i64 @JOURNAL_HEADER_SEALED(%struct.TYPE_11__* %272)
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 4
  store i64 %273, i64* %275, align 8
  store i32 0, i32* %2, align 4
  br label %276

276:                                              ; preds = %257, %249, %236, %212, %201, %194, %182, %171, %159, %120, %106, %82, %66, %53, %42, %30, %23
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @warn_wrong_flags(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i64 @JOURNAL_HEADER_SEALED(%struct.TYPE_11__*) #1

declare dso_local i32 @JOURNAL_HEADER_CONTAINS(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @VALID64(i64) #1

declare dso_local i32 @sd_id128_get_machine(i32*) #1

declare dso_local i32 @sd_id128_equal(i32, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i32, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @JOURNAL_HEADER_COMPRESSED_XZ(%struct.TYPE_11__*) #1

declare dso_local i32 @JOURNAL_HEADER_COMPRESSED_LZ4(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
