; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_seamless.c_seamless_process_line.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_seamless.c_seamless_process_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"seamlessrdp got:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@False = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DESTROYGRP\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SETICON\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"SeamlessRDP SETICON1\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"POSITION\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ZCHANGE\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"STATE\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"SeamlessRDP:%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"SYNCBEGIN\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"SYNCEND\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"HELLO\00", align 1
@SEAMLESSRDP_HELLO_HIDDEN = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"HIDE\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"UNHIDE\00", align 1
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @seamless_process_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seamless_process_line(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @xstrdup(i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @DEBUG_SEAMLESS(i8* %33)
  %35 = call i8* @seamless_get_token(i8** %8)
  store i8* %35, i8** %10, align 8
  %36 = call i8* @seamless_get_token(i8** %8)
  store i8* %36, i8** %11, align 8
  %37 = call i8* @seamless_get_token(i8** %8)
  store i8* %37, i8** %12, align 8
  %38 = call i8* @seamless_get_token(i8** %8)
  store i8* %38, i8** %13, align 8
  %39 = call i8* @seamless_get_token(i8** %8)
  store i8* %39, i8** %14, align 8
  %40 = call i8* @seamless_get_token(i8** %8)
  store i8* %40, i8** %15, align 8
  %41 = call i8* @seamless_get_token(i8** %8)
  store i8* %41, i8** %16, align 8
  %42 = call i8* @seamless_get_token(i8** %8)
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %94, label %46

46:                                               ; preds = %3
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @False, align 4
  store i32 %50, i32* %4, align 4
  br label %497

51:                                               ; preds = %46
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @strtoul(i8* %52, i8** %20, i32 0)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %18, align 8
  %55 = load i8*, i8** %20, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @False, align 4
  store i32 %59, i32* %4, align 4
  br label %497

60:                                               ; preds = %51
  %61 = load i8*, i8** %13, align 8
  %62 = call i8* @strtoul(i8* %61, i8** %20, i32 0)
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* %21, align 8
  %64 = load i8*, i8** %20, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @False, align 4
  store i32 %68, i32* %4, align 4
  br label %497

69:                                               ; preds = %60
  %70 = load i8*, i8** %14, align 8
  %71 = call i8* @strtoul(i8* %70, i8** %20, i32 0)
  %72 = ptrtoint i8* %71 to i64
  store i64 %72, i64* %22, align 8
  %73 = load i8*, i8** %20, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @False, align 4
  store i32 %77, i32* %4, align 4
  br label %497

78:                                               ; preds = %69
  %79 = load i8*, i8** %15, align 8
  %80 = call i8* @strtoul(i8* %79, i8** %20, i32 0)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %19, align 8
  %82 = load i8*, i8** %20, align 8
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @False, align 4
  store i32 %86, i32* %4, align 4
  br label %497

87:                                               ; preds = %78
  %88 = load i32*, i32** %5, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %21, align 8
  %91 = load i64, i64* %22, align 8
  %92 = load i64, i64* %19, align 8
  %93 = call i32 @ui_seamless_create_window(i32* %88, i64 %89, i64 %90, i64 %91, i64 %92)
  br label %493

94:                                               ; preds = %3
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %126, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @False, align 4
  store i32 %102, i32* %4, align 4
  br label %497

103:                                              ; preds = %98
  %104 = load i8*, i8** %12, align 8
  %105 = call i8* @strtoul(i8* %104, i8** %20, i32 0)
  %106 = ptrtoint i8* %105 to i64
  store i64 %106, i64* %18, align 8
  %107 = load i8*, i8** %20, align 8
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @False, align 4
  store i32 %111, i32* %4, align 4
  br label %497

112:                                              ; preds = %103
  %113 = load i8*, i8** %13, align 8
  %114 = call i8* @strtoul(i8* %113, i8** %20, i32 0)
  %115 = ptrtoint i8* %114 to i64
  store i64 %115, i64* %19, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @False, align 4
  store i32 %120, i32* %4, align 4
  br label %497

121:                                              ; preds = %112
  %122 = load i32*, i32** %5, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i64, i64* %19, align 8
  %125 = call i32 @ui_seamless_destroy_window(i32* %122, i64 %123, i64 %124)
  br label %492

126:                                              ; preds = %94
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %158, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %13, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @False, align 4
  store i32 %134, i32* %4, align 4
  br label %497

135:                                              ; preds = %130
  %136 = load i8*, i8** %12, align 8
  %137 = call i8* @strtoul(i8* %136, i8** %20, i32 0)
  %138 = ptrtoint i8* %137 to i64
  store i64 %138, i64* %18, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @False, align 4
  store i32 %143, i32* %4, align 4
  br label %497

144:                                              ; preds = %135
  %145 = load i8*, i8** %13, align 8
  %146 = call i8* @strtoul(i8* %145, i8** %20, i32 0)
  %147 = ptrtoint i8* %146 to i64
  store i64 %147, i64* %19, align 8
  %148 = load i8*, i8** %20, align 8
  %149 = load i8, i8* %148, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* @False, align 4
  store i32 %152, i32* %4, align 4
  br label %497

153:                                              ; preds = %144
  %154 = load i32*, i32** %5, align 8
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* %19, align 8
  %157 = call i32 @ui_seamless_destroy_group(i32* %154, i64 %155, i64 %156)
  br label %491

158:                                              ; preds = %126
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = call i32 @unimpl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %490

164:                                              ; preds = %158
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %232, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %17, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* @False, align 4
  store i32 %172, i32* %4, align 4
  br label %497

173:                                              ; preds = %168
  %174 = load i8*, i8** %12, align 8
  %175 = call i8* @strtoul(i8* %174, i8** %20, i32 0)
  %176 = ptrtoint i8* %175 to i64
  store i64 %176, i64* %18, align 8
  %177 = load i8*, i8** %20, align 8
  %178 = load i8, i8* %177, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* @False, align 4
  store i32 %181, i32* %4, align 4
  br label %497

182:                                              ; preds = %173
  %183 = load i8*, i8** %13, align 8
  %184 = call i32 @strtol(i8* %183, i8** %20, i32 0)
  store i32 %184, i32* %23, align 4
  %185 = load i8*, i8** %20, align 8
  %186 = load i8, i8* %185, align 1
  %187 = icmp ne i8 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* @False, align 4
  store i32 %189, i32* %4, align 4
  br label %497

190:                                              ; preds = %182
  %191 = load i8*, i8** %14, align 8
  %192 = call i32 @strtol(i8* %191, i8** %20, i32 0)
  store i32 %192, i32* %24, align 4
  %193 = load i8*, i8** %20, align 8
  %194 = load i8, i8* %193, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* @False, align 4
  store i32 %197, i32* %4, align 4
  br label %497

198:                                              ; preds = %190
  %199 = load i8*, i8** %15, align 8
  %200 = call i32 @strtol(i8* %199, i8** %20, i32 0)
  store i32 %200, i32* %25, align 4
  %201 = load i8*, i8** %20, align 8
  %202 = load i8, i8* %201, align 1
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* @False, align 4
  store i32 %205, i32* %4, align 4
  br label %497

206:                                              ; preds = %198
  %207 = load i8*, i8** %16, align 8
  %208 = call i32 @strtol(i8* %207, i8** %20, i32 0)
  store i32 %208, i32* %26, align 4
  %209 = load i8*, i8** %20, align 8
  %210 = load i8, i8* %209, align 1
  %211 = icmp ne i8 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* @False, align 4
  store i32 %213, i32* %4, align 4
  br label %497

214:                                              ; preds = %206
  %215 = load i8*, i8** %17, align 8
  %216 = call i8* @strtoul(i8* %215, i8** %20, i32 0)
  %217 = ptrtoint i8* %216 to i64
  store i64 %217, i64* %19, align 8
  %218 = load i8*, i8** %20, align 8
  %219 = load i8, i8* %218, align 1
  %220 = icmp ne i8 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = load i32, i32* @False, align 4
  store i32 %222, i32* %4, align 4
  br label %497

223:                                              ; preds = %214
  %224 = load i32*, i32** %5, align 8
  %225 = load i64, i64* %18, align 8
  %226 = load i32, i32* %23, align 4
  %227 = load i32, i32* %24, align 4
  %228 = load i32, i32* %25, align 4
  %229 = load i32, i32* %26, align 4
  %230 = load i64, i64* %19, align 8
  %231 = call i32 @ui_seamless_move_window(i32* %224, i64 %225, i32 %226, i32 %227, i32 %228, i32 %229, i64 %230)
  br label %489

232:                                              ; preds = %164
  %233 = load i8*, i8** %10, align 8
  %234 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %269, label %236

236:                                              ; preds = %232
  %237 = load i8*, i8** %12, align 8
  %238 = call i8* @strtoul(i8* %237, i8** %20, i32 0)
  %239 = ptrtoint i8* %238 to i64
  store i64 %239, i64* %18, align 8
  %240 = load i8*, i8** %20, align 8
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = load i32, i32* @False, align 4
  store i32 %244, i32* %4, align 4
  br label %497

245:                                              ; preds = %236
  %246 = load i8*, i8** %13, align 8
  %247 = call i8* @strtoul(i8* %246, i8** %20, i32 0)
  %248 = ptrtoint i8* %247 to i64
  store i64 %248, i64* %27, align 8
  %249 = load i8*, i8** %20, align 8
  %250 = load i8, i8* %249, align 1
  %251 = icmp ne i8 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = load i32, i32* @False, align 4
  store i32 %253, i32* %4, align 4
  br label %497

254:                                              ; preds = %245
  %255 = load i8*, i8** %14, align 8
  %256 = call i8* @strtoul(i8* %255, i8** %20, i32 0)
  %257 = ptrtoint i8* %256 to i64
  store i64 %257, i64* %19, align 8
  %258 = load i8*, i8** %20, align 8
  %259 = load i8, i8* %258, align 1
  %260 = icmp ne i8 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = load i32, i32* @False, align 4
  store i32 %262, i32* %4, align 4
  br label %497

263:                                              ; preds = %254
  %264 = load i32*, i32** %5, align 8
  %265 = load i64, i64* %18, align 8
  %266 = load i64, i64* %27, align 8
  %267 = load i64, i64* %19, align 8
  %268 = call i32 @ui_seamless_restack_window(i32* %264, i64 %265, i64 %266, i64 %267)
  br label %488

269:                                              ; preds = %232
  %270 = load i8*, i8** %10, align 8
  %271 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %302, label %273

273:                                              ; preds = %269
  %274 = load i8*, i8** %14, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* @False, align 4
  store i32 %277, i32* %4, align 4
  br label %497

278:                                              ; preds = %273
  %279 = load i8*, i8** %12, align 8
  %280 = call i8* @strtoul(i8* %279, i8** %20, i32 0)
  %281 = ptrtoint i8* %280 to i64
  store i64 %281, i64* %18, align 8
  %282 = load i8*, i8** %20, align 8
  %283 = load i8, i8* %282, align 1
  %284 = icmp ne i8 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %278
  %286 = load i32, i32* @False, align 4
  store i32 %286, i32* %4, align 4
  br label %497

287:                                              ; preds = %278
  %288 = load i8*, i8** %14, align 8
  %289 = call i8* @strtoul(i8* %288, i8** %20, i32 0)
  %290 = ptrtoint i8* %289 to i64
  store i64 %290, i64* %19, align 8
  %291 = load i8*, i8** %20, align 8
  %292 = load i8, i8* %291, align 1
  %293 = icmp ne i8 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %287
  %295 = load i32, i32* @False, align 4
  store i32 %295, i32* %4, align 4
  br label %497

296:                                              ; preds = %287
  %297 = load i32*, i32** %5, align 8
  %298 = load i64, i64* %18, align 8
  %299 = load i8*, i8** %13, align 8
  %300 = load i64, i64* %19, align 8
  %301 = call i32 @ui_seamless_settitle(i32* %297, i64 %298, i8* %299, i64 %300)
  br label %487

302:                                              ; preds = %269
  %303 = load i8*, i8** %10, align 8
  %304 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %344, label %306

306:                                              ; preds = %302
  %307 = load i8*, i8** %14, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %306
  %310 = load i32, i32* @False, align 4
  store i32 %310, i32* %4, align 4
  br label %497

311:                                              ; preds = %306
  %312 = load i8*, i8** %12, align 8
  %313 = call i8* @strtoul(i8* %312, i8** %20, i32 0)
  %314 = ptrtoint i8* %313 to i64
  store i64 %314, i64* %18, align 8
  %315 = load i8*, i8** %20, align 8
  %316 = load i8, i8* %315, align 1
  %317 = icmp ne i8 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %311
  %319 = load i32, i32* @False, align 4
  store i32 %319, i32* %4, align 4
  br label %497

320:                                              ; preds = %311
  %321 = load i8*, i8** %13, align 8
  %322 = call i8* @strtoul(i8* %321, i8** %20, i32 0)
  %323 = ptrtoint i8* %322 to i32
  store i32 %323, i32* %28, align 4
  %324 = load i8*, i8** %20, align 8
  %325 = load i8, i8* %324, align 1
  %326 = icmp ne i8 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %320
  %328 = load i32, i32* @False, align 4
  store i32 %328, i32* %4, align 4
  br label %497

329:                                              ; preds = %320
  %330 = load i8*, i8** %14, align 8
  %331 = call i8* @strtoul(i8* %330, i8** %20, i32 0)
  %332 = ptrtoint i8* %331 to i64
  store i64 %332, i64* %19, align 8
  %333 = load i8*, i8** %20, align 8
  %334 = load i8, i8* %333, align 1
  %335 = icmp ne i8 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %329
  %337 = load i32, i32* @False, align 4
  store i32 %337, i32* %4, align 4
  br label %497

338:                                              ; preds = %329
  %339 = load i32*, i32** %5, align 8
  %340 = load i64, i64* %18, align 8
  %341 = load i32, i32* %28, align 4
  %342 = load i64, i64* %19, align 8
  %343 = call i32 @ui_seamless_setstate(i32* %339, i64 %340, i32 %341, i64 %342)
  br label %486

344:                                              ; preds = %302
  %345 = load i8*, i8** %10, align 8
  %346 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %344
  %349 = load i8*, i8** %6, align 8
  %350 = call i32 @DEBUG_SEAMLESS(i8* %349)
  br label %485

351:                                              ; preds = %344
  %352 = load i8*, i8** %10, align 8
  %353 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %373, label %355

355:                                              ; preds = %351
  %356 = load i8*, i8** %12, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %360, label %358

358:                                              ; preds = %355
  %359 = load i32, i32* @False, align 4
  store i32 %359, i32* %4, align 4
  br label %497

360:                                              ; preds = %355
  %361 = load i8*, i8** %12, align 8
  %362 = call i8* @strtoul(i8* %361, i8** %20, i32 0)
  %363 = ptrtoint i8* %362 to i64
  store i64 %363, i64* %19, align 8
  %364 = load i8*, i8** %20, align 8
  %365 = load i8, i8* %364, align 1
  %366 = icmp ne i8 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %360
  %368 = load i32, i32* @False, align 4
  store i32 %368, i32* %4, align 4
  br label %497

369:                                              ; preds = %360
  %370 = load i32*, i32** %5, align 8
  %371 = load i64, i64* %19, align 8
  %372 = call i32 @ui_seamless_syncbegin(i32* %370, i64 %371)
  br label %484

373:                                              ; preds = %351
  %374 = load i8*, i8** %10, align 8
  %375 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %392, label %377

377:                                              ; preds = %373
  %378 = load i8*, i8** %12, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %377
  %381 = load i32, i32* @False, align 4
  store i32 %381, i32* %4, align 4
  br label %497

382:                                              ; preds = %377
  %383 = load i8*, i8** %12, align 8
  %384 = call i8* @strtoul(i8* %383, i8** %20, i32 0)
  %385 = ptrtoint i8* %384 to i64
  store i64 %385, i64* %19, align 8
  %386 = load i8*, i8** %20, align 8
  %387 = load i8, i8* %386, align 1
  %388 = icmp ne i8 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %382
  %390 = load i32, i32* @False, align 4
  store i32 %390, i32* %4, align 4
  br label %497

391:                                              ; preds = %382
  br label %483

392:                                              ; preds = %373
  %393 = load i8*, i8** %10, align 8
  %394 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %420, label %396

396:                                              ; preds = %392
  %397 = load i8*, i8** %12, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %401, label %399

399:                                              ; preds = %396
  %400 = load i32, i32* @False, align 4
  store i32 %400, i32* %4, align 4
  br label %497

401:                                              ; preds = %396
  %402 = load i8*, i8** %12, align 8
  %403 = call i8* @strtoul(i8* %402, i8** %20, i32 0)
  %404 = ptrtoint i8* %403 to i64
  store i64 %404, i64* %19, align 8
  %405 = load i8*, i8** %20, align 8
  %406 = load i8, i8* %405, align 1
  %407 = icmp ne i8 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %401
  %409 = load i32, i32* @False, align 4
  store i32 %409, i32* %4, align 4
  br label %497

410:                                              ; preds = %401
  %411 = load i32*, i32** %5, align 8
  %412 = load i64, i64* %19, align 8
  %413 = load i64, i64* @SEAMLESSRDP_HELLO_HIDDEN, align 8
  %414 = and i64 %412, %413
  %415 = icmp ne i64 %414, 0
  %416 = xor i1 %415, true
  %417 = xor i1 %416, true
  %418 = zext i1 %417 to i32
  %419 = call i32 @ui_seamless_begin(i32* %411, i32 %418)
  br label %482

420:                                              ; preds = %392
  %421 = load i8*, i8** %10, align 8
  %422 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %437, label %424

424:                                              ; preds = %420
  %425 = load i8*, i8** %12, align 8
  %426 = call i8* @strtoul(i8* %425, i8** %20, i32 0)
  %427 = ptrtoint i8* %426 to i32
  store i32 %427, i32* %29, align 4
  %428 = load i8*, i8** %20, align 8
  %429 = load i8, i8* %428, align 1
  %430 = icmp ne i8 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %424
  %432 = load i32, i32* @False, align 4
  store i32 %432, i32* %4, align 4
  br label %497

433:                                              ; preds = %424
  %434 = load i32*, i32** %5, align 8
  %435 = load i32, i32* %29, align 4
  %436 = call i32 @ui_seamless_ack(i32* %434, i32 %435)
  br label %481

437:                                              ; preds = %420
  %438 = load i8*, i8** %10, align 8
  %439 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %458, label %441

441:                                              ; preds = %437
  %442 = load i8*, i8** %12, align 8
  %443 = icmp ne i8* %442, null
  br i1 %443, label %446, label %444

444:                                              ; preds = %441
  %445 = load i32, i32* @False, align 4
  store i32 %445, i32* %4, align 4
  br label %497

446:                                              ; preds = %441
  %447 = load i8*, i8** %12, align 8
  %448 = call i8* @strtoul(i8* %447, i8** %20, i32 0)
  %449 = ptrtoint i8* %448 to i64
  store i64 %449, i64* %19, align 8
  %450 = load i8*, i8** %20, align 8
  %451 = load i8, i8* %450, align 1
  %452 = icmp ne i8 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %446
  %454 = load i32, i32* @False, align 4
  store i32 %454, i32* %4, align 4
  br label %497

455:                                              ; preds = %446
  %456 = load i32*, i32** %5, align 8
  %457 = call i32 @ui_seamless_hide_desktop(i32* %456)
  br label %480

458:                                              ; preds = %437
  %459 = load i8*, i8** %10, align 8
  %460 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %479, label %462

462:                                              ; preds = %458
  %463 = load i8*, i8** %12, align 8
  %464 = icmp ne i8* %463, null
  br i1 %464, label %467, label %465

465:                                              ; preds = %462
  %466 = load i32, i32* @False, align 4
  store i32 %466, i32* %4, align 4
  br label %497

467:                                              ; preds = %462
  %468 = load i8*, i8** %12, align 8
  %469 = call i8* @strtoul(i8* %468, i8** %20, i32 0)
  %470 = ptrtoint i8* %469 to i64
  store i64 %470, i64* %19, align 8
  %471 = load i8*, i8** %20, align 8
  %472 = load i8, i8* %471, align 1
  %473 = icmp ne i8 %472, 0
  br i1 %473, label %474, label %476

474:                                              ; preds = %467
  %475 = load i32, i32* @False, align 4
  store i32 %475, i32* %4, align 4
  br label %497

476:                                              ; preds = %467
  %477 = load i32*, i32** %5, align 8
  %478 = call i32 @ui_seamless_unhide_desktop(i32* %477)
  br label %479

479:                                              ; preds = %476, %458
  br label %480

480:                                              ; preds = %479, %455
  br label %481

481:                                              ; preds = %480, %433
  br label %482

482:                                              ; preds = %481, %410
  br label %483

483:                                              ; preds = %482, %391
  br label %484

484:                                              ; preds = %483, %369
  br label %485

485:                                              ; preds = %484, %348
  br label %486

486:                                              ; preds = %485, %338
  br label %487

487:                                              ; preds = %486, %296
  br label %488

488:                                              ; preds = %487, %263
  br label %489

489:                                              ; preds = %488, %223
  br label %490

490:                                              ; preds = %489, %162
  br label %491

491:                                              ; preds = %490, %153
  br label %492

492:                                              ; preds = %491, %121
  br label %493

493:                                              ; preds = %492, %87
  %494 = load i8*, i8** %9, align 8
  %495 = call i32 @xfree(i8* %494)
  %496 = load i32, i32* @True, align 4
  store i32 %496, i32* %4, align 4
  br label %497

497:                                              ; preds = %493, %474, %465, %453, %444, %431, %408, %399, %389, %380, %367, %358, %336, %327, %318, %309, %294, %285, %276, %261, %252, %243, %221, %212, %204, %196, %188, %180, %171, %151, %142, %133, %119, %110, %101, %85, %76, %67, %58, %49
  %498 = load i32, i32* %4, align 4
  ret i32 %498
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @DEBUG_SEAMLESS(i8*) #1

declare dso_local i8* @seamless_get_token(i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @ui_seamless_create_window(i32*, i64, i64, i64, i64) #1

declare dso_local i32 @ui_seamless_destroy_window(i32*, i64, i64) #1

declare dso_local i32 @ui_seamless_destroy_group(i32*, i64, i64) #1

declare dso_local i32 @unimpl(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ui_seamless_move_window(i32*, i64, i32, i32, i32, i32, i64) #1

declare dso_local i32 @ui_seamless_restack_window(i32*, i64, i64, i64) #1

declare dso_local i32 @ui_seamless_settitle(i32*, i64, i8*, i64) #1

declare dso_local i32 @ui_seamless_setstate(i32*, i64, i32, i64) #1

declare dso_local i32 @ui_seamless_syncbegin(i32*, i64) #1

declare dso_local i32 @ui_seamless_begin(i32*, i32) #1

declare dso_local i32 @ui_seamless_ack(i32*, i32) #1

declare dso_local i32 @ui_seamless_hide_desktop(i32*) #1

declare dso_local i32 @ui_seamless_unhide_desktop(i32*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
