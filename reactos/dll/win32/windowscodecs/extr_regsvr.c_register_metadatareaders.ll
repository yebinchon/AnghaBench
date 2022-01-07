; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_metadatareaders.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_metadatareaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_metadatareader = type { %struct.reader_containers*, i64, i32, i32, i64, i64, i32*, i32*, i64, i64, i32* }
%struct.reader_containers = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i64, i32*, i32*, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i8* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@CATID_WICMetadataReader = common dso_local global i32 0, align 4
@instance_keyname = common dso_local global i8* null, align 8
@clsid_valuename = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@author_valuename = common dso_local global i32 0, align 4
@friendlyname_valuename = common dso_local global i32 0, align 4
@vendor_valuename = common dso_local global i32 0, align 4
@metadataformat_valuename = common dso_local global i32 0, align 4
@version_valuename = common dso_local global i32 0, align 4
@specversion_valuename = common dso_local global i32 0, align 4
@requiresfullstream_valuename = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@supportspadding_valuename = common dso_local global i32 0, align 4
@requiresfixedsize_valuename = common dso_local global i32 0, align 4
@containers_keyname = common dso_local global i8* null, align 8
@register_metadatareaders.int_format = internal constant [3 x i8] c"%i\00", align 1
@position_valuename = common dso_local global i32 0, align 4
@pattern_valuename = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@mask_valuename = common dso_local global i32 0, align 4
@dataoffset_valuename = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_metadatareader*)* @register_metadatareaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_metadatareaders(%struct.regsvr_metadatareader* %0) #0 {
  %2 = alloca %struct.regsvr_metadatareader*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [39 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.reader_containers*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regsvr_metadatareader* %0, %struct.regsvr_metadatareader** %2, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %15, i64* %3, align 8
  %16 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %17 = load i8*, i8** @clsid_keyname, align 8
  %18 = load i32, i32* @KEY_READ, align 4
  %19 = load i32, i32* @KEY_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @RegCreateKeyExW(i32 %16, i8* %17, i32 0, i32* null, i32 0, i32 %20, i32* null, i32* %4, i32* null)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %1
  %26 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %27 = call i32 @StringFromGUID2(i32* @CATID_WICMetadataReader, i8* %26, i32 39)
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %30 = load i32, i32* @KEY_READ, align 4
  %31 = load i32, i32* @KEY_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @RegCreateKeyExW(i32 %28, i8* %29, i32 0, i32* null, i32 0, i32 %32, i32* null, i32* %6, i32* null)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** @instance_keyname, align 8
  %40 = load i32, i32* @KEY_READ, align 4
  %41 = load i32, i32* @KEY_WRITE, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @RegCreateKeyExW(i32 %38, i8* %39, i32 0, i32* null, i32 0, i32 %42, i32* null, i32* %7, i32* null)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %476

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @RegCloseKey(i32 %54)
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %483

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %472, %62
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %69 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %68, i32 0, i32 10
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br label %72

72:                                               ; preds = %67, %63
  %73 = phi i1 [ false, %63 ], [ %71, %67 ]
  br i1 %73, label %74, label %475

74:                                               ; preds = %72
  %75 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %76 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %75, i32 0, i32 10
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %79 = call i32 @StringFromGUID2(i32* %77, i8* %78, i32 39)
  %80 = load i32, i32* %4, align 4
  %81 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %82 = load i32, i32* @KEY_READ, align 4
  %83 = load i32, i32* @KEY_WRITE, align 4
  %84 = or i32 %82, %83
  %85 = call i64 @RegCreateKeyExW(i32 %80, i8* %81, i32 0, i32* null, i32 0, i32 %84, i32* null, i32* %8, i32* null)
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %476

90:                                               ; preds = %74
  %91 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %92 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %91, i32 0, i32 10
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %95 = call i32 @StringFromGUID2(i32* %93, i8* %94, i32 39)
  %96 = load i32, i32* %7, align 4
  %97 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %98 = load i32, i32* @KEY_READ, align 4
  %99 = load i32, i32* @KEY_WRITE, align 4
  %100 = or i32 %98, %99
  %101 = call i64 @RegCreateKeyExW(i32 %96, i8* %97, i32 0, i32* null, i32 0, i32 %100, i32* null, i32* %9, i32* null)
  store i64 %101, i64* %3, align 8
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* @ERROR_SUCCESS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %90
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @clsid_valuename, align 4
  %108 = load i32, i32* @REG_SZ, align 4
  %109 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %110 = bitcast i8* %109 to i32*
  %111 = call i64 @RegSetValueExW(i32 %106, i32 %107, i32 0, i32 %108, i32* %110, i32 78)
  store i64 %111, i64* %3, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @RegCloseKey(i32 %112)
  br label %114

114:                                              ; preds = %105, %90
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* @ERROR_SUCCESS, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %469

119:                                              ; preds = %114
  %120 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %121 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %120, i32 0, i32 9
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %119
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @author_valuename, align 4
  %127 = load i32, i32* @REG_SZ, align 4
  %128 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %129 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %128, i32 0, i32 9
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %133 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %132, i32 0, i32 9
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @strlen(i64 %134)
  %136 = add nsw i32 %135, 1
  %137 = call i64 @RegSetValueExA(i32 %125, i32 %126, i32 0, i32 %127, i32* %131, i32 %136)
  store i64 %137, i64* %3, align 8
  %138 = load i64, i64* %3, align 8
  %139 = load i64, i64* @ERROR_SUCCESS, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %124
  br label %469

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %142, %119
  %144 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %145 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %144, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @friendlyname_valuename, align 4
  %151 = load i32, i32* @REG_SZ, align 4
  %152 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %153 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  %156 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %157 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %156, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @strlen(i64 %158)
  %160 = add nsw i32 %159, 1
  %161 = call i64 @RegSetValueExA(i32 %149, i32 %150, i32 0, i32 %151, i32* %155, i32 %160)
  store i64 %161, i64* %3, align 8
  %162 = load i64, i64* %3, align 8
  %163 = load i64, i64* @ERROR_SUCCESS, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %148
  br label %469

166:                                              ; preds = %148
  br label %167

167:                                              ; preds = %166, %143
  %168 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %169 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %168, i32 0, i32 7
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %189

172:                                              ; preds = %167
  %173 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %174 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %173, i32 0, i32 7
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %177 = call i32 @StringFromGUID2(i32* %175, i8* %176, i32 39)
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @vendor_valuename, align 4
  %180 = load i32, i32* @REG_SZ, align 4
  %181 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %182 = bitcast i8* %181 to i32*
  %183 = call i64 @RegSetValueExW(i32 %178, i32 %179, i32 0, i32 %180, i32* %182, i32 78)
  store i64 %183, i64* %3, align 8
  %184 = load i64, i64* %3, align 8
  %185 = load i64, i64* @ERROR_SUCCESS, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %172
  br label %469

188:                                              ; preds = %172
  br label %189

189:                                              ; preds = %188, %167
  %190 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %191 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %190, i32 0, i32 6
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %211

194:                                              ; preds = %189
  %195 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %196 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %199 = call i32 @StringFromGUID2(i32* %197, i8* %198, i32 39)
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @metadataformat_valuename, align 4
  %202 = load i32, i32* @REG_SZ, align 4
  %203 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %204 = bitcast i8* %203 to i32*
  %205 = call i64 @RegSetValueExW(i32 %200, i32 %201, i32 0, i32 %202, i32* %204, i32 78)
  store i64 %205, i64* %3, align 8
  %206 = load i64, i64* %3, align 8
  %207 = load i64, i64* @ERROR_SUCCESS, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  br label %469

210:                                              ; preds = %194
  br label %211

211:                                              ; preds = %210, %189
  %212 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %213 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %235

216:                                              ; preds = %211
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @version_valuename, align 4
  %219 = load i32, i32* @REG_SZ, align 4
  %220 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %221 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to i32*
  %224 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %225 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @strlen(i64 %226)
  %228 = add nsw i32 %227, 1
  %229 = call i64 @RegSetValueExA(i32 %217, i32 %218, i32 0, i32 %219, i32* %223, i32 %228)
  store i64 %229, i64* %3, align 8
  %230 = load i64, i64* %3, align 8
  %231 = load i64, i64* @ERROR_SUCCESS, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %216
  br label %469

234:                                              ; preds = %216
  br label %235

235:                                              ; preds = %234, %211
  %236 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %237 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %259

240:                                              ; preds = %235
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @specversion_valuename, align 4
  %243 = load i32, i32* @REG_SZ, align 4
  %244 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %245 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = inttoptr i64 %246 to i32*
  %248 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %249 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @strlen(i64 %250)
  %252 = add nsw i32 %251, 1
  %253 = call i64 @RegSetValueExA(i32 %241, i32 %242, i32 0, i32 %243, i32* %247, i32 %252)
  store i64 %253, i64* %3, align 8
  %254 = load i64, i64* %3, align 8
  %255 = load i64, i64* @ERROR_SUCCESS, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %240
  br label %469

258:                                              ; preds = %240
  br label %259

259:                                              ; preds = %258, %235
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* @requiresfullstream_valuename, align 4
  %262 = load i32, i32* @REG_DWORD, align 4
  %263 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %264 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %263, i32 0, i32 3
  %265 = call i64 @RegSetValueExA(i32 %260, i32 %261, i32 0, i32 %262, i32* %264, i32 4)
  store i64 %265, i64* %3, align 8
  %266 = load i64, i64* %3, align 8
  %267 = load i64, i64* @ERROR_SUCCESS, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %259
  br label %469

270:                                              ; preds = %259
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* @supportspadding_valuename, align 4
  %273 = load i32, i32* @REG_DWORD, align 4
  %274 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %275 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %274, i32 0, i32 2
  %276 = call i64 @RegSetValueExA(i32 %271, i32 %272, i32 0, i32 %273, i32* %275, i32 4)
  store i64 %276, i64* %3, align 8
  %277 = load i64, i64* %3, align 8
  %278 = load i64, i64* @ERROR_SUCCESS, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %270
  br label %469

281:                                              ; preds = %270
  %282 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %283 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %281
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @requiresfixedsize_valuename, align 4
  %289 = load i32, i32* @REG_DWORD, align 4
  %290 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %291 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %290, i32 0, i32 1
  %292 = bitcast i64* %291 to i32*
  %293 = call i64 @RegSetValueExA(i32 %287, i32 %288, i32 0, i32 %289, i32* %292, i32 4)
  store i64 %293, i64* %3, align 8
  %294 = load i64, i64* %3, align 8
  %295 = load i64, i64* @ERROR_SUCCESS, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %286
  br label %469

298:                                              ; preds = %286
  br label %299

299:                                              ; preds = %298, %281
  %300 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %301 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %300, i32 0, i32 0
  %302 = load %struct.reader_containers*, %struct.reader_containers** %301, align 8
  %303 = icmp ne %struct.reader_containers* %302, null
  br i1 %303, label %304, label %468

304:                                              ; preds = %299
  %305 = load i32, i32* %8, align 4
  %306 = load i8*, i8** @containers_keyname, align 8
  %307 = load i32, i32* @KEY_READ, align 4
  %308 = load i32, i32* @KEY_WRITE, align 4
  %309 = or i32 %307, %308
  %310 = call i64 @RegCreateKeyExW(i32 %305, i8* %306, i32 0, i32* null, i32 0, i32 %309, i32* null, i32* %10, i32* null)
  store i64 %310, i64* %3, align 8
  %311 = load i64, i64* %3, align 8
  %312 = load i64, i64* @ERROR_SUCCESS, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %304
  br label %469

315:                                              ; preds = %304
  %316 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %317 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %316, i32 0, i32 0
  %318 = load %struct.reader_containers*, %struct.reader_containers** %317, align 8
  store %struct.reader_containers* %318, %struct.reader_containers** %11, align 8
  br label %319

319:                                              ; preds = %462, %315
  %320 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %321 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %324, label %465

324:                                              ; preds = %319
  %325 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %326 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %329 = call i32 @StringFromGUID2(i32* %327, i8* %328, i32 39)
  %330 = load i32, i32* %10, align 4
  %331 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %332 = load i32, i32* @KEY_READ, align 4
  %333 = load i32, i32* @KEY_WRITE, align 4
  %334 = or i32 %332, %333
  %335 = call i64 @RegCreateKeyExW(i32 %330, i8* %331, i32 0, i32* null, i32 0, i32 %334, i32* null, i32* %12, i32* null)
  store i64 %335, i64* %3, align 8
  %336 = load i64, i64* %3, align 8
  %337 = load i64, i64* @ERROR_SUCCESS, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %324
  br label %465

340:                                              ; preds = %324
  store i32 0, i32* %13, align 4
  br label %341

341:                                              ; preds = %456, %340
  %342 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %343 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %342, i32 0, i32 0
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** %343, align 8
  %345 = load i32, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %459

351:                                              ; preds = %341
  %352 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %353 = load i32, i32* %13, align 4
  %354 = call i32 @snprintfW(i8* %352, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @register_metadatareaders.int_format, i64 0, i64 0), i32 %353)
  %355 = load i32, i32* %12, align 4
  %356 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %357 = load i32, i32* @KEY_READ, align 4
  %358 = load i32, i32* @KEY_WRITE, align 4
  %359 = or i32 %357, %358
  %360 = call i64 @RegCreateKeyExW(i32 %355, i8* %356, i32 0, i32* null, i32 0, i32 %359, i32* null, i32* %14, i32* null)
  store i64 %360, i64* %3, align 8
  %361 = load i64, i64* %3, align 8
  %362 = load i64, i64* @ERROR_SUCCESS, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %351
  br label %459

