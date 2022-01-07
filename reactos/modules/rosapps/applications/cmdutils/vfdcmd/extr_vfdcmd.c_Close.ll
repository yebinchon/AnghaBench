; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Close.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPERATION_ASK = common dso_local global i64 0, align 8
@TARGET_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"/f\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"/force\00", align 1
@MSG_DUPLICATE_ARGS = common dso_local global i32 0, align 4
@VFD_NG = common dso_local global i32 0, align 4
@OPERATION_FORCE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"/q\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/quit\00", align 1
@OPERATION_QUIT = common dso_local global i64 0, align 8
@VFD_MAXIMUM_DEVICES = common dso_local global i64 0, align 8
@MSG_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@MSG_HINT_CLOSE = common dso_local global i32 0, align 4
@help_progname = common dso_local global i64 0, align 8
@MSG_TARGET_NOTICE = common dso_local global i32 0, align 4
@driver_state = common dso_local global i64 0, align 8
@VFD_NOT_INSTALLED = common dso_local global i64 0, align 8
@MSG_NOT_INSTALLED = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@MSG_NOT_STARTED = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MSG_ACCESS_NG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@VFD_MEDIA_NONE = common dso_local global i32 0, align 4
@VFD_FLAG_DATA_MODIFIED = common dso_local global i32 0, align 4
@MSG_MEDIA_MODIFIED = common dso_local global i32 0, align 4
@MSG_CLOSE_FORCE = common dso_local global i32 0, align 4
@MSG_CLOSE_QUIT = common dso_local global i32 0, align 4
@MSG_CLOSE_CONFIRM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"yn\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@MSG_LOCK_NG = common dso_local global i32 0, align 4
@MSG_RETRY_CANCEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@MSG_RETRY_FORCE_CANCEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"rfc\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSG_CLOSE_OK = common dso_local global i32 0, align 4
@ERROR_NOT_READY = common dso_local global i32 0, align 4
@MSG_CLOSE_NG = common dso_local global i32 0, align 4
@VFD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Close(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %12 = load i64, i64* @OPERATION_ASK, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* @TARGET_NONE, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* @TARGET_NONE, align 8
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %132, %1
  %16 = load i8**, i8*** %3, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %135

24:                                               ; preds = %22
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @_stricmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8**, i8*** %3, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @_stricmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29, %24
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @OPERATION_ASK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, ...) @PrintMessage(i32 %39, i8* %41)
  %43 = load i32, i32* @VFD_NG, align 4
  store i32 %43, i32* %2, align 4
  br label %343

44:                                               ; preds = %34
  %45 = load i64, i64* @OPERATION_FORCE, align 8
  store i64 %45, i64* %4, align 8
  br label %132

46:                                               ; preds = %29
  %47 = load i8**, i8*** %3, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @_stricmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8**, i8*** %3, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @_stricmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %51, %46
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @OPERATION_ASK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %62 = load i8**, i8*** %3, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, ...) @PrintMessage(i32 %61, i8* %63)
  %65 = load i32, i32* @VFD_NG, align 4
  store i32 %65, i32* %2, align 4
  br label %343

66:                                               ; preds = %56
  %67 = load i64, i64* @OPERATION_QUIT, align 8
  store i64 %67, i64* %4, align 8
  br label %131

68:                                               ; preds = %51
  %69 = load i8**, i8*** %3, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @isalnum(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i8**, i8*** %3, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 42
  br i1 %79, label %80, label %121

80:                                               ; preds = %74, %68
  %81 = load i8**, i8*** %3, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 58
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load i8**, i8*** %3, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %87, %80
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @TARGET_NONE, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* @MSG_DUPLICATE_ARGS, align 4
  %100 = load i8**, i8*** %3, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32, ...) @PrintMessage(i32 %99, i8* %101)
  %103 = load i32, i32* @VFD_NG, align 4
  store i32 %103, i32* %2, align 4
  br label %343

104:                                              ; preds = %94
  %105 = load i8**, i8*** %3, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 42
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  store i64 48, i64* %5, align 8
  %111 = load i64, i64* @VFD_MAXIMUM_DEVICES, align 8
  %112 = add nsw i64 48, %111
  store i64 %112, i64* %6, align 8
  br label %120

113:                                              ; preds = %104
  %114 = load i8**, i8*** %3, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @toupper(i8 signext %116)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %113, %110
  br label %130

121:                                              ; preds = %87, %74
  %122 = load i32, i32* @MSG_UNKNOWN_OPTION, align 4
  %123 = load i8**, i8*** %3, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i32, ...) @PrintMessage(i32 %122, i8* %124)
  %126 = load i32, i32* @MSG_HINT_CLOSE, align 4
  %127 = load i64, i64* @help_progname, align 8
  %128 = call i32 (i32, ...) @PrintMessage(i32 %126, i64 %127)
  %129 = load i32, i32* @VFD_NG, align 4
  store i32 %129, i32* %2, align 4
  br label %343

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %66
  br label %132

