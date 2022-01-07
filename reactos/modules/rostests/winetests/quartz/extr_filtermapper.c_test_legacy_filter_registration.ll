; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtermapper.c_test_legacy_filter_registration.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtermapper.c_test_legacy_filter_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@test_legacy_filter_registration.testfilterW = internal constant [11 x i8] c"Testfilter\00", align 1
@test_legacy_filter_registration.clsidW = internal constant [7 x i8] c"CLSID\\\00", align 1
@test_legacy_filter_registration.pinW = internal constant [5 x i8] c"Pin1\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Not authorized to register filters\0A\00", align 1
@CLSID_FilterMapper2 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IFilterMapper2 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"CoCreateInstance failed with %x\0A\00", align 1
@IID_IFilterMapper = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"IFilterMapper2_QueryInterface failed with %x\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@MERIT_UNLIKELY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"RegisterFilter failed: %#x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GUID_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"RegisterPin failed: %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"RegisterPinType failed: %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"IFilterMapper2_EnumMatchingFilters failed: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"IFilterMapper2 didn't find filter\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"IFilterMapper_EnumMatchingFilters failed with %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"IFilterMapper didn't find filter\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"FilterMapper_UnregisterFilter failed with %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"IFilterMapper2 shouldn't find filter\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"IFilterMapper shouldn't find filter\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"RegDeleteKeyA failed: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_legacy_filter_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_legacy_filter_registration() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca [40 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call i32 @CoCreateGuid(i32* %9)
  %15 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %16 = call i32 @StringFromGUID2(i32* %9, i8* %15, i32 40)
  %17 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %18 = call i32 @lstrcpyW(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_legacy_filter_registration.clsidW, i64 0, i64 0))
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %20 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %21 = call i32 @lstrcatW(i8* %19, i8* %20)
  %22 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* @KEY_WRITE, align 4
  %25 = call i64 @RegCreateKeyExW(i32 %22, i8* %23, i32 0, i32* null, i32 0, i32 %24, i32* null, i32* %13, i32* null)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %0
  %30 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %265

31:                                               ; preds = %0
  %32 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %33 = bitcast i32** %3 to i8**
  %34 = call i64 @CoCreateInstance(i32* @CLSID_FilterMapper2, i32* null, i32 %32, i32* @IID_IFilterMapper2, i8** %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %11, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = bitcast i32** %4 to i8**
  %43 = call i64 @IFilterMapper2_QueryInterface(i32* %41, i32* @IID_IFilterMapper, i8** %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %11, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @REG_SZ, align 4
  %52 = call i32 @RegSetValueExW(i32 %50, i32* null, i32 0, i32 %51, i32* bitcast ([11 x i8]* @test_legacy_filter_registration.testfilterW to i32*), i32 11)
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @RegCloseKey(i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MERIT_UNLIKELY, align 4
  %58 = call i64 @IFilterMapper_RegisterFilter(i32* %55, i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_legacy_filter_registration.testfilterW, i64 0, i64 0), i32 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %11, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @TRUE, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32, i32* @GUID_NULL, align 4
  %72 = call i64 @IFilterMapper_RegisterPin(i32* %65, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_legacy_filter_registration.pinW, i64 0, i64 0), i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32* null)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %11, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @GUID_NULL, align 4
  %82 = load i32, i32* @GUID_NULL, align 4
  %83 = call i64 @IFilterMapper_RegisterPinType(i32* %79, i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_legacy_filter_registration.pinW, i64 0, i64 0), i32 %81, i32 %82)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* @S_OK, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32, i32* @MERIT_UNLIKELY, align 4
  %93 = load i32, i32* @TRUE, align 4
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i64 @IFilterMapper2_EnumMatchingFilters(i32* %90, i32** %2, i32 0, i32 %91, i32 %92, i32 %93, i32 0, i32* null, i32* null, i32* @GUID_NULL, i32 %94, i32 %95, i32 0, i32* null, i32* null, i32* @GUID_NULL)
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %11, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @enum_find_filter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_legacy_filter_registration.testfilterW, i64 0, i64 0), i32* %103)
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32*, i32** %2, align 8
  %107 = call i32 @IEnumMoniker_Release(i32* %106)
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %12, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* @MERIT_UNLIKELY, align 4
  %111 = load i32, i32* @TRUE, align 4
  %112 = load i32, i32* @GUID_NULL, align 4
  %113 = load i32, i32* @GUID_NULL, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = load i32, i32* @FALSE, align 4
  %116 = load i32, i32* @GUID_NULL, align 4
  %117 = load i32, i32* @GUID_NULL, align 4
  %118 = call i64 @IFilterMapper_EnumMatchingFilters(i32* %109, i32** %1, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @S_OK, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i64, i64* %11, align 8
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i64 %123)
  br label %125

125:                                              ; preds = %148, %31
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load i32*, i32** %1, align 8
  %130 = call i64 @IEnumRegFilters_Next(i32* %129, i32 1, %struct.TYPE_3__** %5, i32* %8)
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  br label %133

133:                                              ; preds = %128, %125
  %134 = phi i1 [ false, %125 ], [ %132, %128 ]
  br i1 %134, label %135, label %149

