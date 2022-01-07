; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_decoders.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_decoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_decoder = type { i32*, i32*, i32*, i32**, %struct.TYPE_2__*, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i8* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@CATID_WICBitmapDecoders = common dso_local global i32 0, align 4
@instance_keyname = common dso_local global i8* null, align 8
@clsid_valuename = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@author_valuename = common dso_local global i32 0, align 4
@friendlyname_valuename = common dso_local global i32 0, align 4
@vendor_valuename = common dso_local global i32 0, align 4
@containerformat_valuename = common dso_local global i32 0, align 4
@version_valuename = common dso_local global i32 0, align 4
@mimetypes_valuename = common dso_local global i32 0, align 4
@extensions_valuename = common dso_local global i32 0, align 4
@formats_keyname = common dso_local global i8* null, align 8
@patterns_keyname = common dso_local global i8* null, align 8
@register_decoders.int_format = internal constant [3 x i8] c"%i\00", align 1
@length_valuename = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@position_valuename = common dso_local global i32 0, align 4
@pattern_valuename = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@mask_valuename = common dso_local global i32 0, align 4
@endofstream_valuename = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_decoder*)* @register_decoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_decoders(%struct.regsvr_decoder* %0) #0 {
  %2 = alloca %struct.regsvr_decoder*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [39 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.regsvr_decoder* %0, %struct.regsvr_decoder** %2, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %18 = load i8*, i8** @clsid_keyname, align 8
  %19 = load i32, i32* @KEY_READ, align 4
  %20 = load i32, i32* @KEY_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @RegCreateKeyExW(i32 %17, i8* %18, i32 0, i32* null, i32 0, i32 %21, i32* null, i32* %4, i32* null)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %1
  %27 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %28 = call i32 @StringFromGUID2(i32* @CATID_WICBitmapDecoders, i8* %27, i32 39)
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %31 = load i32, i32* @KEY_READ, align 4
  %32 = load i32, i32* @KEY_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @RegCreateKeyExW(i32 %29, i8* %30, i32 0, i32* null, i32 0, i32 %33, i32* null, i32* %6, i32* null)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** @instance_keyname, align 8
  %41 = load i32, i32* @KEY_READ, align 4
  %42 = load i32, i32* @KEY_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @RegCreateKeyExW(i32 %39, i8* %40, i32 0, i32* null, i32 0, i32 %43, i32* null, i32* %7, i32* null)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %493

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @RegCloseKey(i32 %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %1
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %500

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %489, %63
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %70 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ false, %64 ], [ %72, %68 ]
  br i1 %74, label %75, label %492

75:                                               ; preds = %73
  %76 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %77 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %80 = call i32 @StringFromGUID2(i32* %78, i8* %79, i32 39)
  %81 = load i32, i32* %4, align 4
  %82 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %83 = load i32, i32* @KEY_READ, align 4
  %84 = load i32, i32* @KEY_WRITE, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @RegCreateKeyExW(i32 %81, i8* %82, i32 0, i32* null, i32 0, i32 %85, i32* null, i32* %8, i32* null)
  store i64 %86, i64* %3, align 8
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  br label %493

91:                                               ; preds = %75
  %92 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %93 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %96 = call i32 @StringFromGUID2(i32* %94, i8* %95, i32 39)
  %97 = load i32, i32* %7, align 4
  %98 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %99 = load i32, i32* @KEY_READ, align 4
  %100 = load i32, i32* @KEY_WRITE, align 4
  %101 = or i32 %99, %100
  %102 = call i64 @RegCreateKeyExW(i32 %97, i8* %98, i32 0, i32* null, i32 0, i32 %101, i32* null, i32* %9, i32* null)
  store i64 %102, i64* %3, align 8
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* @ERROR_SUCCESS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %91
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @clsid_valuename, align 4
  %109 = load i32, i32* @REG_SZ, align 4
  %110 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %111 = bitcast i8* %110 to i32*
  %112 = call i64 @RegSetValueExW(i32 %107, i32 %108, i32 0, i32 %109, i32* %111, i32 78)
  store i64 %112, i64* %3, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @RegCloseKey(i32 %113)
  br label %115

115:                                              ; preds = %106, %91
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* @ERROR_SUCCESS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %486

120:                                              ; preds = %115
  %121 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %122 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @author_valuename, align 4
  %128 = load i32, i32* @REG_SZ, align 4
  %129 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %130 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %129, i32 0, i32 9
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %134 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %133, i32 0, i32 9
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @strlen(i64 %135)
  %137 = add nsw i32 %136, 1
  %138 = call i64 @RegSetValueExA(i32 %126, i32 %127, i32 0, i32 %128, i32* %132, i32 %137)
  store i64 %138, i64* %3, align 8
  %139 = load i64, i64* %3, align 8
  %140 = load i64, i64* @ERROR_SUCCESS, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  br label %486

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143, %120
  %145 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %146 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %145, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %144
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @friendlyname_valuename, align 4
  %152 = load i32, i32* @REG_SZ, align 4
  %153 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %154 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %153, i32 0, i32 8
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %158 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @strlen(i64 %159)
  %161 = add nsw i32 %160, 1
  %162 = call i64 @RegSetValueExA(i32 %150, i32 %151, i32 0, i32 %152, i32* %156, i32 %161)
  store i64 %162, i64* %3, align 8
  %163 = load i64, i64* %3, align 8
  %164 = load i64, i64* @ERROR_SUCCESS, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %149
  br label %486

167:                                              ; preds = %149
  br label %168

168:                                              ; preds = %167, %144
  %169 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %170 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %168
  %174 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %175 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %178 = call i32 @StringFromGUID2(i32* %176, i8* %177, i32 39)
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @vendor_valuename, align 4
  %181 = load i32, i32* @REG_SZ, align 4
  %182 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %183 = bitcast i8* %182 to i32*
  %184 = call i64 @RegSetValueExW(i32 %179, i32 %180, i32 0, i32 %181, i32* %183, i32 78)
  store i64 %184, i64* %3, align 8
  %185 = load i64, i64* %3, align 8
  %186 = load i64, i64* @ERROR_SUCCESS, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  br label %486

189:                                              ; preds = %173
  br label %190

190:                                              ; preds = %189, %168
  %191 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %192 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %212

195:                                              ; preds = %190
  %196 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %197 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %200 = call i32 @StringFromGUID2(i32* %198, i8* %199, i32 39)
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @containerformat_valuename, align 4
  %203 = load i32, i32* @REG_SZ, align 4
  %204 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %205 = bitcast i8* %204 to i32*
  %206 = call i64 @RegSetValueExW(i32 %201, i32 %202, i32 0, i32 %203, i32* %205, i32 78)
  store i64 %206, i64* %3, align 8
  %207 = load i64, i64* %3, align 8
  %208 = load i64, i64* @ERROR_SUCCESS, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %195
  br label %486

211:                                              ; preds = %195
  br label %212

212:                                              ; preds = %211, %190
  %213 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %214 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %212
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @version_valuename, align 4
  %220 = load i32, i32* @REG_SZ, align 4
  %221 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %222 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %221, i32 0, i32 7
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i32*
  %225 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %226 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %225, i32 0, i32 7
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @strlen(i64 %227)
  %229 = add nsw i32 %228, 1
  %230 = call i64 @RegSetValueExA(i32 %218, i32 %219, i32 0, i32 %220, i32* %224, i32 %229)
  store i64 %230, i64* %3, align 8
  %231 = load i64, i64* %3, align 8
  %232 = load i64, i64* @ERROR_SUCCESS, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %217
  br label %486

235:                                              ; preds = %217
  br label %236

236:                                              ; preds = %235, %212
  %237 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %238 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %237, i32 0, i32 6
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %236
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @mimetypes_valuename, align 4
  %244 = load i32, i32* @REG_SZ, align 4
  %245 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %246 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %245, i32 0, i32 6
  %247 = load i64, i64* %246, align 8
  %248 = inttoptr i64 %247 to i32*
  %249 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %250 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @strlen(i64 %251)
  %253 = add nsw i32 %252, 1
  %254 = call i64 @RegSetValueExA(i32 %242, i32 %243, i32 0, i32 %244, i32* %248, i32 %253)
  store i64 %254, i64* %3, align 8
  %255 = load i64, i64* %3, align 8
  %256 = load i64, i64* @ERROR_SUCCESS, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %241
  br label %486

259:                                              ; preds = %241
  br label %260

260:                                              ; preds = %259, %236
  %261 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %262 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %260
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @extensions_valuename, align 4
  %268 = load i32, i32* @REG_SZ, align 4
  %269 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %270 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %274 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @strlen(i64 %275)
  %277 = add nsw i32 %276, 1
  %278 = call i64 @RegSetValueExA(i32 %266, i32 %267, i32 0, i32 %268, i32* %272, i32 %277)
  store i64 %278, i64* %3, align 8
  %279 = load i64, i64* %3, align 8
  %280 = load i64, i64* @ERROR_SUCCESS, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %265
  br label %486

283:                                              ; preds = %265
  br label %284

284:                                              ; preds = %283, %260
  %285 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %286 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %285, i32 0, i32 3
  %287 = load i32**, i32*** %286, align 8
  %288 = icmp ne i32** %287, null
  br i1 %288, label %289, label %337

289:                                              ; preds = %284
  %290 = load i32, i32* %8, align 4
  %291 = load i8*, i8** @formats_keyname, align 8
  %292 = load i32, i32* @KEY_READ, align 4
  %293 = load i32, i32* @KEY_WRITE, align 4
  %294 = or i32 %292, %293
  %295 = call i64 @RegCreateKeyExW(i32 %290, i8* %291, i32 0, i32* null, i32 0, i32 %294, i32* null, i32* %10, i32* null)
  store i64 %295, i64* %3, align 8
  %296 = load i64, i64* %3, align 8
  %297 = load i64, i64* @ERROR_SUCCESS, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %289
  br label %486

300:                                              ; preds = %289
  %301 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %302 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %301, i32 0, i32 3
  %303 = load i32**, i32*** %302, align 8
  store i32** %303, i32*** %11, align 8
  br label %304

304:                                              ; preds = %326, %300
  %305 = load i32**, i32*** %11, align 8
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %329

308:                                              ; preds = %304
  %309 = load i32**, i32*** %11, align 8
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %312 = call i32 @StringFromGUID2(i32* %310, i8* %311, i32 39)
  %313 = load i32, i32* %10, align 4
  %314 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %315 = load i32, i32* @KEY_READ, align 4
  %316 = load i32, i32* @KEY_WRITE, align 4
  %317 = or i32 %315, %316
  %318 = call i64 @RegCreateKeyExW(i32 %313, i8* %314, i32 0, i32* null, i32 0, i32 %317, i32* null, i32* %12, i32* null)
  store i64 %318, i64* %3, align 8
  %319 = load i64, i64* %3, align 8
  %320 = load i64, i64* @ERROR_SUCCESS, align 8
  %321 = icmp ne i64 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %308
  br label %329

323:                                              ; preds = %308
  %324 = load i32, i32* %12, align 4
  %325 = call i32 @RegCloseKey(i32 %324)
  br label %326

326:                                              ; preds = %323
  %327 = load i32**, i32*** %11, align 8
  %328 = getelementptr inbounds i32*, i32** %327, i32 1
  store i32** %328, i32*** %11, align 8
  br label %304

329:                                              ; preds = %322, %304
  %330 = load i32, i32* %10, align 4
  %331 = call i32 @RegCloseKey(i32 %330)
  %332 = load i64, i64* %3, align 8
  %333 = load i64, i64* @ERROR_SUCCESS, align 8
  %334 = icmp ne i64 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %329
  br label %486

336:                                              ; preds = %329
  br label %337

337:                                              ; preds = %336, %284
  %338 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %339 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %338, i32 0, i32 4
  %340 = load %struct.TYPE_2__*, %struct.TYPE_2__** %339, align 8
  %341 = icmp ne %struct.TYPE_2__* %340, null
  br i1 %341, label %342, label %485

342:                                              ; preds = %337
  %343 = load i32, i32* %8, align 4
  %344 = load i8*, i8** @patterns_keyname, align 8
  %345 = load i32, i32* @KEY_READ, align 4
  %346 = load i32, i32* @KEY_WRITE, align 4
  %347 = or i32 %345, %346
  %348 = call i64 @RegCreateKeyExW(i32 %343, i8* %344, i32 0, i32* null, i32 0, i32 %347, i32* null, i32* %13, i32* null)
  store i64 %348, i64* %3, align 8
  %349 = load i64, i64* %3, align 8
  %350 = load i64, i64* @ERROR_SUCCESS, align 8
  %351 = icmp ne i64 %349, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %342
  br label %486

353:                                              ; preds = %342
  store i32 0, i32* %14, align 4
  br label %354

354:                                              ; preds = %474, %353
  %355 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %356 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %355, i32 0, i32 4
  %357 = load %struct.TYPE_2__*, %struct.TYPE_2__** %356, align 8
  %358 = load i32, i32* %14, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %477

364:                                              ; preds = %354
  %365 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %366 = load i32, i32* %14, align 4
  %367 = call i32 @snprintfW(i8* %365, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @register_decoders.int_format, i64 0, i64 0), i32 %366)
  %368 = load i32, i32* %13, align 4
  %369 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %370 = load i32, i32* @KEY_READ, align 4
  %371 = load i32, i32* @KEY_WRITE, align 4
  %372 = or i32 %370, %371
  %373 = call i64 @RegCreateKeyExW(i32 %368, i8* %369, i32 0, i32* null, i32 0, i32 %372, i32* null, i32* %15, i32* null)
  store i64 %373, i64* %3, align 8
  %374 = load i64, i64* %3, align 8
  %375 = load i64, i64* @ERROR_SUCCESS, align 8
  %376 = icmp ne i64 %374, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %364
  br label %477