132:                                              ; preds = %131, %44
  %133 = load i8**, i8*** %3, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %3, align 8
  br label %15

135:                                              ; preds = %22
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @TARGET_NONE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  store i64 48, i64* %5, align 8
  store i64 49, i64* %6, align 8
  %140 = load i32, i32* @MSG_TARGET_NOTICE, align 4
  %141 = load i64, i64* %5, align 8
  %142 = call i32 (i32, ...) @PrintMessage(i32 %140, i64 %141)
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i64, i64* @driver_state, align 8
  %145 = load i64, i64* @VFD_NOT_INSTALLED, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* @MSG_NOT_INSTALLED, align 4
  %149 = call i32 (i32, ...) @PrintMessage(i32 %148)
  %150 = load i32, i32* @VFD_NG, align 4
  store i32 %150, i32* %2, align 4
  br label %343

151:                                              ; preds = %143
  %152 = load i64, i64* @driver_state, align 8
  %153 = load i64, i64* @SERVICE_RUNNING, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* @MSG_NOT_STARTED, align 4
  %157 = call i32 (i32, ...) @PrintMessage(i32 %156)
  %158 = load i32, i32* @VFD_NG, align 4
  store i32 %158, i32* %2, align 4
  br label %343

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %338, %213, %206, %183, %159
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* %6, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %341

164:                                              ; preds = %160
  %165 = load i64, i64* %5, align 8
  %166 = call i64 @VfdOpenDevice(i64 %165)
  store i64 %166, i64* %7, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %164
  %171 = call i32 (...) @GetLastError()
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* @MSG_ACCESS_NG, align 4
  %173 = load i64, i64* %5, align 8
  %174 = call i32 (i32, ...) @PrintMessage(i32 %172, i64 %173)
  %175 = load i32, i32* %10, align 4
  %176 = call i8* @SystemError(i32 %175)
  %177 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %176)
  %178 = load i64, i64* %4, align 8
  %179 = load i64, i64* @OPERATION_FORCE, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %170
  %182 = load i32, i32* @VFD_NG, align 4
  store i32 %182, i32* %2, align 4
  br label %343

183:                                              ; preds = %170
  %184 = load i64, i64* %5, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %5, align 8
  br label %160

186:                                              ; preds = %164
  %187 = load i64, i64* %7, align 8
  %188 = call i32 @VfdGetImageInfo(i64 %187, i32* null, i32* null, i32* %8, i32* %9, i32* null, i32* null)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @ERROR_SUCCESS, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %186
  %193 = load i32, i32* @MSG_ACCESS_NG, align 4
  %194 = load i64, i64* %5, align 8
  %195 = call i32 (i32, ...) @PrintMessage(i32 %193, i64 %194)
  %196 = load i32, i32* %10, align 4
  %197 = call i8* @SystemError(i32 %196)
  %198 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %197)
  %199 = load i64, i64* %7, align 8
  %200 = call i32 @CloseHandle(i64 %199)
  %201 = load i64, i64* %4, align 8
  %202 = load i64, i64* @OPERATION_FORCE, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %192
  %205 = load i32, i32* @VFD_NG, align 4
  store i32 %205, i32* %2, align 4
  br label %343

206:                                              ; preds = %192
  %207 = load i64, i64* %5, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %5, align 8
  br label %160

209:                                              ; preds = %186
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @VFD_MEDIA_NONE, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load i64, i64* %7, align 8
  %215 = call i32 @CloseHandle(i64 %214)
  %216 = load i64, i64* %5, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %5, align 8
  br label %160

218:                                              ; preds = %209
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @VFD_FLAG_DATA_MODIFIED, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %255

223:                                              ; preds = %218
  %224 = load i32, i32* @MSG_MEDIA_MODIFIED, align 4
  %225 = load i64, i64* %5, align 8
  %226 = call i32 (i32, ...) @PrintMessage(i32 %224, i64 %225)
  %227 = load i64, i64* %4, align 8
  %228 = load i64, i64* @OPERATION_FORCE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = load i32, i32* @MSG_CLOSE_FORCE, align 4
  %232 = call i32 (i32, ...) @PrintMessage(i32 %231)
  br label %254

233:                                              ; preds = %223
  %234 = load i64, i64* %4, align 8
  %235 = load i64, i64* @OPERATION_QUIT, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load i32, i32* @MSG_CLOSE_QUIT, align 4
  %239 = call i32 (i32, ...) @PrintMessage(i32 %238)
  %240 = load i64, i64* %7, align 8
  %241 = call i32 @CloseHandle(i64 %240)
  %242 = load i32, i32* @VFD_NG, align 4
  store i32 %242, i32* %2, align 4
  br label %343

