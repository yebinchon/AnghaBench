; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_vbscript.c_test_RegExp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_vbscript.c_test_RegExp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_VBScriptRegExp = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VBScriptRegExp is not registered\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"CoCreateInstance(CLSID_VBScriptRegExp) failed: %x\0A\00", align 1
@IID_IRegExp2 = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"IRegExp2 interface is not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"QueryInterface(IID_IRegExp2) failed: %x\0A\00", align 1
@IID_IRegExp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"QueryInterface(IID_IRegExp) returned %x\0A\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"QueryInterface(IID_IDispatchEx) returned %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bstr != NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"get_Pattern returned %x, expected S_OK\0A\00", align 1
@E_POINTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"get_Pattern returned %x, expected E_POINTER\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"get_IgnoreCase returned %x, expected E_POINTER\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"get_Global returned %x, expected E_POINTER\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Execute returned %x, expected S_OK\0A\00", align 1
@IID_IMatchCollection2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"QueryInterface(IID_IMatchCollection2) returned %x\0A\00", align 1
@IID_IMatchCollection = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [50 x i8] c"QueryInterface(IID_IMatchCollection) returned %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"get_Count returned %x, expected E_POINTER\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"get_Count returned %x, expected S_OK\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"count = %d\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [45 x i8] c"get_Item returned %x, expected E_INVALIDARG\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"get_Item returned %x, expected E_POINTER\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"get_Item returned %x, expected S_OK\0A\00", align 1
@IID_IMatch2 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [41 x i8] c"QueryInterface(IID_IMatch2) returned %x\0A\00", align 1
@IID_IMatch = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [40 x i8] c"QueryInterface(IID_IMatch) returned %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"get_Value returned %x, expected E_POINTER\0A\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"get_FirstIndex returned %x, expected E_POINTER\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"get_Length returned %x, expected E_POINTER\0A\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"get_SubMatches returned %x, expected E_POINTER\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"get_SubMatches returned %x, expected S_OK\0A\00", align 1
@IID_ISubMatches = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [45 x i8] c"QueryInterface(IID_ISubMatches) returned %x\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"get__NewEnum returned %x, expected S_OK\0A\00", align 1
@IID_IEnumVARIANT = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [46 x i8] c"QueryInterface(IID_IEnumVARIANT) returned %x\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Skip returned %x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [36 x i8] c"Next returned %x, expected S_FALSE\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"fetched = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Next returned %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RegExp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RegExp() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %14 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %15 = or i32 %13, %14
  %16 = bitcast i32** %6 to i8**
  %17 = call i32 @CoCreateInstance(i32* @CLSID_VBScriptRegExp, i32* null, i32 %15, i32* @IID_IUnknown, i8** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @REGDB_E_CLASSNOTREG, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %347

23:                                               ; preds = %0
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @S_OK, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = bitcast i32** %1 to i8**
  %32 = call i32 @IUnknown_QueryInterface(i32* %30, i32* @IID_IRegExp2, i8** %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @E_NOINTERFACE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %347

38:                                               ; preds = %23
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @IUnknown_Release(i32* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = bitcast i32** %6 to i8**
  %49 = call i32 @IRegExp2_QueryInterface(i32* %47, i32* @IID_IRegExp, i8** %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @S_OK, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @IUnknown_Release(i32* %56)
  %58 = load i32*, i32** %1, align 8
  %59 = bitcast i32** %6 to i8**
  %60 = call i32 @IRegExp2_QueryInterface(i32* %58, i32* @IID_IDispatchEx, i8** %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @E_NOINTERFACE, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @IRegExp2_get_Pattern(i32* %67, i32** %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @S_OK, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @IRegExp2_get_Pattern(i32* %79, i32** null)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @E_POINTER, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i32 @IRegExp2_get_IgnoreCase(i32* %87, i32* null)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @E_POINTER, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @IRegExp2_get_Global(i32* %95, i32* null)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @E_POINTER, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @IRegExp2_Execute(i32* %103, i32* null, i32** %7)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @S_OK, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = bitcast i32** %2 to i8**
  %113 = call i32 @IDispatch_QueryInterface(i32* %111, i32* @IID_IMatchCollection2, i8** %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @S_OK, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @IDispatch_Release(i32* %120)
  %122 = load i32*, i32** %2, align 8
  %123 = bitcast i32** %6 to i8**
  %124 = call i32 @IMatchCollection2_QueryInterface(i32* %122, i32* @IID_IMatchCollection, i8** %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @S_OK, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @IUnknown_Release(i32* %131)
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @IMatchCollection2_get_Count(i32* %133, i32* null)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @E_POINTER, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %139)
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 @IMatchCollection2_get_Count(i32* %141, i32* %10)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @S_OK, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %8, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = icmp eq i32 %149, 1
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %2, align 8
  %155 = call i32 @IMatchCollection2_get_Item(i32* %154, i32 1, i32** %7)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @E_INVALIDARG, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %8, align 4
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %2, align 8
  %163 = call i32 @IMatchCollection2_get_Item(i32* %162, i32 1, i32** null)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @E_POINTER, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %168)
  %170 = load i32*, i32** %2, align 8
  %171 = call i32 @IMatchCollection2_get_Item(i32* %170, i32 0, i32** %7)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @S_OK, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %8, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %176)
  %178 = load i32*, i32** %7, align 8
  %179 = bitcast i32** %3 to i8**
  %180 = call i32 @IDispatch_QueryInterface(i32* %178, i32* @IID_IMatch2, i8** %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @S_OK, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %8, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %185)
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @IDispatch_Release(i32* %187)
  %189 = load i32*, i32** %3, align 8
  %190 = bitcast i32** %6 to i8**
  %191 = call i32 @IMatch2_QueryInterface(i32* %189, i32* @IID_IMatch, i8** %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @S_OK, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %8, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i32 %196)
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @IUnknown_Release(i32* %198)
  %200 = load i32*, i32** %3, align 8
  %201 = call i32 @IMatch2_get_Value(i32* %200, i32* null)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @E_POINTER, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %8, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 %206)
  %208 = load i32*, i32** %3, align 8
  %209 = call i32 @IMatch2_get_FirstIndex(i32* %208, i32* null)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @E_POINTER, align 4
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i32
  %214 = load i32, i32* %8, align 4
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0), i32 %214)
  %216 = load i32*, i32** %3, align 8
  %217 = call i32 @IMatch2_get_Length(i32* %216, i32* null)
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @E_POINTER, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %8, align 4
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 %222)
  %224 = load i32*, i32** %3, align 8
  %225 = call i32 @IMatch2_get_SubMatches(i32* %224, i32** null)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @E_POINTER, align 4
  %228 = icmp eq i32 %226, %227
  %229 = zext i1 %228 to i32
  %230 = load i32, i32* %8, align 4
  %231 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i64 0, i64 0), i32 %230)
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @IMatch2_get_SubMatches(i32* %232, i32** %7)
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @S_OK, align 4
  %236 = icmp eq i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = load i32, i32* %8, align 4
  %239 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 %238)
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 @IMatch2_Release(i32* %240)
  %242 = load i32*, i32** %7, align 8
  %243 = bitcast i32** %4 to i8**
  %244 = call i32 @IDispatch_QueryInterface(i32* %242, i32* @IID_ISubMatches, i8** %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @S_OK, align 4
  %247 = icmp eq i32 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i32, i32* %8, align 4
  %250 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 %249)
  %251 = load i32*, i32** %7, align 8
  %252 = call i32 @IDispatch_Release(i32* %251)
  %253 = load i32*, i32** %4, align 8
  %254 = call i32 @ISubMatches_get_Item(i32* %253, i32 0, i32* %11)
  store i32 %254, i32* %8, align 4
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @E_INVALIDARG, align 4
  %257 = icmp eq i32 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %8, align 4
  %260 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 %259)
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @ISubMatches_get_Item(i32* %261, i32 0, i32* null)
  store i32 %262, i32* %8, align 4
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @E_POINTER, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %8, align 4
  %268 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %267)
  %269 = load i32*, i32** %4, align 8
  %270 = call i32 @ISubMatches_get_Count(i32* %269, i32* null)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* @E_POINTER, align 4
  %273 = icmp eq i32 %271, %272
  %274 = zext i1 %273 to i32
  %275 = load i32, i32* %8, align 4
  %276 = call i32 (i32, i8*, ...) @ok(i32 %274, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %275)
  %277 = load i32*, i32** %4, align 8
  %278 = call i32 @ISubMatches_Release(i32* %277)
  %279 = load i32*, i32** %2, align 8
  %280 = call i32 @IMatchCollection2_get__NewEnum(i32* %279, i32** %6)
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* @S_OK, align 4
  %283 = icmp eq i32 %281, %282
  %284 = zext i1 %283 to i32
  %285 = load i32, i32* %8, align 4
  %286 = call i32 (i32, i8*, ...) @ok(i32 %284, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i32 %285)
  %287 = load i32*, i32** %6, align 8
  %288 = bitcast i32** %5 to i8**
  %289 = call i32 @IUnknown_QueryInterface(i32* %287, i32* @IID_IEnumVARIANT, i8** %288)
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* @S_OK, align 4
  %292 = icmp eq i32 %290, %291
  %293 = zext i1 %292 to i32
  %294 = load i32, i32* %8, align 4
  %295 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0), i32 %294)
  %296 = load i32*, i32** %6, align 8
  %297 = call i32 @IUnknown_Release(i32* %296)
  %298 = load i32*, i32** %2, align 8
  %299 = call i32 @IMatchCollection2_Release(i32* %298)
  %300 = load i32*, i32** %5, align 8
  %301 = call i32 @IEnumVARIANT_Skip(i32* %300, i32 2)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @S_OK, align 4
  %304 = icmp eq i32 %302, %303
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* %8, align 4
  %307 = call i32 (i32, i8*, ...) @ok(i32 %305, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 %306)
  %308 = load i32*, i32** %5, align 8
  %309 = call i32 @IEnumVARIANT_Next(i32* %308, i32 1, i32* %11, i32* %12)
  store i32 %309, i32* %8, align 4
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @S_FALSE, align 4
  %312 = icmp eq i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = load i32, i32* %8, align 4
  %315 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* %12, align 4
  %317 = icmp eq i32 %316, 0
  %318 = zext i1 %317 to i32
  %319 = load i32, i32* %12, align 4
  %320 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i32 %319)
  %321 = load i32*, i32** %5, align 8
  %322 = call i32 @IEnumVARIANT_Skip(i32* %321, i32 -1)
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* @S_OK, align 4
  %325 = icmp eq i32 %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i32, i32* %8, align 4
  %328 = call i32 (i32, i8*, ...) @ok(i32 %326, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 %327)
  %329 = load i32*, i32** %5, align 8
  %330 = call i32 @IEnumVARIANT_Next(i32* %329, i32 1, i32* %11, i32* %12)
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* @S_OK, align 4
  %333 = icmp eq i32 %331, %332
  %334 = zext i1 %333 to i32
  %335 = load i32, i32* %8, align 4
  %336 = call i32 (i32, i8*, ...) @ok(i32 %334, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %335)
  %337 = load i32, i32* %12, align 4
  %338 = icmp eq i32 %337, 1
  %339 = zext i1 %338 to i32
  %340 = load i32, i32* %12, align 4
  %341 = call i32 (i32, i8*, ...) @ok(i32 %339, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i32 %340)
  %342 = call i32 @VariantClear(i32* %11)
  %343 = load i32*, i32** %5, align 8
  %344 = call i32 @IEnumVARIANT_Release(i32* %343)
  %345 = load i32*, i32** %1, align 8
  %346 = call i32 @IRegExp2_Release(i32* %345)
  br label %347