365:                                              ; preds = %351
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* @position_valuename, align 4
  %368 = load i32, i32* @REG_DWORD, align 4
  %369 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %370 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %369, i32 0, i32 0
  %371 = load %struct.TYPE_2__*, %struct.TYPE_2__** %370, align 8
  %372 = load i32, i32* %13, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 4
  %376 = call i64 @RegSetValueExA(i32 %366, i32 %367, i32 0, i32 %368, i32* %375, i32 4)
  store i64 %376, i64* %3, align 8
  %377 = load i64, i64* %3, align 8
  %378 = load i64, i64* @ERROR_SUCCESS, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %401

380:                                              ; preds = %365
  %381 = load i32, i32* %14, align 4
  %382 = load i32, i32* @pattern_valuename, align 4
  %383 = load i32, i32* @REG_BINARY, align 4
  %384 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %385 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %384, i32 0, i32 0
  %386 = load %struct.TYPE_2__*, %struct.TYPE_2__** %385, align 8
  %387 = load i32, i32* %13, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 3
  %391 = load i32*, i32** %390, align 8
  %392 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %393 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %392, i32 0, i32 0
  %394 = load %struct.TYPE_2__*, %struct.TYPE_2__** %393, align 8
  %395 = load i32, i32* %13, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i64 @RegSetValueExA(i32 %381, i32 %382, i32 0, i32 %383, i32* %391, i32 %399)
  store i64 %400, i64* %3, align 8
  br label %401