243:                                              ; preds = %233
  %244 = load i32, i32* @MSG_CLOSE_CONFIRM, align 4
  %245 = call signext i8 @InputChar(i32 %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 110
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = load i64, i64* %7, align 8
  %250 = call i32 @CloseHandle(i64 %249)
  %251 = load i32, i32* @VFD_NG, align 4
  store i32 %251, i32* %2, align 4
  br label %343

252:                                              ; preds = %243
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253, %230
  br label %255

255:                                              ; preds = %254, %218
  br label %256

256:                                              ; preds = %306, %255
  %257 = load i64, i64* %7, align 8
  %258 = load i64, i64* %4, align 8
  %259 = load i64, i64* @OPERATION_FORCE, align 8
  %260 = icmp eq i64 %258, %259
  %261 = zext i1 %260 to i32
  %262 = call i32 @VfdCloseImage(i64 %257, i32 %261)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %310

266:                                              ; preds = %256
  %267 = load i32, i32* @MSG_LOCK_NG, align 4
  %268 = load i64, i64* %5, align 8
  %269 = call i32 (i32, ...) @PrintMessage(i32 %267, i64 %268)
  %270 = load i64, i64* %4, align 8
  %271 = load i64, i64* @OPERATION_QUIT, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load i64, i64* %7, align 8
  %275 = call i32 @CloseHandle(i64 %274)
  %276 = load i32, i32* @VFD_NG, align 4
  store i32 %276, i32* %2, align 4
  br label %343

277:                                              ; preds = %266
  %278 = load i64, i64* %4, align 8
  %279 = load i64, i64* @OPERATION_ASK, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %308

281:                                              ; preds = %277
  %282 = call i64 (...) @IS_WINDOWS_NT()
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32, i32* @MSG_RETRY_CANCEL, align 4
  %286 = call signext i8 @InputChar(i32 %285, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %287 = sext i8 %286 to i32
  store i32 %287, i32* %11, align 4
  br label %292

288:                                              ; preds = %281
  %289 = load i32, i32* @MSG_RETRY_FORCE_CANCEL, align 4
  %290 = call signext i8 @InputChar(i32 %289, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %291 = sext i8 %290 to i32
  store i32 %291, i32* %11, align 4
  br label %292

292:                                              ; preds = %288, %284
  %293 = load i32, i32* %11, align 4
  %294 = icmp eq i32 %293, 102
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load i64, i64* %7, align 8
  %297 = load i32, i32* @TRUE, align 4
  %298 = call i32 @VfdCloseImage(i64 %296, i32 %297)
  store i32 %298, i32* %10, align 4
  br label %307

299:                                              ; preds = %292
  %300 = load i32, i32* %11, align 4
  %301 = icmp eq i32 %300, 99
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load i64, i64* %7, align 8
  %304 = call i32 @CloseHandle(i64 %303)
  %305 = load i32, i32* @VFD_NG, align 4
  store i32 %305, i32* %2, align 4
  br label %343

306:                                              ; preds = %299
  br label %256

307:                                              ; preds = %295
  br label %308

308:                                              ; preds = %307, %277
  br label %309

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309, %256
  %311 = load i64, i64* %7, align 8
  %312 = call i32 @CloseHandle(i64 %311)
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* @ERROR_SUCCESS, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %310
  %317 = load i32, i32* @MSG_CLOSE_OK, align 4
  %318 = load i64, i64* %5, align 8
  %319 = call i32 (i32, ...) @PrintMessage(i32 %317, i64 %318)
  br label %338

320:                                              ; preds = %310
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* @ERROR_NOT_READY, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %337

324:                                              ; preds = %320
  %325 = load i32, i32* @MSG_CLOSE_NG, align 4
  %326 = load i64, i64* %5, align 8
  %327 = call i32 (i32, ...) @PrintMessage(i32 %325, i64 %326)
  %328 = load i32, i32* %10, align 4
  %329 = call i8* @SystemError(i32 %328)
  %330 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %329)
  %331 = load i64, i64* %4, align 8
  %332 = load i64, i64* @OPERATION_FORCE, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %324
  %335 = load i32, i32* @VFD_NG, align 4
  store i32 %335, i32* %2, align 4
  br label %343

336:                                              ; preds = %324
  br label %337

337:                                              ; preds = %336, %320
  br label %338

338:                                              ; preds = %337, %316
  %339 = load i64, i64* %5, align 8
  %340 = add nsw i64 %339, 1
  store i64 %340, i64* %5, align 8
  br label %160

341:                                              ; preds = %160
  %342 = load i32, i32* @VFD_OK, align 4
  store i32 %342, i32* %2, align 4
  br label %343

343:                                              ; preds = %341, %334, %302, %273, %248, %237, %204, %181, %155, %147, %121, %98, %60, %38
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @_stricmp(i8*, i8*) #1

declare dso_local i32 @PrintMessage(i32, ...) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @toupper(i8 signext) #1

declare dso_local i64 @VfdOpenDevice(i64) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @SystemError(i32) #1

declare dso_local i32 @VfdGetImageInfo(i64, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local signext i8 @InputChar(i32, i8*) #1

declare dso_local i32 @VfdCloseImage(i64, i32) #1

declare dso_local i64 @IS_WINDOWS_NT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
