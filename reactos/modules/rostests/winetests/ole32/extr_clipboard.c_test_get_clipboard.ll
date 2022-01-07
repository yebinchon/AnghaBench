; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_get_clipboard.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_get_clipboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"OleGetClipboard(NULL) should return E_INVALIDARG instead of 0x%08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"OleGetClipboard failed with error 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@expect_DataObjectImpl_QueryGetData = common dso_local global i32 0, align 4
@CF_TEXT = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"IDataObject_QueryGetData failed with error 0x%08x\0A\00", align 1
@DV_E_FORMATETC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [83 x i8] c"IDataObject_QueryGetData should have failed with DV_E_FORMATETC instead of 0x%08x\0A\00", align 1
@DVASPECT_THUMBNAIL = common dso_local global i8* null, align 8
@CF_RIFF = common dso_local global i32 0, align 4
@DV_E_CLIPFORMAT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [84 x i8] c"IDataObject_QueryGetData should have failed with DV_E_CLIPFORMAT instead of 0x%08x\0A\00", align 1
@TYMED_FILE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DataObjectImpl_GetData_calls = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"IDataObject_GetData failed with error 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"IDataObject_GetData should have failed with DV_E_FORMATETC instead of 0x%08x\0A\00", align 1
@DV_E_TYMED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [74 x i8] c"IDataObject_GetData should have failed with DV_E_TYMED instead of 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"DataObjectImpl_GetData should have been called 6 times instead of %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_clipboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_clipboard() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = call i64 @OleGetClipboard(i32** null)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @E_INVALIDARG, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i64 @OleGetClipboard(i32** %2)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* @expect_DataObjectImpl_QueryGetData, align 4
  %22 = load i32, i32* @CF_TEXT, align 4
  %23 = load i32, i32* @TYMED_HGLOBAL, align 4
  %24 = bitcast %struct.TYPE_5__* %3 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = call i32 @InitFormatEtc(i64 %25, i32 %22, i32 %23)
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @IDataObject_QueryGetData(i32* %27, %struct.TYPE_5__* %3)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @CF_TEXT, align 4
  %37 = load i32, i32* @TYMED_HGLOBAL, align 4
  %38 = bitcast %struct.TYPE_5__* %3 to i64*
  %39 = load i64, i64* %38, align 4
  %40 = call i32 @InitFormatEtc(i64 %39, i32 %36, i32 %37)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 -559038737, i32* %41, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @IDataObject_QueryGetData(i32* %42, %struct.TYPE_5__* %3)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @DV_E_FORMATETC, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %1, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @CF_TEXT, align 4
  %52 = load i32, i32* @TYMED_HGLOBAL, align 4
  %53 = bitcast %struct.TYPE_5__* %3 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = call i32 @InitFormatEtc(i64 %54, i32 %51, i32 %52)
  %56 = load i8*, i8** @DVASPECT_THUMBNAIL, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @IDataObject_QueryGetData(i32* %59, %struct.TYPE_5__* %3)
  store i64 %60, i64* %1, align 8
  %61 = load i64, i64* %1, align 8
  %62 = load i64, i64* @DV_E_FORMATETC, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %1, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @CF_TEXT, align 4
  %69 = load i32, i32* @TYMED_HGLOBAL, align 4
  %70 = bitcast %struct.TYPE_5__* %3 to i64*
  %71 = load i64, i64* %70, align 4
  %72 = call i32 @InitFormatEtc(i64 %71, i32 %68, i32 %69)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 256, i32* %73, align 4
  %74 = load i32*, i32** %2, align 8
  %75 = call i64 @IDataObject_QueryGetData(i32* %74, %struct.TYPE_5__* %3)
  store i64 %75, i64* %1, align 8
  %76 = load i64, i64* %1, align 8
  %77 = load i64, i64* @DV_E_FORMATETC, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %0
  %80 = load i64, i64* %1, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @broken(i32 %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %79, %0
  %87 = phi i1 [ true, %0 ], [ %85, %79 ]
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %1, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @CF_RIFF, align 4
  %93 = load i32, i32* @TYMED_HGLOBAL, align 4
  %94 = bitcast %struct.TYPE_5__* %3 to i64*
  %95 = load i64, i64* %94, align 4
  %96 = call i32 @InitFormatEtc(i64 %95, i32 %92, i32 %93)
  %97 = load i32*, i32** %2, align 8
  %98 = call i64 @IDataObject_QueryGetData(i32* %97, %struct.TYPE_5__* %3)
  store i64 %98, i64* %1, align 8
  %99 = load i64, i64* %1, align 8
  %100 = load i64, i64* @DV_E_CLIPFORMAT, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %1, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @CF_TEXT, align 4
  %107 = load i32, i32* @TYMED_FILE, align 4
  %108 = bitcast %struct.TYPE_5__* %3 to i64*
  %109 = load i64, i64* %108, align 4
  %110 = call i32 @InitFormatEtc(i64 %109, i32 %106, i32 %107)
  %111 = load i32*, i32** %2, align 8
  %112 = call i64 @IDataObject_QueryGetData(i32* %111, %struct.TYPE_5__* %3)
  store i64 %112, i64* %1, align 8
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @S_OK, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %1, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* @expect_DataObjectImpl_QueryGetData, align 4
  store i32 0, i32* @DataObjectImpl_GetData_calls, align 4
  %121 = load i32, i32* @CF_TEXT, align 4
  %122 = load i32, i32* @TYMED_HGLOBAL, align 4
  %123 = bitcast %struct.TYPE_5__* %3 to i64*
  %124 = load i64, i64* %123, align 4
  %125 = call i32 @InitFormatEtc(i64 %124, i32 %121, i32 %122)
  %126 = load i32*, i32** %2, align 8
  %127 = call i64 @IDataObject_GetData(i32* %126, %struct.TYPE_5__* %3, i32* %4)
  store i64 %127, i64* %1, align 8
  %128 = load i64, i64* %1, align 8
  %129 = load i64, i64* @S_OK, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %1, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load i64, i64* %1, align 8
  %136 = call i64 @SUCCEEDED(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %86
  %139 = call i32 @ReleaseStgMedium(i32* %4)
  br label %140

140:                                              ; preds = %138, %86
  %141 = load i32, i32* @CF_TEXT, align 4
  %142 = load i32, i32* @TYMED_HGLOBAL, align 4
  %143 = bitcast %struct.TYPE_5__* %3 to i64*
  %144 = load i64, i64* %143, align 4
  %145 = call i32 @InitFormatEtc(i64 %144, i32 %141, i32 %142)
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 -559038737, i32* %146, align 4
  %147 = load i32*, i32** %2, align 8
  %148 = call i64 @IDataObject_GetData(i32* %147, %struct.TYPE_5__* %3, i32* %4)
  store i64 %148, i64* %1, align 8
  %149 = load i64, i64* %1, align 8
  %150 = load i64, i64* @S_OK, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %1, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %154)
  %156 = load i64, i64* %1, align 8
  %157 = call i64 @SUCCEEDED(i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %140
  %160 = call i32 @ReleaseStgMedium(i32* %4)
  br label %161

161:                                              ; preds = %159, %140
  %162 = load i32, i32* @CF_TEXT, align 4
  %163 = load i32, i32* @TYMED_HGLOBAL, align 4
  %164 = bitcast %struct.TYPE_5__* %3 to i64*
  %165 = load i64, i64* %164, align 4
  %166 = call i32 @InitFormatEtc(i64 %165, i32 %162, i32 %163)
  %167 = load i8*, i8** @DVASPECT_THUMBNAIL, align 8
  %168 = ptrtoint i8* %167 to i32
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %168, i32* %169, align 4
  %170 = load i32*, i32** %2, align 8
  %171 = call i64 @IDataObject_GetData(i32* %170, %struct.TYPE_5__* %3, i32* %4)
  store i64 %171, i64* %1, align 8
  %172 = load i64, i64* %1, align 8
  %173 = load i64, i64* @S_OK, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %1, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  %179 = load i64, i64* %1, align 8
  %180 = call i64 @SUCCEEDED(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %161
  %183 = call i32 @ReleaseStgMedium(i32* %4)
  br label %184

184:                                              ; preds = %182, %161
  %185 = load i32, i32* @CF_TEXT, align 4
  %186 = load i32, i32* @TYMED_HGLOBAL, align 4
  %187 = bitcast %struct.TYPE_5__* %3 to i64*
  %188 = load i64, i64* %187, align 4
  %189 = call i32 @InitFormatEtc(i64 %188, i32 %185, i32 %186)
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 256, i32* %190, align 4
  %191 = load i32*, i32** %2, align 8
  %192 = call i64 @IDataObject_GetData(i32* %191, %struct.TYPE_5__* %3, i32* %4)
  store i64 %192, i64* %1, align 8
  %193 = load i64, i64* %1, align 8
  %194 = load i64, i64* @DV_E_FORMATETC, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %203, label %196

196:                                              ; preds = %184
  %197 = load i64, i64* %1, align 8
  %198 = load i64, i64* @S_OK, align 8
  %199 = icmp eq i64 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i64 @broken(i32 %200)
  %202 = icmp ne i64 %201, 0
  br label %203

203:                                              ; preds = %196, %184
  %204 = phi i1 [ true, %184 ], [ %202, %196 ]
  %205 = zext i1 %204 to i32
  %206 = load i64, i64* %1, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @ok(i32 %205, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %207)
  %209 = load i64, i64* %1, align 8
  %210 = load i64, i64* @S_OK, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %203
  %213 = load i32, i32* @DataObjectImpl_GetData_calls, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* @DataObjectImpl_GetData_calls, align 4
  %215 = call i32 @ReleaseStgMedium(i32* %4)
  br label %216

216:                                              ; preds = %212, %203
  %217 = load i32, i32* @CF_RIFF, align 4
  %218 = load i32, i32* @TYMED_HGLOBAL, align 4
  %219 = bitcast %struct.TYPE_5__* %3 to i64*
  %220 = load i64, i64* %219, align 4
  %221 = call i32 @InitFormatEtc(i64 %220, i32 %217, i32 %218)
  %222 = load i32*, i32** %2, align 8
  %223 = call i64 @IDataObject_GetData(i32* %222, %struct.TYPE_5__* %3, i32* %4)
  store i64 %223, i64* %1, align 8
  %224 = load i64, i64* %1, align 8
  %225 = load i64, i64* @DV_E_FORMATETC, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i64, i64* %1, align 8
  %229 = trunc i64 %228 to i32
  %230 = call i32 @ok(i32 %227, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %229)
  %231 = load i64, i64* %1, align 8
  %232 = call i64 @SUCCEEDED(i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %216
  %235 = call i32 @ReleaseStgMedium(i32* %4)
  br label %236

236:                                              ; preds = %234, %216
  %237 = load i32, i32* @CF_TEXT, align 4
  %238 = load i32, i32* @TYMED_FILE, align 4
  %239 = bitcast %struct.TYPE_5__* %3 to i64*
  %240 = load i64, i64* %239, align 4
  %241 = call i32 @InitFormatEtc(i64 %240, i32 %237, i32 %238)
  %242 = load i32*, i32** %2, align 8
  %243 = call i64 @IDataObject_GetData(i32* %242, %struct.TYPE_5__* %3, i32* %4)
  store i64 %243, i64* %1, align 8
  %244 = load i64, i64* %1, align 8
  %245 = load i64, i64* @DV_E_TYMED, align 8
  %246 = icmp eq i64 %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i64, i64* %1, align 8
  %249 = trunc i64 %248 to i32
  %250 = call i32 @ok(i32 %247, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i32 %249)
  %251 = load i64, i64* %1, align 8
  %252 = call i64 @SUCCEEDED(i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %236
  %255 = call i32 @ReleaseStgMedium(i32* %4)
  br label %256

256:                                              ; preds = %254, %236
  %257 = load i32, i32* @DataObjectImpl_GetData_calls, align 4
  %258 = icmp eq i32 %257, 6
  %259 = zext i1 %258 to i32
  %260 = load i32, i32* @DataObjectImpl_GetData_calls, align 4
  %261 = call i32 @ok(i32 %259, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 %260)
  %262 = load i32*, i32** %2, align 8
  %263 = call i32 @IDataObject_Release(i32* %262)
  ret void
}

declare dso_local i64 @OleGetClipboard(i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @InitFormatEtc(i64, i32, i32) #1

declare dso_local i64 @IDataObject_QueryGetData(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @IDataObject_GetData(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @ReleaseStgMedium(i32*) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
