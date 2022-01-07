; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_pixelformats.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_pixelformats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_pixelformat = type { i32, i64, i32**, i32, i32, i64, i32*, i64, i64, i32* }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i8* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@CATID_WICPixelFormats = common dso_local global i32 0, align 4
@instance_keyname = common dso_local global i8* null, align 8
@clsid_valuename = common dso_local global i8* null, align 8
@REG_SZ = common dso_local global i32 0, align 4
@author_valuename = common dso_local global i32 0, align 4
@friendlyname_valuename = common dso_local global i32 0, align 4
@vendor_valuename = common dso_local global i8* null, align 8
@version_valuename = common dso_local global i32 0, align 4
@bitsperpixel_valuename = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@channelcount_valuename = common dso_local global i32 0, align 4
@numericrepresentation_valuename = common dso_local global i32 0, align 4
@supportstransparency_valuename = common dso_local global i32 0, align 4
@register_pixelformats.valuename_format = internal constant [3 x i8] c"%d\00", align 1
@channelmasks_keyname = common dso_local global i8* null, align 8
@REG_BINARY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_pixelformat*)* @register_pixelformats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_pixelformats(%struct.regsvr_pixelformat* %0) #0 {
  %2 = alloca %struct.regsvr_pixelformat*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [39 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [11 x i8], align 1
  store %struct.regsvr_pixelformat* %0, %struct.regsvr_pixelformat** %2, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %14, i64* %3, align 8
  %15 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %16 = load i8*, i8** @clsid_keyname, align 8
  %17 = load i32, i32* @KEY_READ, align 4
  %18 = load i32, i32* @KEY_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @RegCreateKeyExW(i32 %15, i8* %16, i32 0, i32* null, i32 0, i32 %19, i32* null, i32* %4, i32* null)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %1
  %25 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %26 = call i32 @StringFromGUID2(i32* @CATID_WICPixelFormats, i8* %25, i32 39)
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %29 = load i32, i32* @KEY_READ, align 4
  %30 = load i32, i32* @KEY_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @RegCreateKeyExW(i32 %27, i8* %28, i32 0, i32* null, i32 0, i32 %31, i32* null, i32* %6, i32* null)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** @instance_keyname, align 8
  %39 = load i32, i32* @KEY_READ, align 4
  %40 = load i32, i32* @KEY_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @RegCreateKeyExW(i32 %37, i8* %38, i32 0, i32* null, i32 0, i32 %41, i32* null, i32* %7, i32* null)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %325

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @RegCloseKey(i32 %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %332

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %321, %61
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @ERROR_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %68 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %67, i32 0, i32 9
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i1 [ false, %62 ], [ %70, %66 ]
  br i1 %72, label %73, label %324

73:                                               ; preds = %71
  %74 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %75 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %74, i32 0, i32 9
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %78 = call i32 @StringFromGUID2(i32* %76, i8* %77, i32 39)
  %79 = load i32, i32* %4, align 4
  %80 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %81 = load i32, i32* @KEY_READ, align 4
  %82 = load i32, i32* @KEY_WRITE, align 4
  %83 = or i32 %81, %82
  %84 = call i64 @RegCreateKeyExW(i32 %79, i8* %80, i32 0, i32* null, i32 0, i32 %83, i32* null, i32* %8, i32* null)
  store i64 %84, i64* %3, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @ERROR_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %325

89:                                               ; preds = %73
  %90 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %91 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %90, i32 0, i32 9
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %94 = call i32 @StringFromGUID2(i32* %92, i8* %93, i32 39)
  %95 = load i32, i32* %7, align 4
  %96 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %97 = load i32, i32* @KEY_READ, align 4
  %98 = load i32, i32* @KEY_WRITE, align 4
  %99 = or i32 %97, %98
  %100 = call i64 @RegCreateKeyExW(i32 %95, i8* %96, i32 0, i32* null, i32 0, i32 %99, i32* null, i32* %9, i32* null)
  store i64 %100, i64* %3, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %89
  %105 = load i32, i32* %9, align 4
  %106 = load i8*, i8** @clsid_valuename, align 8
  %107 = load i32, i32* @REG_SZ, align 4
  %108 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %109 = bitcast i8* %108 to i32*
  %110 = call i64 @RegSetValueExW(i32 %105, i8* %106, i32 0, i32 %107, i32* %109, i64 78)
  store i64 %110, i64* %3, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @RegCloseKey(i32 %111)
  br label %113

113:                                              ; preds = %104, %89
  %114 = load i64, i64* %3, align 8
  %115 = load i64, i64* @ERROR_SUCCESS, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %318

118:                                              ; preds = %113
  %119 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %120 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @author_valuename, align 4
  %126 = load i32, i32* @REG_SZ, align 4
  %127 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %128 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %132 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %131, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @strlen(i64 %133)
  %135 = add nsw i32 %134, 1
  %136 = call i64 @RegSetValueExA(i32 %124, i32 %125, i32 0, i32 %126, i32* %130, i32 %135)
  store i64 %136, i64* %3, align 8
  %137 = load i64, i64* %3, align 8
  %138 = load i64, i64* @ERROR_SUCCESS, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %123
  br label %318

141:                                              ; preds = %123
  br label %142

142:                                              ; preds = %141, %118
  %143 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %144 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %142
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @friendlyname_valuename, align 4
  %150 = load i32, i32* @REG_SZ, align 4
  %151 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %152 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i32*
  %155 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %156 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @strlen(i64 %157)
  %159 = add nsw i32 %158, 1
  %160 = call i64 @RegSetValueExA(i32 %148, i32 %149, i32 0, i32 %150, i32* %154, i32 %159)
  store i64 %160, i64* %3, align 8
  %161 = load i64, i64* %3, align 8
  %162 = load i64, i64* @ERROR_SUCCESS, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %147
  br label %318

165:                                              ; preds = %147
  br label %166

166:                                              ; preds = %165, %142
  %167 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %168 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %188

171:                                              ; preds = %166
  %172 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %173 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %176 = call i32 @StringFromGUID2(i32* %174, i8* %175, i32 39)
  %177 = load i32, i32* %8, align 4
  %178 = load i8*, i8** @vendor_valuename, align 8
  %179 = load i32, i32* @REG_SZ, align 4
  %180 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %181 = bitcast i8* %180 to i32*
  %182 = call i64 @RegSetValueExW(i32 %177, i8* %178, i32 0, i32 %179, i32* %181, i64 78)
  store i64 %182, i64* %3, align 8
  %183 = load i64, i64* %3, align 8
  %184 = load i64, i64* @ERROR_SUCCESS, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %171
  br label %318

187:                                              ; preds = %171
  br label %188

188:                                              ; preds = %187, %166
  %189 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %190 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %212

193:                                              ; preds = %188
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @version_valuename, align 4
  %196 = load i32, i32* @REG_SZ, align 4
  %197 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %198 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to i32*
  %201 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %202 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @strlen(i64 %203)
  %205 = add nsw i32 %204, 1
  %206 = call i64 @RegSetValueExA(i32 %194, i32 %195, i32 0, i32 %196, i32* %200, i32 %205)
  store i64 %206, i64* %3, align 8
  %207 = load i64, i64* %3, align 8
  %208 = load i64, i64* @ERROR_SUCCESS, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %193
  br label %318

211:                                              ; preds = %193
  br label %212

212:                                              ; preds = %211, %188
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @bitsperpixel_valuename, align 4
  %215 = load i32, i32* @REG_DWORD, align 4
  %216 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %217 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %216, i32 0, i32 0
  %218 = call i64 @RegSetValueExA(i32 %213, i32 %214, i32 0, i32 %215, i32* %217, i32 4)
  store i64 %218, i64* %3, align 8
  %219 = load i64, i64* %3, align 8
  %220 = load i64, i64* @ERROR_SUCCESS, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %318

223:                                              ; preds = %212
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @channelcount_valuename, align 4
  %226 = load i32, i32* @REG_DWORD, align 4
  %227 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %228 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %227, i32 0, i32 1
  %229 = bitcast i64* %228 to i32*
  %230 = call i64 @RegSetValueExA(i32 %224, i32 %225, i32 0, i32 %226, i32* %229, i32 4)
  store i64 %230, i64* %3, align 8
  %231 = load i64, i64* %3, align 8
  %232 = load i64, i64* @ERROR_SUCCESS, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %223
  br label %318

235:                                              ; preds = %223
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @numericrepresentation_valuename, align 4
  %238 = load i32, i32* @REG_DWORD, align 4
  %239 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %240 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %239, i32 0, i32 4
  %241 = call i64 @RegSetValueExA(i32 %236, i32 %237, i32 0, i32 %238, i32* %240, i32 4)
  store i64 %241, i64* %3, align 8
  %242 = load i64, i64* %3, align 8
  %243 = load i64, i64* @ERROR_SUCCESS, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  br label %318

246:                                              ; preds = %235
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @supportstransparency_valuename, align 4
  %249 = load i32, i32* @REG_DWORD, align 4
  %250 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %251 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %250, i32 0, i32 3
  %252 = call i64 @RegSetValueExA(i32 %247, i32 %248, i32 0, i32 %249, i32* %251, i32 4)
  store i64 %252, i64* %3, align 8
  %253 = load i64, i64* %3, align 8
  %254 = load i64, i64* @ERROR_SUCCESS, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  br label %318

257:                                              ; preds = %246
  %258 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %259 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %258, i32 0, i32 2
  %260 = load i32**, i32*** %259, align 8
  %261 = icmp ne i32** %260, null
  br i1 %261, label %262, label %317

262:                                              ; preds = %257
  %263 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %264 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 7
  %267 = sdiv i32 %266, 8
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %12, align 8
  %269 = load i32, i32* %8, align 4
  %270 = load i8*, i8** @channelmasks_keyname, align 8
  %271 = load i32, i32* @KEY_READ, align 4
  %272 = load i32, i32* @KEY_WRITE, align 4
  %273 = or i32 %271, %272
  %274 = call i64 @RegCreateKeyExW(i32 %269, i8* %270, i32 0, i32* null, i32 0, i32 %273, i32* null, i32* %10, i32* null)
  store i64 %274, i64* %3, align 8
  %275 = load i64, i64* %3, align 8
  %276 = load i64, i64* @ERROR_SUCCESS, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %262
  br label %318

279:                                              ; preds = %262
  store i64 0, i64* %11, align 8
  br label %280

280:                                              ; preds = %306, %279
  %281 = load i64, i64* %11, align 8
  %282 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %283 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp ult i64 %281, %284
  br i1 %285, label %286, label %309

286:                                              ; preds = %280
  %287 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 0
  %288 = load i64, i64* %11, align 8
  %289 = call i32 @sprintfW(i8* %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @register_pixelformats.valuename_format, i64 0, i64 0), i64 %288)
  %290 = load i32, i32* %10, align 4
  %291 = getelementptr inbounds [11 x i8], [11 x i8]* %13, i64 0, i64 0
  %292 = load i32, i32* @REG_BINARY, align 4
  %293 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %294 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %293, i32 0, i32 2
  %295 = load i32**, i32*** %294, align 8
  %296 = load i64, i64* %11, align 8
  %297 = getelementptr inbounds i32*, i32** %295, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* %12, align 8
  %300 = call i64 @RegSetValueExW(i32 %290, i8* %291, i32 0, i32 %292, i32* %298, i64 %299)
  store i64 %300, i64* %3, align 8
  %301 = load i64, i64* %3, align 8
  %302 = load i64, i64* @ERROR_SUCCESS, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %286
  br label %309

305:                                              ; preds = %286
  br label %306

306:                                              ; preds = %305
  %307 = load i64, i64* %11, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %11, align 8
  br label %280

309:                                              ; preds = %304, %280
  %310 = load i32, i32* %10, align 4
  %311 = call i32 @RegCloseKey(i32 %310)
  %312 = load i64, i64* %3, align 8
  %313 = load i64, i64* @ERROR_SUCCESS, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %309
  br label %318

316:                                              ; preds = %309
  br label %317

317:                                              ; preds = %316, %257
  br label %318

318:                                              ; preds = %317, %315, %278, %256, %245, %234, %222, %210, %186, %164, %140, %117
  %319 = load i32, i32* %8, align 4
  %320 = call i32 @RegCloseKey(i32 %319)
  br label %321

321:                                              ; preds = %318
  %322 = load %struct.regsvr_pixelformat*, %struct.regsvr_pixelformat** %2, align 8
  %323 = getelementptr inbounds %struct.regsvr_pixelformat, %struct.regsvr_pixelformat* %322, i32 1
  store %struct.regsvr_pixelformat* %323, %struct.regsvr_pixelformat** %2, align 8
  br label %62

324:                                              ; preds = %71
  br label %325

325:                                              ; preds = %324, %88, %46
  %326 = load i32, i32* %7, align 4
  %327 = call i32 @RegCloseKey(i32 %326)
  %328 = load i32, i32* %6, align 4
  %329 = call i32 @RegCloseKey(i32 %328)
  %330 = load i32, i32* %4, align 4
  %331 = call i32 @RegCloseKey(i32 %330)
  br label %332

332:                                              ; preds = %325, %60
  %333 = load i64, i64* %3, align 8
  %334 = load i64, i64* @ERROR_SUCCESS, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %339

336:                                              ; preds = %332
  %337 = load i64, i64* %3, align 8
  %338 = call i32 @HRESULT_FROM_WIN32(i64 %337)
  br label %341

339:                                              ; preds = %332
  %340 = load i32, i32* @S_OK, align 4
  br label %341

341:                                              ; preds = %339, %336
  %342 = phi i32 [ %338, %336 ], [ %340, %339 ]
  ret i32 %342
}

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegSetValueExW(i32, i8*, i32, i32, i32*, i64) #1

declare dso_local i64 @RegSetValueExA(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @sprintfW(i8*, i8*, i64) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