401:                                              ; preds = %380, %365
  %402 = load i64, i64* %3, align 8
  %403 = load i64, i64* @ERROR_SUCCESS, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %426

405:                                              ; preds = %401
  %406 = load i32, i32* %14, align 4
  %407 = load i32, i32* @mask_valuename, align 4
  %408 = load i32, i32* @REG_BINARY, align 4
  %409 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %410 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %409, i32 0, i32 0
  %411 = load %struct.TYPE_2__*, %struct.TYPE_2__** %410, align 8
  %412 = load i32, i32* %13, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 2
  %416 = load i32*, i32** %415, align 8
  %417 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %418 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %417, i32 0, i32 0
  %419 = load %struct.TYPE_2__*, %struct.TYPE_2__** %418, align 8
  %420 = load i32, i32* %13, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = call i64 @RegSetValueExA(i32 %406, i32 %407, i32 0, i32 %408, i32* %416, i32 %424)
  store i64 %425, i64* %3, align 8
  br label %426

426:                                              ; preds = %405, %401
  %427 = load i64, i64* %3, align 8
  %428 = load i64, i64* @ERROR_SUCCESS, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %453

430:                                              ; preds = %426
  %431 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %432 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %431, i32 0, i32 0
  %433 = load %struct.TYPE_2__*, %struct.TYPE_2__** %432, align 8
  %434 = load i32, i32* %13, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %453

