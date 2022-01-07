; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_enum_fmtetc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_enum_fmtetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32* }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"OleGetClipboard failed with error 0x%08x\0A\00", align 1
@DATADIR_SET = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@DataObjectImpl_EnumFormatEtc_calls = common dso_local global i64 0, align 8
@DATADIR_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"EnumFormatEtc was called\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"EnumFormatEtc failed, skipping tests.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"shouldn't be here\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%d: got %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%d: %04x %04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%d: %08x %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"%d: expected non-NULL\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"formats don't match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_enum_fmtetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_enum_fmtetc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %9, align 8
  %12 = call i64 @OleGetClipboard(i32** %4)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %3, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @DATADIR_SET, align 4
  %21 = call i64 @IDataObject_EnumFormatEtc(i32* %19, i32 %20, i32** %5)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @E_NOTIMPL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @E_INVALIDARG, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @broken(i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %25, %1
  %33 = phi i1 [ true, %1 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %3, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  store i64 0, i64* @DataObjectImpl_EnumFormatEtc_calls, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @DATADIR_GET, align 4
  %39 = call i64 @IDataObject_EnumFormatEtc(i32* %37, i32 %38, i32** %5)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %3, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* @DataObjectImpl_EnumFormatEtc_calls, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @FAILED(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = call i32 @skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %271

55:                                               ; preds = %32
  %56 = load i32*, i32** %2, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @DATADIR_GET, align 4
  %61 = call i64 @IDataObject_EnumFormatEtc(i32* %59, i32 %60, i32** %6)
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %149, %62
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @IEnumFORMATETC_Next(i32* %64, i32 1, %struct.TYPE_4__* %7, i32* null)
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %152

68:                                               ; preds = %63
  %69 = load i32*, i32** %2, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @IEnumFORMATETC_Next(i32* %73, i32 1, %struct.TYPE_4__* %8, i32* null)
  store i64 %74, i64* %3, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %3, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %79, i64 %80)
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @dump_fmtetc(%struct.TYPE_4__* %7)
  %84 = call i32 @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %82, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %86, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %91, i64 %93, i64 %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %98, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 %103, i64 %105, i64 %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %110, %112
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 %115, i64 %117, i64 %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %122, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 %127, i64 %129, i64 %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %68
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  %140 = zext i1 %139 to i32
  %141 = load i64, i64* %9, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %141)
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @CoTaskMemFree(i32* %144)
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @CoTaskMemFree(i32* %147)
  br label %149

149:                                              ; preds = %136, %68
  %150 = load i64, i64* %9, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %9, align 8
  br label %63

152:                                              ; preds = %63
  %153 = load i64, i64* %3, align 8
  %154 = load i64, i64* @S_FALSE, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %3, align 8
  %159 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %157, i64 %158)
  %160 = load i32*, i32** %2, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %174

162:                                              ; preds = %152
  %163 = load i32*, i32** %6, align 8
  %164 = call i64 @IEnumFORMATETC_Next(i32* %163, i32 1, %struct.TYPE_4__* %8, i32* null)
  store i64 %164, i64* %3, align 8
  %165 = load i64, i64* %3, align 8
  %166 = load i64, i64* @S_FALSE, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %3, align 8
  %171 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %169, i64 %170)
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @IEnumFORMATETC_Release(i32* %172)
  br label %174

174:                                              ; preds = %162, %152
  %175 = load i32*, i32** %5, align 8
  %176 = call i64 @IEnumFORMATETC_Reset(i32* %175)
  store i64 %176, i64* %3, align 8
  %177 = load i64, i64* %3, align 8
  %178 = load i64, i64* @S_OK, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i64, i64* %3, align 8
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %181)
  %183 = load i32*, i32** %2, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %266

