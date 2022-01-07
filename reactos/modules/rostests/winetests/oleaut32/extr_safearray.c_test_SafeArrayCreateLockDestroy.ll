; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayCreateLockDestroy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayCreateLockDestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 }

@VT_UI1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Max bounds didn't fail\0A\00", align 1
@VT_EMPTY = common dso_local global i64 0, align 8
@VT_CLSID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"VARTYPE %d (@%d dimensions) failed\0A\00", align 1
@VT_R8 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"VARTYPE %d (@%d dimensions) succeeded!\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"VARTYPE %d (@%d dimensions) cDims is %d, expected %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"VARTYPE %d (@%d dimensions) cbElements is %d, expected %d\0A\00", align 1
@VT_UNKNOWN = common dso_local global i64 0, align 8
@VT_DISPATCH = common dso_local global i64 0, align 8
@FADF_HAVEIID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Non interface type should not have FADF_HAVEIID\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Unexpected ret value %#x.\0A\00", align 1
@VT_RECORD = common dso_local global i64 0, align 8
@FADF_HAVEVARTYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Non interface type should have FADF_HAVEVARTYPE\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Non interface type %d: bad type %d, hres %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Interface type should have FADF_HAVEIID\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to set array IID, hres %#x.\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Interface type %d should not have FADF_HAVEVARTYPE\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"Lock VARTYPE %d (@%d dimensions) failed; hres 0x%x\0A\00", align 1
@DISP_E_ARRAYISLOCKED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"Destroy() got hres %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"DestroyData() got hres %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"DestroyDescriptor() got hres %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Unlock VARTYPE %d (@%d dims) hres 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"destroy VARTYPE %d (@%d dims) hres 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SafeArrayCreateLockDestroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SafeArrayCreateLockDestroy() #0 {
  %1 = alloca [4 x %struct.TYPE_16__], align 16
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %20, %0
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %1, i64 0, i64 0
  %11 = call i64 @ARRAY_SIZE(%struct.TYPE_16__* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %1, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %1, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32 8, i32* %19, align 16
  br label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %5, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load i64, i64* @VT_UI1, align 8
  %25 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %1, i64 0, i64 0
  %26 = call %struct.TYPE_17__* @SafeArrayCreate(i64 %24, i64 65536, %struct.TYPE_16__* %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %2, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %1, i64 0, i64 0
  %33 = call i32 @memset(%struct.TYPE_16__* %32, i32 0, i32 64)
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %43, %23
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %1, i64 0, i64 0
  %37 = call i64 @ARRAY_SIZE(%struct.TYPE_16__* %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %1, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i32 8, i32* %42, align 16
  br label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %34

46:                                               ; preds = %34
  store i64 1, i64* %5, align 8
  br label %47

47:                                               ; preds = %259, %46
  %48 = load i64, i64* %5, align 8
  %49 = icmp ult i64 %48, 4
  br i1 %49, label %50, label %262

50:                                               ; preds = %47
  %51 = load i64, i64* @VT_EMPTY, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %255, %50
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @VT_CLSID, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %258

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @SAFEARRAY_GetVTSize(i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %1, i64 0, i64 0
  %62 = call %struct.TYPE_17__* @SafeArrayCreate(i64 %59, i64 %60, %struct.TYPE_16__* %61)
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = icmp ne %struct.TYPE_17__* %66, null
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %69, i64 %70)
  br label %85

72:                                               ; preds = %56
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %74 = icmp eq %struct.TYPE_17__* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @VT_R8, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ true, %72 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %79, %65
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %87 = icmp ne %struct.TYPE_17__* %86, null
  br i1 %87, label %88, label %254

88:                                               ; preds = %85
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %90 = call i64 @SafeArrayGetDim(%struct.TYPE_17__* %89)
  %91 = load i64, i64* %5, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %97 = call i64 @SafeArrayGetDim(%struct.TYPE_17__* %96)
  %98 = load i64, i64* %5, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %94, i64 %95, i64 %97, i64 %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %101 = call i32 @SafeArrayGetElemsize(%struct.TYPE_17__* %100)
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %88
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @VT_R8, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %88
  %109 = phi i1 [ true, %88 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = call i32 @SafeArrayGetElemsize(%struct.TYPE_17__* %113)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %111, i64 %112, i32 %114, i32 %115)
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @VT_UNKNOWN, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %170

120:                                              ; preds = %108
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* @VT_DISPATCH, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %170

124:                                              ; preds = %120
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FADF_HAVEIID, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %134 = call i32 @SafeArraySetIID(%struct.TYPE_17__* %133, i32* @IID_IUnknown)
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @E_INVALIDARG, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %3, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* @VT_RECORD, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %169

144:                                              ; preds = %124
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @FADF_HAVEVARTYPE, align 4
  %149 = and i32 %147, %148
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br i1 true, label %151, label %168

151:                                              ; preds = %144
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %153 = call i32 @pSafeArrayGetVartype(%struct.TYPE_17__* %152, i64* %7)
  store i32 %153, i32* %3, align 4
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @S_OK, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %4, align 8
  %160 = icmp eq i64 %158, %159
  br label %161

161:                                              ; preds = %157, %151
  %162 = phi i1 [ false, %151 ], [ %160, %157 ]
  %163 = zext i1 %162 to i32
  %164 = load i64, i64* %4, align 8
  %165 = load i64, i64* %7, align 8
  %166 = load i32, i32* %3, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i64 %164, i64 %165, i32 %166)
  br label %168

168:                                              ; preds = %161, %144
  br label %169

169:                                              ; preds = %168, %124
  br label %194

170:                                              ; preds = %120, %108
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @FADF_HAVEIID, align 4
  %175 = and i32 %173, %174
  %176 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %178 = call i32 @SafeArraySetIID(%struct.TYPE_17__* %177, i32* @IID_IUnknown)
  store i32 %178, i32* %3, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @S_OK, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %3, align 4
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @FADF_HAVEVARTYPE, align 4
  %189 = and i32 %187, %188
  %190 = icmp eq i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %4, align 8
  %193 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i64 %192)
  br label %194

194:                                              ; preds = %170, %169
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %196 = call i32 @SafeArrayLock(%struct.TYPE_17__* %195)
  store i32 %196, i32* %3, align 4
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @S_OK, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = load i64, i64* %4, align 8
  %202 = load i64, i64* %5, align 8
  %203 = load i32, i32* %3, align 4
  %204 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i64 %201, i64 %202, i32 %203)
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @S_OK, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %253