378:                                              ; preds = %364
  %379 = load i32, i32* %15, align 4
  %380 = load i32, i32* @length_valuename, align 4
  %381 = load i32, i32* @REG_DWORD, align 4
  %382 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %383 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %382, i32 0, i32 4
  %384 = load %struct.TYPE_2__*, %struct.TYPE_2__** %383, align 8
  %385 = load i32, i32* %14, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 0
  %389 = call i64 @RegSetValueExA(i32 %379, i32 %380, i32 0, i32 %381, i32* %388, i32 4)
  store i64 %389, i64* %3, align 8
  %390 = load i64, i64* %3, align 8
  %391 = load i64, i64* @ERROR_SUCCESS, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %405

393:                                              ; preds = %378
  %394 = load i32, i32* %15, align 4
  %395 = load i32, i32* @position_valuename, align 4
  %396 = load i32, i32* @REG_DWORD, align 4
  %397 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %398 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %397, i32 0, i32 4
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** %398, align 8
  %400 = load i32, i32* %14, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 4
  %404 = call i64 @RegSetValueExA(i32 %394, i32 %395, i32 0, i32 %396, i32* %403, i32 4)
  store i64 %404, i64* %3, align 8
  br label %405

405:                                              ; preds = %393, %378
  %406 = load i64, i64* %3, align 8
  %407 = load i64, i64* @ERROR_SUCCESS, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %430

