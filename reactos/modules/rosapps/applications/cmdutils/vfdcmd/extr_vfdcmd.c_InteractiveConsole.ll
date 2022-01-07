; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_InteractiveConsole.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vfdcmd/extr_vfdcmd.c_InteractiveConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@VFD_PRODUCT_DESC = common dso_local global i32 0, align 4
@MSG_CONSOLE_HINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@help_progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"[VFD] \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"attrib\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"/d\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@VFD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InteractiveConsole() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8*], align 16
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @SetConsoleCtrlHandler(i32* null, i32 %10)
  %12 = load i32, i32* @VFD_PRODUCT_DESC, align 4
  %13 = call i32 @SetConsoleTitle(i32 %12)
  %14 = call i32 @Version(i32* null)
  %15 = load i32, i32* @MSG_CONSOLE_HINT, align 4
  %16 = call i32 @PrintMessage(i32 %15)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @help_progname, align 8
  br label %17

17:                                               ; preds = %370, %74, %65, %56, %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = load i32, i32* @stdin, align 4
  %22 = call i32 @fflush(i32 %21)
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %24 = load i32, i32* @stdin, align 4
  %25 = call i8* @fgets(i8* %23, i32 1024, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %372

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br label %46

46:                                               ; preds = %41, %36, %31
  %47 = phi i1 [ true, %36 ], [ true, %31 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %31

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %17

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @_strnicmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @_strnicmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61, %57
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @system(i8* %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %17

69:                                               ; preds = %61
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i32 @system(i8* %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %17

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  %81 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %82 = call i32 @ZeroMemory(i8** %81, i32 80)
  br label %83

83:                                               ; preds = %179, %80
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %87
  store i8* %84, i8** %88, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 34
  br i1 %92, label %98, label %93

93:                                               ; preds = %83
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 39
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %83
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  %101 = load i8, i8* %99, align 1
  store i8 %101, i8* %4, align 1
  br label %103

102:                                              ; preds = %93
  store i8 32, i8* %4, align 1
  br label %103

103:                                              ; preds = %102, %98
  br label %104

104:                                              ; preds = %141, %103
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 10
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi i1 [ false, %104 ], [ %113, %109 ]
  br i1 %115, label %116, label %144

116:                                              ; preds = %114
  %117 = load i8, i8* %4, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 32
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 9
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %5, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %120
  br label %144

131:                                              ; preds = %125
  br label %141

132:                                              ; preds = %116
  %133 = load i8*, i8** %5, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8, i8* %4, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i8 32, i8* %4, align 1
  br label %140

140:                                              ; preds = %139, %132
  br label %141

141:                                              ; preds = %140, %131
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %5, align 8
  br label %104

144:                                              ; preds = %130, %114
  %145 = load i8*, i8** %5, align 8
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %5, align 8
  store i8 0, i8* %149, align 1
  br label %151

151:                                              ; preds = %148, %144
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i8*, i8** %5, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 32
  br i1 %156, label %167, label %157

157:                                              ; preds = %152
  %158 = load i8*, i8** %5, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 9
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load i8*, i8** %5, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 10
  br label %167

167:                                              ; preds = %162, %157, %152
  %168 = phi i1 [ true, %157 ], [ true, %152 ], [ %166, %162 ]
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %5, align 8
  br label %152

172:                                              ; preds = %167
  %173 = load i8*, i8** %5, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %183

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %2, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp ult i64 %181, 10
  br i1 %182, label %83, label %183

183:                                              ; preds = %179, %177
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %185 = load i8*, i8** %184, align 16
  %186 = call i64 @_stricmp(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %190 = load i8*, i8** %189, align 16
  %191 = call i64 @_stricmp(i8* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %195 = load i8*, i8** %194, align 16
  %196 = call i64 @_stricmp(i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193, %188, %183
  br label %372

199:                                              ; preds = %193
  %200 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %201 = load i8*, i8** %200, align 16
  %202 = call i64 @_stricmp(i8* %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %206 = load i8*, i8** %205, align 16
  %207 = call i64 @_stricmp(i8* %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %321, label %209

209:                                              ; preds = %204, %199
  %210 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %308

213:                                              ; preds = %209
  %214 = load i32, i32* @MAX_PATH, align 4
  %215 = zext i32 %214 to i64
  %216 = call i8* @llvm.stacksave()
  store i8* %216, i8** %6, align 8
  %217 = alloca i8, i64 %215, align 16
  store i64 %215, i64* %7, align 8
  %218 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i64 @_stricmp(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  store i32 1, i32* %8, align 4
  br label %224

223:                                              ; preds = %213
  store i32 2, i32* %8, align 4
  br label %224

224:                                              ; preds = %223, %222
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %226
  %228 = load i8*, i8** %227, align 8
  store i8* %228, i8** %5, align 8
  %229 = load i8*, i8** %5, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 34
  br i1 %232, label %238, label %233

233:                                              ; preds = %224
  %234 = load i8*, i8** %5, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 39
  br i1 %237, label %238, label %269

238:                                              ; preds = %233, %224
  %239 = load i8*, i8** %5, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %5, align 8
  br label %241

241:                                              ; preds = %259, %238
  %242 = load i8*, i8** %5, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %241
  %247 = load i8*, i8** %5, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %249, %255
  br label %257

257:                                              ; preds = %246, %241
  %258 = phi i1 [ false, %241 ], [ %256, %246 ]
  br i1 %258, label %259, label %262

259:                                              ; preds = %257
  %260 = load i8*, i8** %5, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %5, align 8
  br label %241

262:                                              ; preds = %257
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %265, align 8
  %268 = load i8*, i8** %5, align 8
  store i8 0, i8* %268, align 1
  br label %290

269:                                              ; preds = %233
  br label %270

270:                                              ; preds = %275, %269
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* %2, align 4
  %273 = sub nsw i32 %272, 1
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %289

275:                                              ; preds = %270
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %277
  %279 = load i8*, i8** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strlen(i8* %283)
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %279, i64 %285
  store i8 32, i8* %286, align 1
  %287 = load i32, i32* %8, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %8, align 4
  br label %270

289:                                              ; preds = %270
  br label %290

290:                                              ; preds = %289, %262
  %291 = load i8*, i8** %5, align 8
  %292 = call i32 @ConvertPathCase(i8* %291, i8* %217)
  %293 = call i32 @SetCurrentDirectory(i8* %217)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %306, label %295

295:                                              ; preds = %290
  %296 = call i64 (...) @GetLastError()
  store i64 %296, i64* %9, align 8
  %297 = load i64, i64* %9, align 8
  %298 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %295
  %301 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  store i64 %301, i64* %9, align 8
  br label %302

302:                                              ; preds = %300, %295
  %303 = load i64, i64* %9, align 8
  %304 = call i8* @SystemError(i64 %303)
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %304)
  br label %306

306:                                              ; preds = %302, %290
  %307 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %307)
  br label %320

308:                                              ; preds = %209
  %309 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %310 = call i32 @GetCurrentDirectory(i32 1024, i8* %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = call i64 (...) @GetLastError()
  %314 = call i8* @SystemError(i64 %313)
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %314)
  br label %319

316:                                              ; preds = %308
  %317 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %317)
  br label %319

319:                                              ; preds = %316, %312
  br label %320

320:                                              ; preds = %319, %306
  br label %369

321:                                              ; preds = %204
  %322 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %323 = load i8*, i8** %322, align 16
  %324 = load i8, i8* %323, align 1
  %325 = call i64 @isalpha(i8 signext %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %364

327:                                              ; preds = %321
  %328 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %329 = load i8*, i8** %328, align 16
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp eq i32 %332, 58
  br i1 %333, label %334, label %364

334:                                              ; preds = %327
  %335 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %336 = load i8*, i8** %335, align 16
  %337 = getelementptr inbounds i8, i8* %336, i64 2
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %364

341:                                              ; preds = %334
  %342 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %343 = load i8*, i8** %342, align 16
  %344 = load i8, i8* %343, align 1
  %345 = call i64 @toupper(i8 signext %344)
  %346 = trunc i64 %345 to i8
  %347 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %348 = load i8*, i8** %347, align 16
  store i8 %346, i8* %348, align 1
  %349 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %350 = load i8*, i8** %349, align 16
  %351 = getelementptr inbounds i8, i8* %350, i64 2
  store i8 92, i8* %351, align 1
  %352 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %353 = load i8*, i8** %352, align 16
  %354 = getelementptr inbounds i8, i8* %353, i64 3
  store i8 0, i8* %354, align 1
  %355 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %356 = load i8*, i8** %355, align 16
  %357 = call i32 @SetCurrentDirectory(i8* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %341
  %360 = call i64 (...) @GetLastError()
  %361 = call i8* @SystemError(i64 %360)
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %361)
  br label %363

363:                                              ; preds = %359, %341
  br label %368

364:                                              ; preds = %334, %327, %321
  %365 = load i32, i32* %2, align 4
  %366 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %367 = call i32 @ProcessCommandLine(i32 %365, i8** %366)
  br label %368

368:                                              ; preds = %364, %363
  br label %369

369:                                              ; preds = %368, %320
  br label %370

370:                                              ; preds = %369
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %17

372:                                              ; preds = %198, %28
  %373 = load i32, i32* @VFD_OK, align 4
  ret i32 %373
}

declare dso_local i32 @SetConsoleCtrlHandler(i32*, i32) #1

declare dso_local i32 @SetConsoleTitle(i32) #1

declare dso_local i32 @Version(i32*) #1

declare dso_local i32 @PrintMessage(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @ZeroMemory(i8**, i32) #1

declare dso_local i64 @_stricmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ConvertPathCase(i8*, i8*) #1

declare dso_local i32 @SetCurrentDirectory(i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i8* @SystemError(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @GetCurrentDirectory(i32, i8*) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @toupper(i8 signext) #1

declare dso_local i32 @ProcessCommandLine(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