208:                                              ; preds = %194
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %210 = call i32 @SafeArrayDestroy(%struct.TYPE_17__* %209)
  store i32 %210, i32* %3, align 4
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* @DISP_E_ARRAYISLOCKED, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %3, align 4
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %215)
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %218 = call i32 @SafeArrayDestroyData(%struct.TYPE_17__* %217)
  store i32 %218, i32* %3, align 4
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* @DISP_E_ARRAYISLOCKED, align 4
  %221 = icmp eq i32 %219, %220
  %222 = zext i1 %221 to i32
  %223 = load i32, i32* %3, align 4
  %224 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %226 = call i32 @SafeArrayDestroyDescriptor(%struct.TYPE_17__* %225)
  store i32 %226, i32* %3, align 4
  %227 = load i32, i32* %3, align 4
  %228 = load i32, i32* @DISP_E_ARRAYISLOCKED, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* %3, align 4
  %232 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %231)
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %234 = call i32 @SafeArrayUnlock(%struct.TYPE_17__* %233)
  store i32 %234, i32* %3, align 4
  %235 = load i32, i32* %3, align 4
  %236 = load i32, i32* @S_OK, align 4
  %237 = icmp eq i32 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %4, align 8
  %240 = load i64, i64* %5, align 8
  %241 = load i32, i32* %3, align 4
  %242 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i64 %239, i64 %240, i32 %241)
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %244 = call i32 @SafeArrayDestroy(%struct.TYPE_17__* %243)
  store i32 %244, i32* %3, align 4
  %245 = load i32, i32* %3, align 4
  %246 = load i32, i32* @S_OK, align 4
  %247 = icmp eq i32 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i64, i64* %4, align 8
  %250 = load i64, i64* %5, align 8
  %251 = load i32, i32* %3, align 4
  %252 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i64 %249, i64 %250, i32 %251)
  br label %253

253:                                              ; preds = %208, %194
  br label %254

254:                                              ; preds = %253, %85
  br label %255

255:                                              ; preds = %254
  %256 = load i64, i64* %4, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %4, align 8
  br label %52

258:                                              ; preds = %52
  br label %259

259:                                              ; preds = %258
  %260 = load i64, i64* %5, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %5, align 8
  br label %47

262:                                              ; preds = %47
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @SafeArrayCreate(i64, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @SAFEARRAY_GetVTSize(i64) #1

declare dso_local i64 @SafeArrayGetDim(%struct.TYPE_17__*) #1

declare dso_local i32 @SafeArrayGetElemsize(%struct.TYPE_17__*) #1

declare dso_local i32 @SafeArraySetIID(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @pSafeArrayGetVartype(%struct.TYPE_17__*, i64*) #1

declare dso_local i32 @SafeArrayLock(%struct.TYPE_17__*) #1

declare dso_local i32 @SafeArrayDestroy(%struct.TYPE_17__*) #1

declare dso_local i32 @SafeArrayDestroyData(%struct.TYPE_17__*) #1

declare dso_local i32 @SafeArrayDestroyDescriptor(%struct.TYPE_17__*) #1

declare dso_local i32 @SafeArrayUnlock(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
