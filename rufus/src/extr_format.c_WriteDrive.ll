; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_WriteDrive.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_WriteDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@img_report = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SelectedDrive = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@FILE_BEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Warning: Unable to rewind image position - wrong data might be copied!\00", align 1
@BLED_COMPRESSION_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Writing compressed image...\00", align 1
@_uprintf = common dso_local global i32 0, align 4
@update_progress = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i32 0, align 4
@ERROR_CANCELLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not write compressed image: %lld\00", align 1
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_WRITE_FAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Writing Image...\00", align 1
@fast_zeroing = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Fast-zeroing drive...\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Zeroing drive...\00", align 1
@DD_BUFFER_SIZE = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Could not allocate disk write buffer\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Could not allocate disk comparison buffer\00", align 1
@OP_FORMAT = common dso_local global i32 0, align 4
@MSG_261 = common dso_local global i32 0, align 4
@MSG_306 = common dso_local global i32 0, align 4
@MSG_286 = common dso_local global i32 0, align 4
@ERROR_READ_FAULT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Read error: %s\00", align 1
@CHECK_FOR_USER_CANCEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"Read error: Could not read data for comparison - %s\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Error: Could not reset position - %s\00", align 1
@WRITE_RETRIES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"Write error: Wrote %d bytes, expected %d bytes\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Write error at sector %lld: %s\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Retrying in %d seconds...\00", align 1
@WRITE_TIMEOUT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"Write error: Could not reset position - %s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @WriteDrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WriteDrive(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 0), align 8
  br label %28

26:                                               ; preds = %2
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  store i64 %29, i64* %13, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %20, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @FILE_BEGIN, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @SetFilePointerEx(i32* %31, i64 %34, i32* null, i32 %32)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %28
  %40 = load i64, i64* @FALSE, align 8
  %41 = call i32 @UpdateProgressWithInfoInit(i32* null, i64 %40)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 1), align 8
  %43 = load i64, i64* @BLED_COMPRESSION_NONE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @_uprintf, align 4
  %48 = load i32, i32* @update_progress, align 4
  %49 = call i32 @bled_init(i32 %47, i32 %48, i32* @FormatStatus)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 1), align 8
  %53 = call i64 @bled_uncompress_with_handles(i32* %50, i32* %51, i64 %52)
  store i64 %53, i64* %14, align 8
  %54 = call i32 (...) @bled_exit()
  %55 = load i64, i64* %14, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %45
  %58 = load i32, i32* @FormatStatus, align 4
  %59 = call i64 @SCODE_CODE(i32 %58)
  %60 = load i64, i64* @ERROR_CANCELLED, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i64, i64* %14, align 8
  %64 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %66 = load i32, i32* @FACILITY_STORAGE, align 4
  %67 = call i32 @FAC(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* @ERROR_WRITE_FAULT, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* @FormatStatus, align 4
  br label %384

71:                                               ; preds = %57, %45
  br label %380

72:                                               ; preds = %39
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %81

76:                                               ; preds = %72
  %77 = load i64, i64* @fast_zeroing, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)
  br label %81

81:                                               ; preds = %76, %75
  %82 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %75 ], [ %80, %76 ]
  %83 = call i32 (i8*, ...) @uprintf(i8* %82)
  %84 = load i32, i32* @DD_BUFFER_SIZE, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %89 = sdiv i32 %87, %88
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %95 = call i64 @_mm_malloc(i64 %93, i32 %94)
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** %15, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %81
  %100 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %101 = load i32, i32* @FACILITY_STORAGE, align 4
  %102 = call i32 @FAC(i32 %101)
  %103 = or i32 %100, %102
  %104 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* @FormatStatus, align 4
  %106 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %384

107:                                              ; preds = %81
  %108 = load i32*, i32** %15, align 8
  %109 = ptrtoint i32* %108 to i64
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %111 = sext i32 %110 to i64
  %112 = urem i64 %109, %111
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32*, i32** %15, align 8
  %117 = load i64, i64* @fast_zeroing, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 255, i32 0
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @memset(i32* %116, i32 %120, i64 %121)
  %123 = load i64, i64* %11, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %125 = call i64 @_mm_malloc(i64 %123, i32 %124)
  %126 = inttoptr i64 %125 to i32*
  store i32* %126, i32** %16, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %107
  %130 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %131 = load i32, i32* @FACILITY_STORAGE, align 4
  %132 = call i32 @FAC(i32 %131)
  %133 = or i32 %130, %132
  %134 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* @FormatStatus, align 4
  %136 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %384

137:                                              ; preds = %107
  %138 = load i32*, i32** %16, align 8
  %139 = ptrtoint i32* %138 to i64
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %141 = sext i32 %140 to i64
  %142 = urem i64 %139, %141
  %143 = icmp eq i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i64, i64* %11, align 8
  store i64 %146, i64* %8, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %147

147:                                              ; preds = %375, %137
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 0), align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %379

151:                                              ; preds = %147
  %152 = load i32, i32* @OP_FORMAT, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @MSG_261, align 4
  br label %166

