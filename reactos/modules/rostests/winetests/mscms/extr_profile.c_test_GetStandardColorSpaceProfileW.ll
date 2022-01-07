; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetStandardColorSpaceProfileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetStandardColorSpaceProfileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@machineW = common dso_local global i32* null, align 8
@LCS_sRGB = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"GetStandardColorSpaceProfileW() returns %d (GLE=%d)\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"GetStandardColorSpaceProfileW succeeded\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"GetStandardColorSpaceProfileW() returns GLE=%u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"GetStandardColorSpaceProfileW() failed (%d)\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Not enough rights for SetStandardColorSpaceProfileW\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"SetStandardColorSpaceProfileW() failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetStandardColorSpaceProfileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetStandardColorSpaceProfileW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = mul nuw i64 4, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = call i32 @SetLastError(i32 -87118866)
  %23 = load i32*, i32** @machineW, align 8
  %24 = load i32, i32* @LCS_sRGB, align 4
  %25 = call i32 @pGetStandardColorSpaceProfileW(i32* %23, i32 %24, i32* %16, i32* %4)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = call i32 (...) @GetLastError()
  %30 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %1
  %33 = phi i1 [ false, %1 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = mul nuw i64 4, %15
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = call i32 @SetLastError(i32 -87118866)
  %41 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 -1, i32* %16, i32* %4)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %32
  %45 = call i32 (...) @GetLastError()
  %46 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %47 = icmp eq i32 %45, %46
  br label %48

48:                                               ; preds = %44, %32
  %49 = phi i1 [ false, %32 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = mul nuw i64 4, %15
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = call i32 @SetLastError(i32 -87118866)
  %57 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 0, i32* %16, i32* %4)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %48
  %61 = call i32 (...) @GetLastError()
  %62 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60, %48
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @broken(i32 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ true, %60 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  %74 = mul nuw i64 4, %15
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = call i32 @SetLastError(i32 -87118866)
  %77 = load i32, i32* @LCS_sRGB, align 4
  %78 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 %77, i32* null, i32* %4)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i32, i32* %3, align 4
  %83 = call i64 @broken(i32 %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %81, %68
  %86 = phi i1 [ true, %68 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %89 = call i32 (...) @GetLastError()
  %90 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %85
  %93 = call i32 (...) @GetLastError()
  %94 = icmp eq i32 %93, -87118866
  %95 = zext i1 %94 to i32
  %96 = call i64 @broken(i32 %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %92, %85
  %99 = phi i1 [ true, %85 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 (...) @GetLastError()
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = mul nuw i64 4, %15
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %4, align 4
  %105 = call i32 @SetLastError(i32 -87118866)
  %106 = load i32, i32* @LCS_sRGB, align 4
  %107 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 %106, i32* %16, i32* null)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %98
  %111 = call i32 (...) @GetLastError()
  %112 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %113 = icmp eq i32 %111, %112
  br label %114

114:                                              ; preds = %110, %98
  %115 = phi i1 [ false, %98 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %3, align 4
  %118 = call i32 (...) @GetLastError()
  %119 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  store i32 0, i32* %4, align 4
  %120 = call i32 @SetLastError(i32 -87118866)
  %121 = load i32, i32* @LCS_sRGB, align 4
  %122 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 %121, i32* %16, i32* %4)
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* %3, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i32, i32* %3, align 4
  %127 = call i64 @broken(i32 %126)
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %125, %114
  %130 = phi i1 [ true, %114 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %133 = call i32 (...) @GetLastError()
  %134 = load i32, i32* @ERROR_MORE_DATA, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %146, label %136

136:                                              ; preds = %129
  %137 = call i32 (...) @GetLastError()
  %138 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  %141 = call i32 (...) @GetLastError()
  %142 = icmp eq i32 %141, -87118866
  %143 = zext i1 %142 to i32
  %144 = call i64 @broken(i32 %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %140, %136, %129
  %147 = phi i1 [ true, %136 ], [ true, %129 ], [ %145, %140 ]
  %148 = zext i1 %147 to i32
  %149 = call i32 (...) @GetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  store i32 0, i32* %4, align 4
  %151 = call i32 @SetLastError(i32 -87118866)
  %152 = load i32*, i32** @machineW, align 8
  %153 = call i32 @pGetStandardColorSpaceProfileW(i32* %152, i32 0, i32* %16, i32* %4)
  store i32 %153, i32* %3, align 4
  %154 = load i32, i32* %3, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %146
  %157 = call i32 (...) @GetLastError()
  %158 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = call i32 (...) @GetLastError()
  %162 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %163 = icmp eq i32 %161, %162
  br label %164

164:                                              ; preds = %160, %156
  %165 = phi i1 [ true, %156 ], [ %163, %160 ]
  br label %166

166:                                              ; preds = %164, %146
  %167 = phi i1 [ false, %146 ], [ %165, %164 ]
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %3, align 4
  %170 = call i32 (...) @GetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %169, i32 %170)
  %172 = call i32 @SetLastError(i32 -87118866)
  %173 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 0, i32* %16, i32* null)
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* %3, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %166
  %177 = call i32 (...) @GetLastError()
  %178 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %179 = icmp eq i32 %177, %178
  br label %180

180:                                              ; preds = %176, %166
  %181 = phi i1 [ false, %166 ], [ %179, %176 ]
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %3, align 4
  %184 = call i32 (...) @GetLastError()
  %185 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %183, i32 %184)
  store i32 0, i32* %4, align 4
  %186 = call i32 @SetLastError(i32 -87118866)
  %187 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 0, i32* null, i32* %4)
  store i32 %187, i32* %3, align 4
  %188 = load i32, i32* %3, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %180
  %191 = load i32, i32* %3, align 4
  %192 = call i64 @broken(i32 %191)
  %193 = icmp ne i64 %192, 0
  br label %194

194:                                              ; preds = %190, %180
  %195 = phi i1 [ true, %180 ], [ %193, %190 ]
  %196 = zext i1 %195 to i32
  %197 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %198 = call i32 (...) @GetLastError()
  %199 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %211, label %201

201:                                              ; preds = %194
  %202 = call i32 (...) @GetLastError()
  %203 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %201
  %206 = call i32 (...) @GetLastError()
  %207 = icmp eq i32 %206, -87118866
  %208 = zext i1 %207 to i32
  %209 = call i64 @broken(i32 %208)
  %210 = icmp ne i64 %209, 0
  br label %211

211:                                              ; preds = %205, %201, %194
  %212 = phi i1 [ true, %201 ], [ true, %194 ], [ %210, %205 ]
  %213 = zext i1 %212 to i32
  %214 = call i32 (...) @GetLastError()
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  %216 = mul nuw i64 4, %15
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %4, align 4
  %218 = call i32 @SetLastError(i32 -87118866)
  %219 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 0, i32* %16, i32* %4)
  store i32 %219, i32* %3, align 4
  %220 = load i32, i32* %3, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %211
  %223 = call i32 (...) @GetLastError()
  %224 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %225 = icmp eq i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i32, i32* %3, align 4
  %228 = call i32 (...) @GetLastError()
  %229 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %227, i32 %228)
  br label %246