409:                                              ; preds = %405
  %410 = load i32, i32* %15, align 4
  %411 = load i32, i32* @pattern_valuename, align 4
  %412 = load i32, i32* @REG_BINARY, align 4
  %413 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %414 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %413, i32 0, i32 4
  %415 = load %struct.TYPE_2__*, %struct.TYPE_2__** %414, align 8
  %416 = load i32, i32* %14, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i32 0, i32 3
  %420 = load i32*, i32** %419, align 8
  %421 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %422 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %421, i32 0, i32 4
  %423 = load %struct.TYPE_2__*, %struct.TYPE_2__** %422, align 8
  %424 = load i32, i32* %14, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i64 @RegSetValueExA(i32 %410, i32 %411, i32 0, i32 %412, i32* %420, i32 %428)
  store i64 %429, i64* %3, align 8
  br label %430

430:                                              ; preds = %409, %405
  %431 = load i64, i64* %3, align 8
  %432 = load i64, i64* @ERROR_SUCCESS, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %455

434:                                              ; preds = %430
  %435 = load i32, i32* %15, align 4
  %436 = load i32, i32* @mask_valuename, align 4
  %437 = load i32, i32* @REG_BINARY, align 4
  %438 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %439 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %438, i32 0, i32 4
  %440 = load %struct.TYPE_2__*, %struct.TYPE_2__** %439, align 8
  %441 = load i32, i32* %14, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %443, i32 0, i32 2
  %445 = load i32*, i32** %444, align 8
  %446 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %447 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %446, i32 0, i32 4
  %448 = load %struct.TYPE_2__*, %struct.TYPE_2__** %447, align 8
  %449 = load i32, i32* %14, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = call i64 @RegSetValueExA(i32 %435, i32 %436, i32 0, i32 %437, i32* %445, i32 %453)
  store i64 %454, i64* %3, align 8
  br label %455