157:                                              ; preds = %151
  %158 = load i64, i64* @fast_zeroing, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @MSG_306, align 4
  br label %164

162:                                              ; preds = %157
  %163 = load i32, i32* @MSG_286, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  br label %166

166:                                              ; preds = %164, %155
  %167 = phi i32 [ %156, %155 ], [ %165, %164 ]
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* %13, align 8
  %170 = call i32 @UpdateProgressWithInfo(i32 %152, i32 %167, i64 %168, i64 %169)
  %171 = load i32*, i32** %4, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %194

173:                                              ; preds = %166
  %174 = load i32*, i32** %4, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i64 @ReadFile(i32* %174, i32* %175, i64 %176, i64* %8, i32* null)
  store i64 %177, i64* %5, align 8
  %178 = load i64, i64* %5, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %173
  %181 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %182 = load i32, i32* @FACILITY_STORAGE, align 4
  %183 = call i32 @FAC(i32 %182)
  %184 = or i32 %181, %183
  %185 = load i32, i32* @ERROR_READ_FAULT, align 4
  %186 = or i32 %184, %185
  store i32 %186, i32* @FormatStatus, align 4
  %187 = call i32 (...) @WindowsErrorString()
  %188 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %187)
  br label %384

189:                                              ; preds = %173
  %190 = load i64, i64* %8, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %379

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %193, %166
  %195 = load i64, i64* %12, align 8
  %196 = load i64, i64* %8, align 8
  %197 = add nsw i64 %195, %196
  %198 = load i64, i64* %13, align 8
  %199 = icmp sgt i64 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %12, align 8
  %203 = sub nsw i64 %201, %202
  store i64 %203, i64* %8, align 8
  br label %204

204:                                              ; preds = %200, %194
  %205 = load i64, i64* %8, align 8
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %207 = sext i32 %206 to i64
  %208 = srem i64 %205, %207
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %204
  %211 = load i64, i64* %8, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %211, %213
  %215 = sub nsw i64 %214, 1
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %217 = sext i32 %216 to i64
  %218 = sdiv i64 %215, %217
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %220 = sext i32 %219 to i64
  %221 = mul nsw i64 %218, %220
  store i64 %221, i64* %8, align 8
  br label %222

222:                                              ; preds = %210, %204
  %223 = load i32, i32* %20, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* %20, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %20, align 4
  br label %303

228:                                              ; preds = %222
  %229 = load i64, i64* @fast_zeroing, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %302

231:                                              ; preds = %228
  %232 = load i32*, i32** %4, align 8
  %233 = icmp eq i32* %232, null
  %234 = zext i1 %233 to i32
  %235 = call i32 @assert(i32 %234)
  %236 = load i32, i32* @CHECK_FOR_USER_CANCEL, align 4
  %237 = load i32*, i32** %3, align 8
  %238 = load i32*, i32** %16, align 8
  %239 = load i64, i64* %8, align 8
  %240 = call i64 @ReadFile(i32* %237, i32* %238, i64 %239, i64* %10, i32* null)
  store i64 %240, i64* %5, align 8
  %241 = load i64, i64* %5, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %231
  %244 = load i64, i64* %10, align 8
  %245 = load i64, i64* %8, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %243, %231
  %248 = call i32 (...) @WindowsErrorString()
  %249 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %248)
  br label %384

250:                                              ; preds = %243
  %251 = load i32*, i32** %16, align 8
  store i32* %251, i32** %18, align 8
  %252 = load i32*, i32** %18, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %19, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %250
  %258 = load i32, i32* %19, align 4
  %259 = icmp eq i32 %258, -1
  br i1 %259, label %260, label %289

260:                                              ; preds = %257, %250
  store i32 1, i32* %17, align 4
  br label %261

261:                                              ; preds = %277, %260
  %262 = load i32, i32* %17, align 4
  %263 = load i64, i64* %8, align 8
  %264 = udiv i64 %263, 4
  %265 = trunc i64 %264 to i32
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %280

267:                                              ; preds = %261
  %268 = load i32*, i32** %18, align 8
  %269 = load i32, i32* %17, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %19, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %280

276:                                              ; preds = %267
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %17, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %17, align 4
  br label %261

280:                                              ; preds = %275, %261
  %281 = load i32, i32* %17, align 4
  %282 = load i64, i64* %8, align 8
  %283 = udiv i64 %282, 4
  %284 = trunc i64 %283 to i32
  %285 = icmp sge i32 %281, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load i64, i64* %8, align 8
  store i64 %287, i64* %9, align 8
  br label %375

288:                                              ; preds = %280
  br label %289

289:                                              ; preds = %288, %257
  %290 = load i64, i64* %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %290, i64* %291, align 8
  %292 = load i32*, i32** %3, align 8
  %293 = load i32, i32* @FILE_BEGIN, align 4
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @SetFilePointerEx(i32* %292, i64 %295, i32* null, i32 %293)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %289
  %299 = call i32 (...) @WindowsErrorString()
  %300 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %299)
  br label %384

301:                                              ; preds = %289
  store i32 15, i32* %20, align 4
  br label %302

