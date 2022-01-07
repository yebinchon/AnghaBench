; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_stg_prop.c_testFmtId.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_stg_prop.c_testFmtId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.testFmtId.szSummaryInfo = private unnamed_addr constant [20 x i32] [i32 5, i32 83, i32 117, i32 109, i32 109, i32 97, i32 114, i32 121, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 16
@__const.testFmtId.szDocSummaryInfo = private unnamed_addr constant [28 x i32] [i32 5, i32 68, i32 111, i32 99, i32 117, i32 109, i32 101, i32 110, i32 116, i32 83, i32 117, i32 109, i32 109, i32 97, i32 114, i32 121, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 16
@__const.testFmtId.szIID_IPropSetStg = private unnamed_addr constant [28 x i32] [i32 5, i32 48, i32 106, i32 97, i32 97, i32 97, i32 97, i32 97, i32 97, i32 65, i32 97, i32 97, i32 97, i32 97, i32 97, i32 100, i32 97, i32 65, i32 97, i32 97, i32 97, i32 97, i32 97, i32 97, i32 97, i32 71, i32 99, i32 0], align 16
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Expected E_INVALIDARG, got 0x%08x\0A\00", align 1
@FMTID_SummaryInformation = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"FmtIdToPropStgName failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Got wrong name for FMTID_SummaryInformation\0A\00", align 1
@FMTID_DocSummaryInformation = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Got wrong name for FMTID_DocSummaryInformation\0A\00", align 1
@FMTID_UserDefinedProperties = common dso_local global i32 0, align 4
@IID_IPropertySetStorage = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Got wrong name for IID_IPropertySetStorage\0A\00", align 1
@STG_E_INVALIDNAME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Expected STG_E_INVALIDNAME, got 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"PropStgNameToFmtId failed: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Got unexpected FMTID, expected FMTID_SummaryInformation\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Got unexpected FMTID, expected FMTID_DocSummaryInformation\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Got unexpected FMTID, expected IID_IPropertySetStorage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testFmtId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testFmtId() #0 {
  %1 = alloca [20 x i32], align 16
  %2 = alloca [28 x i32], align 16
  %3 = alloca [28 x i32], align 16
  %4 = alloca [32 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = bitcast [20 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([20 x i32]* @__const.testFmtId.szSummaryInfo to i8*), i64 80, i1 false)
  %8 = bitcast [28 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([28 x i32]* @__const.testFmtId.szDocSummaryInfo to i8*), i64 112, i1 false)
  %9 = bitcast [28 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([28 x i32]* @__const.testFmtId.szIID_IPropSetStg to i8*), i64 112, i1 false)
  br i1 true, label %10, label %110

10:                                               ; preds = %0
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %12 = call i64 @pFmtIdToPropStgName(i32* null, i32* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @E_INVALIDARG, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %6, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i64 @pFmtIdToPropStgName(i32* @FMTID_SummaryInformation, i32* null)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @E_INVALIDARG, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %6, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %27 = call i64 @pFmtIdToPropStgName(i32* @FMTID_SummaryInformation, i32* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %6, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 0
  %36 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 0
  %37 = call i32 @lstrlenW(i32* %36)
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcmp(i32* %34, i32* %35, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %48 = call i64 @pFmtIdToPropStgName(i32* @FMTID_DocSummaryInformation, i32* %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %56 = getelementptr inbounds [28 x i32], [28 x i32]* %2, i64 0, i64 0
  %57 = getelementptr inbounds [28 x i32], [28 x i32]* %2, i64 0, i64 0
  %58 = call i32 @lstrlenW(i32* %57)
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcmp(i32* %55, i32* %56, i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %69 = call i64 @pFmtIdToPropStgName(i32* @FMTID_UserDefinedProperties, i32* %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %6, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %77 = getelementptr inbounds [28 x i32], [28 x i32]* %2, i64 0, i64 0
  %78 = getelementptr inbounds [28 x i32], [28 x i32]* %2, i64 0, i64 0
  %79 = call i32 @lstrlenW(i32* %78)
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memcmp(i32* %76, i32* %77, i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %89 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %90 = call i64 @pFmtIdToPropStgName(i32* @IID_IPropertySetStorage, i32* %89)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %6, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %95)
  %97 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %98 = getelementptr inbounds [28 x i32], [28 x i32]* %3, i64 0, i64 0
  %99 = getelementptr inbounds [28 x i32], [28 x i32]* %3, i64 0, i64 0
  %100 = call i32 @lstrlenW(i32* %99)
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memcmp(i32* %97, i32* %98, i32 %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %10, %0
  br i1 true, label %111, label %205

111:                                              ; preds = %110
  %112 = call i64 @pPropStgNameToFmtId(i32* null, i32* null)
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @E_INVALIDARG, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %6, align 8
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %117)
  %119 = call i64 @pPropStgNameToFmtId(i32* null, i32* %5)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @STG_E_INVALIDNAME, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %6, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %124)
  %126 = getelementptr inbounds [28 x i32], [28 x i32]* %2, i64 0, i64 0
  %127 = call i64 @pPropStgNameToFmtId(i32* %126, i32* null)
  store i64 %127, i64* %6, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* @E_INVALIDARG, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %6, align 8
  %133 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %132)
  %134 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 0, i64 0
  %135 = call i64 @pPropStgNameToFmtId(i32* %134, i32* %5)
  store i64 %135, i64* %6, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @S_OK, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %6, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %140)
  %142 = call i32 @memcmp(i32* %5, i32* @FMTID_SummaryInformation, i32 4)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %147 = getelementptr inbounds [28 x i32], [28 x i32]* %2, i64 0, i64 0
  %148 = call i64 @pPropStgNameToFmtId(i32* %147, i32* %5)
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @S_OK, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %6, align 8
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %153)
  %155 = call i32 @memcmp(i32* %5, i32* @FMTID_DocSummaryInformation, i32 4)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %160 = getelementptr inbounds [28 x i32], [28 x i32]* %3, i64 0, i64 0
  %161 = call i64 @pPropStgNameToFmtId(i32* %160, i32* %5)
  store i64 %161, i64* %6, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* @S_OK, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i64, i64* %6, align 8
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %166)
  %168 = call i32 @memcmp(i32* %5, i32* @IID_IPropertySetStorage, i32 4)
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %173 = getelementptr inbounds [28 x i32], [28 x i32]* %2, i64 0, i64 0
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = call i32 @CharUpperW(i32* %174)
  %176 = getelementptr inbounds [28 x i32], [28 x i32]* %2, i64 0, i64 0
  %177 = call i64 @pPropStgNameToFmtId(i32* %176, i32* %5)
  store i64 %177, i64* %6, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* @S_OK, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %6, align 8
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %182)
  %184 = call i32 @memcmp(i32* %5, i32* @FMTID_DocSummaryInformation, i32 4)
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %189 = getelementptr inbounds [28 x i32], [28 x i32]* %3, i64 0, i64 0
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = call i32 @CharUpperW(i32* %190)
  %192 = getelementptr inbounds [28 x i32], [28 x i32]* %3, i64 0, i64 0
  %193 = call i64 @pPropStgNameToFmtId(i32* %192, i32* %5)
  store i64 %193, i64* %6, align 8
  %194 = load i64, i64* %6, align 8
  %195 = load i64, i64* @S_OK, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i64, i64* %6, align 8
  %199 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %198)
  %200 = call i32 @memcmp(i32* %5, i32* @IID_IPropertySetStorage, i32 4)
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  br label %205

205:                                              ; preds = %111, %110
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pFmtIdToPropStgName(i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @lstrlenW(i32*) #2

declare dso_local i64 @pPropStgNameToFmtId(i32*, i32*) #2

declare dso_local i32 @CharUpperW(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
