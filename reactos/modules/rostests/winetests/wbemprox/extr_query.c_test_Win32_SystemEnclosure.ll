; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_SystemEnclosure.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_SystemEnclosure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Win32_SystemEnclosure.queryW = internal constant [36 x i8] c"SELECT * FROM Win32_SystemEnclosure\00", align 16
@test_Win32_SystemEnclosure.captionW = internal constant [8 x i8] c"Caption\00", align 1
@test_Win32_SystemEnclosure.chassistypesW = internal constant [13 x i8] c"ChassisTypes\00", align 1
@test_Win32_SystemEnclosure.descriptionW = internal constant [12 x i8] c"Description\00", align 1
@test_Win32_SystemEnclosure.lockpresentW = internal constant [12 x i8] c"LockPresent\00", align 1
@test_Win32_SystemEnclosure.manufacturerW = internal constant [13 x i8] c"Manufacturer\00", align 1
@test_Win32_SystemEnclosure.nameW = internal constant [5 x i8] c"Name\00", align 1
@test_Win32_SystemEnclosure.tagW = internal constant [4 x i8] c"Tag\00", align 1
@wqlW = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IWbemServices_ExecQuery failed %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"IEnumWbemClassObject_Next failed %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get caption %08x\0A\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unexpected variant type 0x%x\0A\00", align 1
@CIM_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"unexpected type 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"caption: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to get chassis types %08x\0A\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@CIM_UINT16 = common dso_local global i32 0, align 4
@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"SafeArrayAccessData failed %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"SafeArrayGetLBound failed %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"SafeArrayGetUBound failed %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"chassis type: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"SafeArrayUnaccessData failed %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"failed to get description %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"description: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to get lockpresent %08x\0A\00", align 1
@VT_BOOL = common dso_local global i32 0, align 4
@CIM_BOOLEAN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"lockpresent: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"failed to get manufacturer %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"manufacturer: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"failed to get name %08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"failed to get tag %08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"tag: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_Win32_SystemEnclosure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Win32_SystemEnclosure(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %15 = load i8*, i8** @wqlW, align 8
  %16 = call i32 @SysAllocString(i8* %15)
  store i32 %16, i32* %3, align 4
  %17 = call i32 @SysAllocString(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @test_Win32_SystemEnclosure.queryW, i64 0, i64 0))
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @IWbemServices_ExecQuery(i32* %18, i32 %19, i32 %20, i32 0, i32* null, i32** %5)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @IEnumWbemClassObject_Next(i32* %28, i32 10000, i32 1, i32** %6, i32* %8)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @S_OK, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 -559038737, i32* %7, align 4
  %36 = call i32 @VariantInit(i32* %9)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @IWbemClassObject_Get(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_Win32_SystemEnclosure.captionW, i64 0, i64 0), i32 0, i32* %9, i32* %7, i32* null)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = call i32 @V_VT(i32* %9)
  %46 = load i32, i32* @VT_BSTR, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @V_VT(i32* %9)
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @CIM_STRING, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = call i32 @V_BSTR(i32* %9)
  %58 = call i32 @wine_dbgstr_w(i32 %57)
  %59 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = call i32 @VariantClear(i32* %9)
  store i32 -559038737, i32* %7, align 4
  %61 = call i32 @VariantInit(i32* %9)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @IWbemClassObject_Get(i32* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_Win32_SystemEnclosure.chassistypesW, i64 0, i64 0), i32 0, i32* %9, i32* %7, i32* null)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @S_OK, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = call i32 @V_VT(i32* %9)
  %71 = load i32, i32* @VT_I4, align 4
  %72 = load i32, i32* @VT_ARRAY, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @V_VT(i32* %9)
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @CIM_UINT16, align 4
  %80 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %81 = or i32 %79, %80
  %82 = icmp eq i32 %78, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = call i32 @V_ARRAY(i32* %9)
  %87 = bitcast i32** %10 to i8**
  %88 = call i32 @SafeArrayAccessData(i32 %86, i8** %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @S_OK, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @SUCCEEDED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %147

98:                                               ; preds = %1
  %99 = call i32 @V_ARRAY(i32* %9)
  %100 = call i32 @SafeArrayGetLBound(i32 %99, i32 1, i64* %13)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = call i32 @V_ARRAY(i32* %9)
  %108 = call i32 @SafeArrayGetUBound(i32 %107, i32 1, i64* %14)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @S_OK, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  %115 = call i32 @V_VT(i32* %9)
  %116 = load i32, i32* @VT_I4, align 4
  %117 = load i32, i32* @VT_ARRAY, align 4
  %118 = or i32 %116, %117
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %98
  store i64 0, i64* %12, align 8
  br label %121

121:                                              ; preds = %134, %120
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* %13, align 8
  %125 = sub i64 %123, %124
  %126 = add i64 %125, 1
  %127 = icmp ult i64 %122, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load i32*, i32** %10, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %128
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %12, align 8
  br label %121

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %98
  %139 = call i32 @V_ARRAY(i32* %9)
  %140 = call i32 @SafeArrayUnaccessData(i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @S_OK, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %138, %1
  %148 = call i32 @VariantClear(i32* %9)
  store i32 -559038737, i32* %7, align 4
  %149 = call i32 @VariantInit(i32* %9)
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @IWbemClassObject_Get(i32* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_Win32_SystemEnclosure.descriptionW, i64 0, i64 0), i32 0, i32* %9, i32* %7, i32* null)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @S_OK, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %156)
  %158 = call i32 @V_VT(i32* %9)
  %159 = load i32, i32* @VT_BSTR, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @V_VT(i32* %9)
  %163 = call i32 @ok(i32 %161, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @CIM_STRING, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = call i32 @V_BSTR(i32* %9)
  %171 = call i32 @wine_dbgstr_w(i32 %170)
  %172 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %171)
  %173 = call i32 @VariantClear(i32* %9)
  store i32 -559038737, i32* %7, align 4
  %174 = call i32 @VariantInit(i32* %9)
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @IWbemClassObject_Get(i32* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_Win32_SystemEnclosure.lockpresentW, i64 0, i64 0), i32 0, i32* %9, i32* %7, i32* null)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @S_OK, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @ok(i32 %180, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %181)
  %183 = call i32 @V_VT(i32* %9)
  %184 = load i32, i32* @VT_BOOL, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @V_VT(i32* %9)
  %188 = call i32 @ok(i32 %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @CIM_BOOLEAN, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @ok(i32 %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  %195 = call i32 @V_BOOL(i32* %9)
  %196 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %195)
  %197 = call i32 @VariantClear(i32* %9)
  store i32 -559038737, i32* %7, align 4
  %198 = call i32 @VariantInit(i32* %9)
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @IWbemClassObject_Get(i32* %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_Win32_SystemEnclosure.manufacturerW, i64 0, i64 0), i32 0, i32* %9, i32* %7, i32* null)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @S_OK, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @ok(i32 %204, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %205)
  %207 = call i32 @V_VT(i32* %9)
  %208 = load i32, i32* @VT_BSTR, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @V_VT(i32* %9)
  %212 = call i32 @ok(i32 %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @CIM_STRING, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @ok(i32 %216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %217)
  %219 = call i32 @V_BSTR(i32* %9)
  %220 = call i32 @wine_dbgstr_w(i32 %219)
  %221 = call i32 @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %220)
  %222 = call i32 @VariantClear(i32* %9)
  store i32 -559038737, i32* %7, align 4
  %223 = call i32 @VariantInit(i32* %9)
  %224 = load i32*, i32** %6, align 8
  %225 = call i32 @IWbemClassObject_Get(i32* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_Win32_SystemEnclosure.nameW, i64 0, i64 0), i32 0, i32* %9, i32* %7, i32* null)
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @S_OK, align 4
  %228 = icmp eq i32 %226, %227
  %229 = zext i1 %228 to i32
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @ok(i32 %229, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %230)
  %232 = call i32 @V_VT(i32* %9)
  %233 = load i32, i32* @VT_BSTR, align 4
  %234 = icmp eq i32 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @V_VT(i32* %9)
  %237 = call i32 @ok(i32 %235, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @CIM_STRING, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @ok(i32 %241, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %242)
  %244 = call i32 @V_BSTR(i32* %9)
  %245 = call i32 @wine_dbgstr_w(i32 %244)
  %246 = call i32 @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %245)
  %247 = call i32 @VariantClear(i32* %9)
  store i32 -559038737, i32* %7, align 4
  %248 = call i32 @VariantInit(i32* %9)
  %249 = load i32*, i32** %6, align 8
  %250 = call i32 @IWbemClassObject_Get(i32* %249, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_Win32_SystemEnclosure.tagW, i64 0, i64 0), i32 0, i32* %9, i32* %7, i32* null)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @S_OK, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @ok(i32 %254, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %255)
  %257 = call i32 @V_VT(i32* %9)
  %258 = load i32, i32* @VT_BSTR, align 4
  %259 = icmp eq i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @V_VT(i32* %9)
  %262 = call i32 @ok(i32 %260, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* @CIM_STRING, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @ok(i32 %266, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %267)
  %269 = call i32 @V_BSTR(i32* %9)
  %270 = call i32 @wine_dbgstr_w(i32 %269)
  %271 = call i32 @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %270)
  %272 = call i32 @VariantClear(i32* %9)
  %273 = load i32*, i32** %6, align 8
  %274 = call i32 @IWbemClassObject_Release(i32* %273)
  %275 = load i32*, i32** %5, align 8
  %276 = call i32 @IEnumWbemClassObject_Release(i32* %275)
  %277 = load i32, i32* %4, align 4
  %278 = call i32 @SysFreeString(i32 %277)
  %279 = load i32, i32* %3, align 4
  %280 = call i32 @SysFreeString(i32 %279)
  ret void
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i32 @IWbemServices_ExecQuery(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @SafeArrayAccessData(i32, i8**) #1

declare dso_local i32 @V_ARRAY(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @SafeArrayGetLBound(i32, i32, i64*) #1

declare dso_local i32 @SafeArrayGetUBound(i32, i32, i64*) #1

declare dso_local i32 @SafeArrayUnaccessData(i32) #1

declare dso_local i32 @V_BOOL(i32*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