455:                                              ; preds = %434, %430
  %456 = load i64, i64* %3, align 8
  %457 = load i64, i64* @ERROR_SUCCESS, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %471

459:                                              ; preds = %455
  %460 = load i32, i32* %15, align 4
  %461 = load i32, i32* @endofstream_valuename, align 4
  %462 = load i32, i32* @REG_DWORD, align 4
  %463 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %464 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %463, i32 0, i32 4
  %465 = load %struct.TYPE_2__*, %struct.TYPE_2__** %464, align 8
  %466 = load i32, i32* %14, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i32 0, i32 1
  %470 = call i64 @RegSetValueExA(i32 %460, i32 %461, i32 0, i32 %462, i32* %469, i32 4)
  store i64 %470, i64* %3, align 8
  br label %471

471:                                              ; preds = %459, %455
  %472 = load i32, i32* %15, align 4
  %473 = call i32 @RegCloseKey(i32 %472)
  br label %474

474:                                              ; preds = %471
  %475 = load i32, i32* %14, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %14, align 4
  br label %354

477:                                              ; preds = %377, %354
  %478 = load i32, i32* %13, align 4
  %479 = call i32 @RegCloseKey(i32 %478)
  %480 = load i64, i64* %3, align 8
  %481 = load i64, i64* @ERROR_SUCCESS, align 8
  %482 = icmp ne i64 %480, %481
  br i1 %482, label %483, label %484