440:                                              ; preds = %430
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* @dataoffset_valuename, align 4
  %443 = load i32, i32* @REG_DWORD, align 4
  %444 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %445 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %444, i32 0, i32 0
  %446 = load %struct.TYPE_2__*, %struct.TYPE_2__** %445, align 8
  %447 = load i32, i32* %13, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i32 0, i32 1
  %451 = bitcast i64* %450 to i32*
  %452 = call i64 @RegSetValueExA(i32 %441, i32 %442, i32 0, i32 %443, i32* %451, i32 4)
  store i64 %452, i64* %3, align 8
  br label %453

453:                                              ; preds = %440, %430, %426
  %454 = load i32, i32* %14, align 4
  %455 = call i32 @RegCloseKey(i32 %454)
  br label %456

456:                                              ; preds = %453
  %457 = load i32, i32* %13, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %13, align 4
  br label %341

459:                                              ; preds = %364, %341
  %460 = load i32, i32* %12, align 4
  %461 = call i32 @RegCloseKey(i32 %460)
  br label %462

462:                                              ; preds = %459
  %463 = load %struct.reader_containers*, %struct.reader_containers** %11, align 8
  %464 = getelementptr inbounds %struct.reader_containers, %struct.reader_containers* %463, i32 1
  store %struct.reader_containers* %464, %struct.reader_containers** %11, align 8
  br label %319

