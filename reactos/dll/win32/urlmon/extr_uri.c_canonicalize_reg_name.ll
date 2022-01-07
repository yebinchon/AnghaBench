; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_reg_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_reg_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i8* }
%struct.TYPE_8__ = type { i32, i64, i8*, i64, i32, i32, i32 }

@canonicalize_reg_name.localhostW = internal constant [10 x i8] c"localhost\00", align 1
@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@Uri_HOST_UNKNOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Uri_CREATE_FILE_USE_DOS_PATH = common dso_local global i32 0, align 4
@Uri_CREATE_NO_CANONICALIZE = common dso_local global i32 0, align 4
@Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"(%p %p %x %d): Canonicalize reg_name=%s len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32)* @canonicalize_reg_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_reg_name(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @URL_SCHEME_FILE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @lstrlenW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @canonicalize_reg_name.localhostW, i64 0, i64 0))
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @StrCmpNIW(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @canonicalize_reg_name.localhostW, i64 0, i64 0), i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @Uri_HOST_UNKNOWN, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %5, align 4
  br label %395

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %24, %4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @URL_SCHEME_FILE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 92, i8* %70, align 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8 92, i8* %78, align 1
  br label %79

79:                                               ; preds = %63, %60
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 2
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %79, %55, %49
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %10, align 8
  br label %100

100:                                              ; preds = %338, %90
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = icmp ult i8* %101, %108
  br i1 %109, label %110, label %341

110:                                              ; preds = %100
  %111 = load i8*, i8** %10, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 37
  br i1 %114, label %115, label %187

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %187