230:                                              ; preds = %211
  %231 = load i32, i32* @CP_ACP, align 4
  %232 = mul nuw i64 4, %18
  %233 = trunc i64 %232 to i32
  %234 = call i32 @WideCharToMultiByte(i32 %231, i32 0, i32* %16, i32 -1, i32* %19, i32 %233, i32* null, i32* null)
  %235 = call i32 @lstrcmpiA(i32* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %230
  %238 = call i32 (...) @GetLastError()
  %239 = icmp eq i32 %238, -87118866
  br label %240

240:                                              ; preds = %237, %230
  %241 = phi i1 [ false, %230 ], [ %239, %237 ]
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %3, align 4
  %244 = call i32 (...) @GetLastError()
  %245 = call i32 (i32, i8*, ...) @ok(i32 %242, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %240, %222
  %247 = mul nuw i64 4, %11
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %4, align 4
  %249 = load i32, i32* @LCS_sRGB, align 4
  %250 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 %249, i32* %13, i32* %4)
  store i32 %250, i32* %3, align 4
  %251 = load i32, i32* %3, align 4
  %252 = call i32 (...) @GetLastError()
  %253 = call i32 (i32, i8*, ...) @ok(i32 %251, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  %254 = call i32 @SetLastError(i32 -559038737)
  %255 = load i32, i32* @LCS_sRGB, align 4
  %256 = load i32*, i32** %2, align 8
  %257 = call i32 @pSetStandardColorSpaceProfileW(i32* null, i32 %255, i32* %256)
  store i32 %257, i32* %3, align 4
  %258 = load i32, i32* %3, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %246
  %261 = call i32 (...) @GetLastError()
  %262 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = call i32 @skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %282

266:                                              ; preds = %260, %246
  %267 = load i32, i32* %3, align 4
  %268 = call i32 (...) @GetLastError()
  %269 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %268)
  %270 = mul nuw i64 4, %15
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %4, align 4
  %272 = load i32, i32* @LCS_sRGB, align 4
  %273 = call i32 @pGetStandardColorSpaceProfileW(i32* null, i32 %272, i32* %16, i32* %4)
  store i32 %273, i32* %3, align 4
  %274 = load i32, i32* %3, align 4
  %275 = call i32 (...) @GetLastError()
  %276 = call i32 (i32, i8*, ...) @ok(i32 %274, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %275)
  %277 = load i32, i32* @LCS_sRGB, align 4
  %278 = call i32 @pSetStandardColorSpaceProfileW(i32* null, i32 %277, i32* %13)
  store i32 %278, i32* %3, align 4
  %279 = load i32, i32* %3, align 4
  %280 = call i32 (...) @GetLastError()
  %281 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %280)
  store i32 0, i32* %9, align 4
  br label %282

282:                                              ; preds = %266, %264
  %283 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %283)
  %284 = load i32, i32* %9, align 4
  switch i32 %284, label %286 [
    i32 0, label %285
    i32 1, label %285
  ]

285:                                              ; preds = %282, %282
  ret void

286:                                              ; preds = %282
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pGetStandardColorSpaceProfileW(i32*, i32, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @lstrcmpiA(i32*, i8*) #2

declare dso_local i32 @pSetStandardColorSpaceProfileW(i32*, i32, i32*) #2

declare dso_local i32 @skip(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