302:                                              ; preds = %301, %228
  br label %303

303:                                              ; preds = %302, %225
  store i32 1, i32* %17, align 4
  br label %304

304:                                              ; preds = %366, %303
  %305 = load i32, i32* %17, align 4
  %306 = load i32, i32* @WRITE_RETRIES, align 4
  %307 = icmp sle i32 %305, %306
  br i1 %307, label %308, label %369

308:                                              ; preds = %304
  %309 = load i32, i32* @CHECK_FOR_USER_CANCEL, align 4
  %310 = load i32*, i32** %3, align 8
  %311 = load i32*, i32** %15, align 8
  %312 = load i64, i64* %8, align 8
  %313 = call i64 @WriteFile(i32* %310, i32* %311, i64 %312, i64* %9, i32* null)
  store i64 %313, i64* %5, align 8
  %314 = load i64, i64* %5, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %308
  %317 = load i64, i64* %9, align 8
  %318 = load i64, i64* %8, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %316
  br label %369

321:                                              ; preds = %316, %308
  %322 = load i64, i64* %5, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = load i64, i64* %9, align 8
  %326 = load i64, i64* %8, align 8
  %327 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i64 %325, i64 %326)
  br label %335

328:                                              ; preds = %321
  %329 = load i64, i64* %12, align 8
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 1), align 8
  %331 = sext i32 %330 to i64
  %332 = sdiv i64 %329, %331
  %333 = call i32 (...) @WindowsErrorString()
  %334 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %332, i32 %333)
  br label %335

335:                                              ; preds = %328, %324
  %336 = load i32, i32* %17, align 4
  %337 = load i32, i32* @WRITE_RETRIES, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %357

339:                                              ; preds = %335
  %340 = load i64, i64* %12, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %340, i64* %341, align 8
  %342 = load i32, i32* @WRITE_TIMEOUT, align 4
  %343 = sdiv i32 %342, 1000
  %344 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* @WRITE_TIMEOUT, align 4
  %346 = call i32 @Sleep(i32 %345)
  %347 = load i32*, i32** %3, align 8
  %348 = load i32, i32* @FILE_BEGIN, align 4
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = call i32 @SetFilePointerEx(i32* %347, i64 %350, i32* null, i32 %348)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %339
  %354 = call i32 (...) @WindowsErrorString()
  %355 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %354)
  br label %384

356:                                              ; preds = %339
  br label %364

357:                                              ; preds = %335
  %358 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %359 = load i32, i32* @FACILITY_STORAGE, align 4
  %360 = call i32 @FAC(i32 %359)
  %361 = or i32 %358, %360
  %362 = load i32, i32* @ERROR_WRITE_FAULT, align 4
  %363 = or i32 %361, %362
  store i32 %363, i32* @FormatStatus, align 4
  br label %384

364:                                              ; preds = %356
  %365 = call i32 @Sleep(i32 200)
  br label %366

366:                                              ; preds = %364
  %367 = load i32, i32* %17, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %17, align 4
  br label %304

369:                                              ; preds = %320, %304
  %370 = load i32, i32* %17, align 4
  %371 = load i32, i32* @WRITE_RETRIES, align 4
  %372 = icmp sgt i32 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  br label %384

374:                                              ; preds = %369
  br label %375

375:                                              ; preds = %374, %286
  %376 = load i64, i64* %9, align 8
  %377 = load i64, i64* %12, align 8
  %378 = add nsw i64 %377, %376
  store i64 %378, i64* %12, align 8
  br label %147

379:                                              ; preds = %192, %147
  br label %380

380:                                              ; preds = %379, %71
  %381 = load i32*, i32** %3, align 8
  %382 = call i32 @RefreshDriveLayout(i32* %381)
  %383 = load i64, i64* @TRUE, align 8
  store i64 %383, i64* %6, align 8
  br label %384

384:                                              ; preds = %380, %373, %357, %353, %298, %247, %180, %129, %99, %62
  %385 = load i32*, i32** %15, align 8
  %386 = call i32 @safe_mm_free(i32* %385)
  %387 = load i32*, i32** %16, align 8
  %388 = call i32 @safe_mm_free(i32* %387)
  %389 = load i64, i64* %6, align 8
  ret i64 %389
}

declare dso_local i32 @SetFilePointerEx(i32*, i64, i32*, i32) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @UpdateProgressWithInfoInit(i32*, i64) #1

declare dso_local i32 @bled_init(i32, i32, i32*) #1

declare dso_local i64 @bled_uncompress_with_handles(i32*, i32*, i64) #1

declare dso_local i32 @bled_exit(...) #1

declare dso_local i64 @SCODE_CODE(i32) #1

declare dso_local i32 @FAC(i32) #1

declare dso_local i64 @_mm_malloc(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @UpdateProgressWithInfo(i32, i32, i64, i64) #1

declare dso_local i64 @ReadFile(i32*, i32*, i64, i64*, i32*) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i64 @WriteFile(i32*, i32*, i64, i64*, i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @RefreshDriveLayout(i32*) #1

declare dso_local i32 @safe_mm_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