118:                                              ; preds = %115
  %119 = load i8*, i8** %10, align 8
  %120 = call signext i8 @decode_pct_val(i8* %119)
  store i8 %120, i8* %12, align 1
  %121 = load i8, i8* %12, align 1
  %122 = call i64 @is_unreserved(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %168

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %124
  %130 = load i8, i8* %12, align 1
  %131 = call i64 @isupperW(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %133
  %137 = load i8, i8* %12, align 1
  %138 = call i8* @tolowerW(i8 signext %137)
  %139 = ptrtoint i8* %138 to i8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 %139, i8* %146, align 1
  br label %147

147:                                              ; preds = %136, %133
  br label %161

148:                                              ; preds = %129, %124
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %148
  %152 = load i8, i8* %12, align 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 %152, i8* %159, align 1
  br label %160

160:                                              ; preds = %151, %148
  br label %161

161:                                              ; preds = %160, %147
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %163, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  store i8* %167, i8** %10, align 8
  br label %338

168:                                              ; preds = %118
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %168
  %172 = load i8*, i8** %10, align 8
  %173 = load i8, i8* %172, align 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  store i8 %173, i8* %180, align 1
  br label %181

181:                                              ; preds = %171, %168
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %181
  br label %337

187:                                              ; preds = %115, %110
  %188 = load i8*, i8** %10, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 92
  br i1 %191, label %192, label %210

192:                                              ; preds = %187
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %192
  %196 = load i8*, i8** %10, align 8
  %197 = load i8, i8* %196, align 1
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 %197, i8* %204, align 1
  br label %205

205:                                              ; preds = %195, %192
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %207, align 8
  br label %336

210:                                              ; preds = %187
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %296, label %215

215:                                              ; preds = %210
  %216 = load i8*, i8** %10, align 8
  %217 = load i8, i8* %216, align 1
  %218 = call i64 @is_ascii(i8 signext %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %296

220:                                              ; preds = %215
  %221 = load i8*, i8** %10, align 8
  %222 = load i8, i8* %221, align 1
  %223 = call i64 @is_unreserved(i8 signext %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %296, label %225

225:                                              ; preds = %220
  %226 = load i8*, i8** %10, align 8
  %227 = load i8, i8* %226, align 1
  %228 = call i32 @is_reserved(i8 signext %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %296, label %230

230:                                              ; preds = %225
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %296

233:                                              ; preds = %230
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %291, label %236

236:                                              ; preds = %233
  %237 = load i8*, i8** %10, align 8
  %238 = load i8, i8* %237, align 1
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i8, i8* %241, i64 %244
  %246 = call i32 @pct_encode_val(i8 signext %238, i8* %245)
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %290, label %251

251:                                              ; preds = %236
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = add i64 %257, 1
  %259 = getelementptr inbounds i8, i8* %254, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = call i8* @tolowerW(i8 signext %260)
  %262 = ptrtoint i8* %261 to i8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 2
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = add i64 %268, 1
  %270 = getelementptr inbounds i8, i8* %265, i64 %269
  store i8 %262, i8* %270, align 1
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %276, 2
  %278 = getelementptr inbounds i8, i8* %273, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = call i8* @tolowerW(i8 signext %279)
  %281 = ptrtoint i8* %280 to i8
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 2
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = add i64 %287, 2
  %289 = getelementptr inbounds i8, i8* %284, i64 %288
  store i8 %281, i8* %289, align 1
  br label %290

290:                                              ; preds = %251, %236
  br label %291

291:                                              ; preds = %290, %233
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = add i64 %294, 3
  store i64 %295, i64* %293, align 8
  br label %335

296:                                              ; preds = %230, %225, %220, %215, %210
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %330, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %8, align 4
  %301 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %319, label %304

304:                                              ; preds = %299
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %304
  %308 = load i8*, i8** %10, align 8
  %309 = load i8, i8* %308, align 1
  %310 = call i8* @tolowerW(i8 signext %309)
  %311 = ptrtoint i8* %310 to i8
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 2
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds i8, i8* %314, i64 %317
  store i8 %311, i8* %318, align 1
  br label %329

319:                                              ; preds = %304, %299
  %320 = load i8*, i8** %10, align 8
  %321 = load i8, i8* %320, align 1
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 2
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  store i8 %321, i8* %328, align 1
  br label %329

329:                                              ; preds = %319, %307
  br label %330

330:                                              ; preds = %329, %296
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = add i64 %333, 1
  store i64 %334, i64* %332, align 8
  br label %335

335:                                              ; preds = %330, %291
  br label %336

336:                                              ; preds = %335, %205
  br label %337

337:                                              ; preds = %336, %186
  br label %338

338:                                              ; preds = %337, %161
  %339 = load i8*, i8** %10, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %10, align 8
  br label %100

341:                                              ; preds = %100
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 3
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = sub i64 %344, %348
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  store i64 %349, i64* %351, align 8
  %352 = load i32, i32* %9, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %375, label %354

354:                                              ; preds = %341
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %357 = load i32, i32* %8, align 4
  %358 = load i32, i32* %9, align 4
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 2
  %361 = load i8*, i8** %360, align 8
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %361, i64 %365
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @debugstr_wn(i8* %366, i64 %369)
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %355, %struct.TYPE_8__* %356, i32 %357, i32 %358, i32 %370, i64 %373)
  br label %375

375:                                              ; preds = %354, %341
  %376 = load i32, i32* %9, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %393, label %378

378:                                              ; preds = %375
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 2
  %381 = load i8*, i8** %380, align 8
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %381, i64 %385
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 5
  %392 = call i32 @find_domain_name(i8* %386, i64 %389, i32* %391)
  br label %393

393:                                              ; preds = %378, %375
  %394 = load i32, i32* @TRUE, align 4
  store i32 %394, i32* %5, align 4
  br label %395

395:                                              ; preds = %393, %39
  %396 = load i32, i32* %5, align 4
  ret i32 %396
}

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i32 @StrCmpNIW(i8*, i8*, i64) #1

declare dso_local signext i8 @decode_pct_val(i8*) #1

declare dso_local i64 @is_unreserved(i8 signext) #1

declare dso_local i64 @isupperW(i8 signext) #1

declare dso_local i8* @tolowerW(i8 signext) #1

declare dso_local i64 @is_ascii(i8 signext) #1

declare dso_local i32 @is_reserved(i8 signext) #1

declare dso_local i32 @pct_encode_val(i8 signext, i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32, i64) #1

declare dso_local i32 @debugstr_wn(i8*, i64) #1

declare dso_local i32 @find_domain_name(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