135:                                              ; preds = %133
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @lstrcmpW(i32 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_legacy_filter_registration.testfilterW, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = call i64 @IsEqualGUID(i32* %9, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %146, %141, %135
  br label %125

149:                                              ; preds = %133
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @IEnumRegFilters_Release(i32* %150)
  %152 = load i32, i32* %12, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i64 @IFilterMapper_UnregisterFilter(i32* %154, i32 %155)
  store i64 %156, i64* %11, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* @S_OK, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i64, i64* %11, align 8
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i64 %161)
  %163 = load i32*, i32** %3, align 8
  %164 = load i32, i32* @TRUE, align 4
  %165 = load i32, i32* @MERIT_UNLIKELY, align 4
  %166 = load i32, i32* @TRUE, align 4
  %167 = load i32, i32* @FALSE, align 4
  %168 = load i32, i32* @FALSE, align 4
  %169 = call i64 @IFilterMapper2_EnumMatchingFilters(i32* %163, i32** %2, i32 0, i32 %164, i32 %165, i32 %166, i32 0, i32* null, i32* null, i32* @GUID_NULL, i32 %167, i32 %168, i32 0, i32* null, i32* null, i32* @GUID_NULL)
  store i64 %169, i64* %11, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* @S_OK, align 8
  %172 = icmp eq i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i64, i64* %11, align 8
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %174)
  %176 = load i32*, i32** %2, align 8
  %177 = call i32 @enum_find_filter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_legacy_filter_registration.testfilterW, i64 0, i64 0), i32* %176)
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %182 = load i32*, i32** %2, align 8
  %183 = call i32 @IEnumMoniker_Release(i32* %182)
  %184 = load i32, i32* @FALSE, align 4
  store i32 %184, i32* %12, align 4
  %185 = load i32*, i32** %4, align 8
  %186 = load i32, i32* @MERIT_UNLIKELY, align 4
  %187 = load i32, i32* @TRUE, align 4
  %188 = load i32, i32* @GUID_NULL, align 4
  %189 = load i32, i32* @GUID_NULL, align 4
  %190 = load i32, i32* @FALSE, align 4
  %191 = load i32, i32* @FALSE, align 4
  %192 = load i32, i32* @GUID_NULL, align 4
  %193 = load i32, i32* @GUID_NULL, align 4
  %194 = call i64 @IFilterMapper_EnumMatchingFilters(i32* %185, i32** %1, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  store i64 %194, i64* %11, align 8
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* @S_OK, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i32
  %199 = load i64, i64* %11, align 8
  %200 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i64 %199)
  br label %201

201:                                              ; preds = %224, %149
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  %205 = load i32*, i32** %1, align 8
  %206 = call i64 @IEnumRegFilters_Next(i32* %205, i32 1, %struct.TYPE_3__** %5, i32* %8)
  %207 = load i64, i64* @S_OK, align 8
  %208 = icmp eq i64 %206, %207
  br label %209

209:                                              ; preds = %204, %201
  %210 = phi i1 [ false, %201 ], [ %208, %204 ]
  br i1 %210, label %211, label %225

211:                                              ; preds = %209
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @lstrcmpW(i32 %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_legacy_filter_registration.testfilterW, i64 0, i64 0))
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %211
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = call i64 @IsEqualGUID(i32* %9, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i32, i32* @TRUE, align 4
  store i32 %223, i32* %12, align 4
  br label %224

224:                                              ; preds = %222, %217, %211
  br label %201

225:                                              ; preds = %209
  %226 = load i32*, i32** %1, align 8
  %227 = call i32 @IEnumRegFilters_Release(i32* %226)
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %233 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %234 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %235 = call i64 @RegDeleteKeyW(i32 %233, i8* %234)
  store i64 %235, i64* %10, align 8
  %236 = load i64, i64* %10, align 8
  %237 = icmp ne i64 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = load i64, i64* %10, align 8
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %240)
  %242 = load i32*, i32** %4, align 8
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @MERIT_UNLIKELY, align 4
  %245 = call i64 @IFilterMapper_RegisterFilter(i32* %242, i32 %243, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_legacy_filter_registration.testfilterW, i64 0, i64 0), i32 %244)
  store i64 %245, i64* %11, align 8
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* @S_OK, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i64, i64* %11, align 8
  %251 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %250)
  %252 = load i32*, i32** %4, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i64 @IFilterMapper_UnregisterFilter(i32* %252, i32 %253)
  store i64 %254, i64* %11, align 8
  %255 = load i64, i64* %11, align 8
  %256 = load i64, i64* @S_OK, align 8
  %257 = icmp eq i64 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load i64, i64* %11, align 8
  %260 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i64 %259)
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @IFilterMapper_Release(i32* %261)
  %263 = load i32*, i32** %3, align 8
  %264 = call i32 @IFilterMapper2_Release(i32* %263)
  br label %265

265:                                              ; preds = %225, %29
  ret void
}

declare dso_local i32 @CoCreateGuid(i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IFilterMapper2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @RegSetValueExW(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @IFilterMapper_RegisterFilter(i32*, i32, i8*, i32) #1

declare dso_local i64 @IFilterMapper_RegisterPin(i32*, i32, i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @IFilterMapper_RegisterPinType(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @IFilterMapper2_EnumMatchingFilters(i32*, i32**, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @enum_find_filter(i8*, i32*) #1

declare dso_local i32 @IEnumMoniker_Release(i32*) #1

declare dso_local i64 @IFilterMapper_EnumMatchingFilters(i32*, i32**, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IEnumRegFilters_Next(i32*, i32, %struct.TYPE_3__**, i32*) #1

declare dso_local i32 @lstrcmpW(i32, i8*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @IEnumRegFilters_Release(i32*) #1

declare dso_local i64 @IFilterMapper_UnregisterFilter(i32*, i32) #1

declare dso_local i64 @RegDeleteKeyW(i32, i8*) #1

declare dso_local i32 @IFilterMapper_Release(i32*) #1

declare dso_local i32 @IFilterMapper2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