465:                                              ; preds = %339, %319
  %466 = load i32, i32* %10, align 4
  %467 = call i32 @RegCloseKey(i32 %466)
  br label %468

468:                                              ; preds = %465, %299
  br label %469

469:                                              ; preds = %468, %314, %297, %280, %269, %257, %233, %209, %187, %165, %141, %118
  %470 = load i32, i32* %8, align 4
  %471 = call i32 @RegCloseKey(i32 %470)
  br label %472

472:                                              ; preds = %469
  %473 = load %struct.regsvr_metadatareader*, %struct.regsvr_metadatareader** %2, align 8
  %474 = getelementptr inbounds %struct.regsvr_metadatareader, %struct.regsvr_metadatareader* %473, i32 1
  store %struct.regsvr_metadatareader* %474, %struct.regsvr_metadatareader** %2, align 8
  br label %63

475:                                              ; preds = %72
  br label %476

476:                                              ; preds = %475, %89, %47
  %477 = load i32, i32* %7, align 4
  %478 = call i32 @RegCloseKey(i32 %477)
  %479 = load i32, i32* %6, align 4
  %480 = call i32 @RegCloseKey(i32 %479)
  %481 = load i32, i32* %4, align 4
  %482 = call i32 @RegCloseKey(i32 %481)
  br label %483

483:                                              ; preds = %476, %61
  %484 = load i64, i64* %3, align 8
  %485 = load i64, i64* @ERROR_SUCCESS, align 8
  %486 = icmp ne i64 %484, %485
  br i1 %486, label %487, label %490

487:                                              ; preds = %483
  %488 = load i64, i64* %3, align 8
  %489 = call i32 @HRESULT_FROM_WIN32(i64 %488)
  br label %492

490:                                              ; preds = %483
  %491 = load i32, i32* @S_OK, align 4
  br label %492

492:                                              ; preds = %490, %487
  %493 = phi i32 [ %489, %487 ], [ %491, %490 ]
  ret i32 %493
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