347:                                              ; preds = %38, %36, %21
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IRegExp2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IRegExp2_get_Pattern(i32*, i32**) #1

declare dso_local i32 @IRegExp2_get_IgnoreCase(i32*, i32*) #1

declare dso_local i32 @IRegExp2_get_Global(i32*, i32*) #1

declare dso_local i32 @IRegExp2_Execute(i32*, i32*, i32**) #1

declare dso_local i32 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @IMatchCollection2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IMatchCollection2_get_Count(i32*, i32*) #1

declare dso_local i32 @IMatchCollection2_get_Item(i32*, i32, i32**) #1

declare dso_local i32 @IMatch2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IMatch2_get_Value(i32*, i32*) #1

declare dso_local i32 @IMatch2_get_FirstIndex(i32*, i32*) #1

declare dso_local i32 @IMatch2_get_Length(i32*, i32*) #1

declare dso_local i32 @IMatch2_get_SubMatches(i32*, i32**) #1

declare dso_local i32 @IMatch2_Release(i32*) #1

declare dso_local i32 @ISubMatches_get_Item(i32*, i32, i32*) #1

declare dso_local i32 @ISubMatches_get_Count(i32*, i32*) #1

declare dso_local i32 @ISubMatches_Release(i32*) #1

declare dso_local i32 @IMatchCollection2_get__NewEnum(i32*, i32**) #1

declare dso_local i32 @IMatchCollection2_Release(i32*) #1

declare dso_local i32 @IEnumVARIANT_Skip(i32*, i32) #1

declare dso_local i32 @IEnumVARIANT_Next(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IEnumVARIANT_Release(i32*) #1

declare dso_local i32 @IRegExp2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