185:                                              ; preds = %174
  %186 = load i32*, i32** %5, align 8
  %187 = call i64 @IEnumFORMATETC_Next(i32* %186, i32 1, %struct.TYPE_4__* %11, i32* null)
  store i64 %187, i64* %3, align 8
  %188 = load i64, i64* %3, align 8
  %189 = load i64, i64* @S_OK, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %3, align 8
  %193 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %192)
  %194 = load i32*, i32** %5, align 8
  %195 = call i64 @IEnumFORMATETC_Next(i32* %194, i32 1, %struct.TYPE_4__* %11, i32* null)
  store i64 %195, i64* %3, align 8
  %196 = load i64, i64* %3, align 8
  %197 = load i64, i64* @S_OK, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i64, i64* %3, align 8
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %200)
  %202 = load i32*, i32** %5, align 8
  %203 = call i64 @IEnumFORMATETC_Next(i32* %202, i32 1, %struct.TYPE_4__* %11, i32* null)
  store i64 %203, i64* %3, align 8
  %204 = load i64, i64* %3, align 8
  %205 = load i64, i64* @S_OK, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i64, i64* %3, align 8
  %209 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %208)
  %210 = load i32*, i32** %5, align 8
  %211 = call i64 @IEnumFORMATETC_Reset(i32* %210)
  store i64 %211, i64* %3, align 8
  %212 = load i64, i64* %3, align 8
  %213 = load i64, i64* @S_OK, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i64, i64* %3, align 8
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %216)
  %218 = load i32*, i32** %5, align 8
  %219 = call i64 @IEnumFORMATETC_Skip(i32* %218, i32 2)
  store i64 %219, i64* %3, align 8
  %220 = load i64, i64* %3, align 8
  %221 = load i64, i64* @S_OK, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i32
  %224 = load i64, i64* %3, align 8
  %225 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %224)
  %226 = load i32*, i32** %5, align 8
  %227 = call i64 @IEnumFORMATETC_Clone(i32* %226, i32** %10)
  store i64 %227, i64* %3, align 8
  %228 = load i64, i64* %3, align 8
  %229 = load i64, i64* @S_OK, align 8
  %230 = icmp eq i64 %228, %229
  %231 = zext i1 %230 to i32
  %232 = load i64, i64* %3, align 8
  %233 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %232)
  %234 = load i32*, i32** %5, align 8
  %235 = call i64 @IEnumFORMATETC_Next(i32* %234, i32 1, %struct.TYPE_4__* %7, i32* null)
  store i64 %235, i64* %3, align 8
  %236 = load i64, i64* %3, align 8
  %237 = load i64, i64* @S_OK, align 8
  %238 = icmp eq i64 %236, %237
  %239 = zext i1 %238 to i32
  %240 = load i64, i64* %3, align 8
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %240)
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %243, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %249 = load i32*, i32** %10, align 8
  %250 = call i64 @IEnumFORMATETC_Next(i32* %249, i32 1, %struct.TYPE_4__* %7, i32* null)
  store i64 %250, i64* %3, align 8
  %251 = load i64, i64* %3, align 8
  %252 = load i64, i64* @S_OK, align 8
  %253 = icmp eq i64 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i64, i64* %3, align 8
  %256 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %255)
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %258, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %264 = load i32*, i32** %10, align 8
  %265 = call i32 @IEnumFORMATETC_Release(i32* %264)
  br label %266

266:                                              ; preds = %185, %174
  %267 = load i32*, i32** %5, align 8
  %268 = call i32 @IEnumFORMATETC_Release(i32* %267)
  %269 = load i32*, i32** %4, align 8
  %270 = call i32 @IDataObject_Release(i32* %269)
  br label %271

271:                                              ; preds = %266, %53
  ret void
}

declare dso_local i64 @OleGetClipboard(i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IDataObject_EnumFormatEtc(i32*, i32, i32**) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IEnumFORMATETC_Next(i32*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @trace(i8*, i64, i32) #1

declare dso_local i32 @dump_fmtetc(%struct.TYPE_4__*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IEnumFORMATETC_Release(i32*) #1

declare dso_local i64 @IEnumFORMATETC_Reset(i32*) #1

declare dso_local i64 @IEnumFORMATETC_Skip(i32*, i32) #1

declare dso_local i64 @IEnumFORMATETC_Clone(i32*, i32**) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