483:                                              ; preds = %477
  br label %486

484:                                              ; preds = %477
  br label %485

485:                                              ; preds = %484, %337
  br label %486

486:                                              ; preds = %485, %483, %352, %335, %299, %282, %258, %234, %210, %188, %166, %142, %119
  %487 = load i32, i32* %8, align 4
  %488 = call i32 @RegCloseKey(i32 %487)
  br label %489

489:                                              ; preds = %486
  %490 = load %struct.regsvr_decoder*, %struct.regsvr_decoder** %2, align 8
  %491 = getelementptr inbounds %struct.regsvr_decoder, %struct.regsvr_decoder* %490, i32 1
  store %struct.regsvr_decoder* %491, %struct.regsvr_decoder** %2, align 8
  br label %64

492:                                              ; preds = %73
  br label %493

493:                                              ; preds = %492, %90, %48
  %494 = load i32, i32* %7, align 4
  %495 = call i32 @RegCloseKey(i32 %494)
  %496 = load i32, i32* %6, align 4
  %497 = call i32 @RegCloseKey(i32 %496)
  %498 = load i32, i32* %4, align 4
  %499 = call i32 @RegCloseKey(i32 %498)
  br label %500

500:                                              ; preds = %493, %62
  %501 = load i64, i64* %3, align 8
  %502 = load i64, i64* @ERROR_SUCCESS, align 8
  %503 = icmp ne i64 %501, %502
  br i1 %503, label %504, label %507

504:                                              ; preds = %500
  %505 = load i64, i64* %3, align 8
  %506 = call i32 @HRESULT_FROM_WIN32(i64 %505)
  br label %509

507:                                              ; preds = %500
  %508 = load i32, i32* @S_OK, align 4
  br label %509

509:                                              ; preds = %507, %504
  %510 = phi i32 [ %506, %504 ], [ %508, %507 ]
  ret i32 %510
}

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegSetValueExW(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @RegSetValueExA(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @snprintfW(i8*, i32, i8*, i32) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
