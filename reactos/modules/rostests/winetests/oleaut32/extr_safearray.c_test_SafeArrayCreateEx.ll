; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayCreateEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayCreateEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32 }

@VT_UI1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CreateEx NULL bounds didn't fail\0A\00", align 1
@VT_DISPATCH = common dso_local global i32 0, align 4
@IID_ITypeInfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CreateEx (ITypeInfo) failed\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to get array IID, hres %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"CreateEx (ITypeInfo) bad IID\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to set IID, hres = %8x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Set bad IID\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"CreateEx (NULL) failed\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"CreateEx (NULL) bad IID\0A\00", align 1
@VT_UNKNOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"CreateEx (NULL-Unk) failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"CreateEx (NULL-Unk) bad IID\0A\00", align 1
@VT_RECORD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"CreateEx (NULL-Rec) succeeded\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@fail_GetSize = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"CreateEx (Fail Size) failed\0A\00", align 1
@START_REF_COUNT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"Wrong iRec refcount %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"GetSize called %d times\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Clear called %d times\0A\00", align 1
@RECORD_SIZE_FAIL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"Altered size to %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Destroy->Clear called %d times\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"got %d, expected %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"CreateEx (Rec) failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"GRI failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Different saRec\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Didn't AddRef %d\0A\00", align 1
@RECORD_SIZE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"Elemsize is %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Destroy->GetSize called %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SafeArrayCreateEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SafeArrayCreateEx() #0 {
  %1 = alloca %struct.TYPE_16__*, align 8
  %2 = alloca [4 x %struct.TYPE_14__], align 16
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %23, %0
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %14 = call i64 @ARRAY_SIZE(%struct.TYPE_14__* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 8, i32* %22, align 16
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %11

26:                                               ; preds = %11
  %27 = load i32, i32* @VT_UI1, align 4
  %28 = call %struct.TYPE_15__* @pSafeArrayCreateEx(i32 %27, i32 1, %struct.TYPE_14__* null, i32* null)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %3, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = icmp eq %struct.TYPE_15__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @VT_DISPATCH, align 4
  %34 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %35 = call %struct.TYPE_15__* @pSafeArrayCreateEx(i32 %33, i32 1, %struct.TYPE_14__* %34, i32* @IID_ITypeInfo)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %3, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = icmp ne %struct.TYPE_15__* %40, null
  br i1 %41, label %42, label %81

42:                                               ; preds = %26
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = call i32 @SafeArrayGetIID(%struct.TYPE_15__* %43, i32* %6)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 @IsEqualGUID(i32* %6, i32* @IID_ITypeInfo)
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = call i32 @SafeArraySetIID(%struct.TYPE_15__* %53, i32* @IID_IUnknown)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @S_OK, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = call i32 @SafeArrayGetIID(%struct.TYPE_15__* %61, i32* %6)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @S_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %42
  %67 = call i32 @IsEqualGUID(i32* %6, i32* @IID_IUnknown)
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %66, %42
  %70 = phi i1 [ false, %42 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = call i32 @SafeArrayDestroy(%struct.TYPE_15__* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @S_OK, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %69, %26
  %82 = load i32, i32* @VT_DISPATCH, align 4
  %83 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %84 = call %struct.TYPE_15__* @pSafeArrayCreateEx(i32 %82, i32 1, %struct.TYPE_14__* %83, i32* null)
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %3, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = icmp ne %struct.TYPE_15__* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = icmp ne %struct.TYPE_15__* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %81
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = call i32 @SafeArrayGetIID(%struct.TYPE_15__* %92, i32* %7)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @S_OK, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %4, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = call i32 @IsEqualGUID(i32* %7, i32* @IID_IDispatch)
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = call i32 @SafeArrayDestroy(%struct.TYPE_15__* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @S_OK, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %4, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %91, %81
  %111 = load i32, i32* @VT_UNKNOWN, align 4
  %112 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %113 = call %struct.TYPE_15__* @pSafeArrayCreateEx(i32 %111, i32 1, %struct.TYPE_14__* %112, i32* null)
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %3, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = icmp ne %struct.TYPE_15__* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = icmp ne %struct.TYPE_15__* %118, null
  br i1 %119, label %120, label %139

120:                                              ; preds = %110
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %122 = call i32 @SafeArrayGetIID(%struct.TYPE_15__* %121, i32* %8)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @S_OK, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = call i32 @IsEqualGUID(i32* %8, i32* @IID_IUnknown)
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = call i32 @SafeArrayDestroy(%struct.TYPE_15__* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %4, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %120, %110
  %140 = load i32, i32* @VT_RECORD, align 4
  %141 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %142 = call %struct.TYPE_15__* @pSafeArrayCreateEx(i32 %140, i32 1, %struct.TYPE_14__* %141, i32* null)
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %3, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %144 = icmp eq %struct.TYPE_15__* %143, null
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %147 = call %struct.TYPE_16__* (...) @IRecordInfoImpl_Construct()
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %1, align 8
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* @fail_GetSize, align 4
  %149 = load i32, i32* @VT_RECORD, align 4
  %150 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = call %struct.TYPE_15__* @pSafeArrayCreateEx(i32 %149, i32 1, %struct.TYPE_14__* %150, i32* %152)
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %3, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %155 = icmp ne %struct.TYPE_15__* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @START_REF_COUNT, align 4
  %162 = add nsw i32 %161, 1
  %163 = icmp eq i32 %160, %162
  %164 = zext i1 %163 to i32
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 1
  %173 = zext i1 %172 to i32
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = icmp ne %struct.TYPE_15__* %187, null
  br i1 %188, label %189, label %231

189:                                              ; preds = %139
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @RECORD_SIZE_FAIL, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %198)
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %201 = call i32 @SafeArrayDestroy(%struct.TYPE_15__* %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @S_OK, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %4, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 16
  %214 = icmp eq i32 %210, %213
  %215 = zext i1 %214 to i32
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @START_REF_COUNT, align 4
  %224 = icmp eq i32 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @START_REF_COUNT, align 4
  %230 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %189, %139
  %232 = load i32, i32* @FALSE, align 4
  store i32 %232, i32* @fail_GetSize, align 4
  %233 = load i32, i32* @START_REF_COUNT, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  store i32 0, i32* %237, align 4
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 2
  store i32 0, i32* %239, align 4
  %240 = load i32, i32* @VT_RECORD, align 4
  %241 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 4
  %244 = call %struct.TYPE_15__* @pSafeArrayCreateEx(i32 %240, i32 1, %struct.TYPE_14__* %241, i32* %243)
  store %struct.TYPE_15__* %244, %struct.TYPE_15__** %3, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %246 = icmp ne %struct.TYPE_15__* %245, null
  %247 = zext i1 %246 to i32
  %248 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @START_REF_COUNT, align 4
  %253 = add nsw i32 %252, 1
  %254 = icmp eq i32 %251, %253
  %255 = zext i1 %254 to i32
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %258)
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 1
  %264 = zext i1 %263 to i32
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %267)
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 0
  %273 = zext i1 %272 to i32
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %276)
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %279 = icmp ne %struct.TYPE_15__* %278, null
  br i1 %279, label %280, label %408

280:                                              ; preds = %231
  br i1 true, label %281, label %408

281:                                              ; preds = %280
  store i32* null, i32** %9, align 8
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %283 = call i32 @pSafeArrayGetRecordInfo(%struct.TYPE_15__* %282, i32** %9)
  store i32 %283, i32* %4, align 4
  %284 = load i32, i32* %4, align 4
  %285 = load i32, i32* @S_OK, align 4
  %286 = icmp eq i32 %284, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %289 = load i32*, i32** %9, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 4
  %292 = icmp eq i32* %289, %291
  %293 = zext i1 %292 to i32
  %294 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @START_REF_COUNT, align 4
  %299 = add nsw i32 %298, 2
  %300 = icmp eq i32 %297, %299
  %301 = zext i1 %300 to i32
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 (i32, i8*, ...) @ok(i32 %301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %304)
  %306 = load i32*, i32** %9, align 8
  %307 = call i32 @IRecordInfo_Release(i32* %306)
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @RECORD_SIZE, align 4
  %312 = icmp eq i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* @VT_RECORD, align 4
  %319 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 4
  %322 = call %struct.TYPE_15__* @pSafeArrayCreateEx(i32 %318, i32 1, %struct.TYPE_14__* %319, i32* %321)
  store %struct.TYPE_15__* %322, %struct.TYPE_15__** %10, align 8
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 3
  store i32 0, i32* %324, align 4
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 2
  store i32 0, i32* %326, align 4
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %329 = call i32 @SafeArrayCopyData(%struct.TYPE_15__* %327, %struct.TYPE_15__* %328)
  store i32 %329, i32* %4, align 4
  %330 = load i32, i32* %4, align 4
  %331 = load i32, i32* @S_OK, align 4
  %332 = icmp eq i32 %330, %331
  %333 = zext i1 %332 to i32
  %334 = load i32, i32* %4, align 4
  %335 = call i32 (i32, i8*, ...) @ok(i32 %333, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %334)
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 16
  %342 = icmp eq i32 %338, %341
  %343 = zext i1 %342 to i32
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (i32, i8*, ...) @ok(i32 %343, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %346)
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %350, 0
  %352 = zext i1 %351 to i32
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  %356 = call i32 (i32, i8*, ...) @ok(i32 %352, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %355)
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %358 = call i32 @SafeArrayDestroy(%struct.TYPE_15__* %357)
  store i32 %358, i32* %4, align 4
  %359 = load i32, i32* %4, align 4
  %360 = load i32, i32* @S_OK, align 4
  %361 = icmp eq i32 %359, %360
  %362 = zext i1 %361 to i32
  %363 = load i32, i32* %4, align 4
  %364 = call i32 (i32, i8*, ...) @ok(i32 %362, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %363)
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 2
  store i32 0, i32* %366, align 4
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 1
  store i32 0, i32* %368, align 4
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %370 = call i32 @SafeArrayDestroy(%struct.TYPE_15__* %369)
  store i32 %370, i32* %4, align 4
  %371 = load i32, i32* %4, align 4
  %372 = load i32, i32* @S_OK, align 4
  %373 = icmp eq i32 %371, %372
  %374 = zext i1 %373 to i32
  %375 = load i32, i32* %4, align 4
  %376 = call i32 (i32, i8*, ...) @ok(i32 %374, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %375)
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 0
  %381 = zext i1 %380 to i32
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i32 (i32, i8*, ...) @ok(i32 %381, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i32 %384)
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = getelementptr inbounds [4 x %struct.TYPE_14__], [4 x %struct.TYPE_14__]* %2, i64 0, i64 0
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 16
  %392 = icmp eq i32 %388, %391
  %393 = zext i1 %392 to i32
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = call i32 (i32, i8*, ...) @ok(i32 %393, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %396)
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @START_REF_COUNT, align 4
  %402 = icmp eq i32 %400, %401
  %403 = zext i1 %402 to i32
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = call i32 (i32, i8*, ...) @ok(i32 %403, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %406)
  br label %417

408:                                              ; preds = %280, %231
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %410 = call i32 @SafeArrayDestroy(%struct.TYPE_15__* %409)
  store i32 %410, i32* %4, align 4
  %411 = load i32, i32* %4, align 4
  %412 = load i32, i32* @S_OK, align 4
  %413 = icmp eq i32 %411, %412
  %414 = zext i1 %413 to i32
  %415 = load i32, i32* %4, align 4
  %416 = call i32 (i32, i8*, ...) @ok(i32 %414, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %415)
  br label %417

417:                                              ; preds = %408, %281
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 4
  %420 = call i32 @IRecordInfo_Release(i32* %419)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @pSafeArrayCreateEx(i32, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SafeArrayGetIID(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @SafeArraySetIID(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @SafeArrayDestroy(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @IRecordInfoImpl_Construct(...) #1

declare dso_local i32 @pSafeArrayGetRecordInfo(%struct.TYPE_15__*, i32**) #1

declare dso_local i32 @IRecordInfo_Release(i32*) #1

declare dso_local i32 @SafeArrayCopyData(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
