; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propstore.c_test_inmemorystore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propstore.c_test_inmemorystore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_16__, i8* }
%struct.TYPE_16__ = type { i32 }

@CLSID_InMemoryPropertyStore = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IPropertyStoreCache = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CoCreateInstance failed, hr=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"CLSID_InMemoryPropertyStore not supported\0A\00", align 1
@E_POINTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"GetCount failed, hr=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GetCount returned %i, expected 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Commit failed, hr=%x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"GetAt failed, hr=%x\0A\00", align 1
@PKEY_WineTest = common dso_local global i8* null, align 8
@VT_I4 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"SetValue failed, hr=%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"got wrong pkey\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"got pid of %i, expected 4\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"GetValue failed, hr=%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"expected VT_I4, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"expected 12345, got %d\0A\00", align 1
@VT_I2 = common dso_local global i8* null, align 8
@VT_EMPTY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"expected VT_EMPTY, got %d\0A\00", align 1
@TYPE_E_ELEMENTNOTFOUND = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"GetState failed, hr=%x\0A\00", align 1
@PSC_NORMAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"expected PSC_NORMAL, got %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"GetValueAndState failed, hr=%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"SetState failed, hr=%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"expected 10, got %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"SetValueAndState failed, hr=%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"expected 12346, got %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"expected 5, got %d\0A\00", align 1
@PSC_DIRTY = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"expected 12347, got %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"expected PSC_DIRTY, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_inmemorystore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_inmemorystore() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = bitcast i32** %1 to i8**
  %9 = call i32 @CoCreateInstance(i32* @CLSID_InMemoryPropertyStore, i32* null, i32 %7, i32* @IID_IPropertyStoreCache, i8** %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @S_OK, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %2, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 @skip(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %353

21:                                               ; preds = %0
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @IPropertyStoreCache_GetCount(i32* %22, i32* null)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @E_POINTER, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @IPropertyStoreCache_GetCount(i32* %30, i32* %5)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @S_OK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @IPropertyStoreCache_Commit(i32* %43)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @IPropertyStoreCache_Commit(i32* %51)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @S_OK, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %2, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @IPropertyStoreCache_GetAt(i32* %59, i32 0, %struct.TYPE_17__* %3)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @E_INVALIDARG, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %2, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** @PKEY_WineTest, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = call i32 @memset(%struct.TYPE_17__* %4, i32 0, i32 32)
  %71 = load i8*, i8** @VT_I4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 12345, i32* %74, align 8
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @IPropertyStoreCache_SetValue(i32* %75, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4)
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @S_OK, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %2, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @IPropertyStoreCache_GetCount(i32* %83, i32* %5)
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @S_OK, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %2, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 1
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = call i32 @memset(%struct.TYPE_17__* %3, i32 0, i32 32)
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @IPropertyStoreCache_GetAt(i32* %97, i32 0, %struct.TYPE_17__* %3)
  store i32 %98, i32* %2, align 4
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @S_OK, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %2, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %106 = call i32 @IsEqualGUID(i8** %105, i8** @PKEY_WineTest)
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 4
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  %115 = load i8*, i8** @PKEY_WineTest, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  store i8* %115, i8** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i32 4, i32* %117, align 8
  %118 = call i32 @memset(%struct.TYPE_17__* %4, i32 0, i32 32)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @IPropertyStoreCache_GetValue(i32* %119, %struct.TYPE_17__* %3, %struct.TYPE_17__* null)
  store i32 %120, i32* %2, align 4
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @E_POINTER, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %2, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @IPropertyStoreCache_GetValue(i32* %127, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4)
  store i32 %128, i32* %2, align 4
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @S_OK, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %2, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i8*, i8** @VT_I4, align 8
  %138 = icmp eq i8* %136, %137
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %141)
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 12345
  %147 = zext i1 %146 to i32
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %150)
  %152 = load i8*, i8** @PKEY_WineTest, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  store i8* %152, i8** %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i32 10, i32* %154, align 8
  %155 = load i8*, i8** @VT_I2, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i8* %155, i8** %156, align 8
  %157 = load i32*, i32** %1, align 8
  %158 = call i32 @IPropertyStoreCache_GetValue(i32* %157, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4)
  store i32 %158, i32* %2, align 4
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* @S_OK, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %2, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* @VT_EMPTY, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = icmp eq i8* %166, %169
  %171 = zext i1 %170 to i32
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %173)
  store i32 -559038737, i32* %6, align 4
  %175 = load i32*, i32** %1, align 8
  %176 = call i32 @IPropertyStoreCache_GetState(i32* %175, %struct.TYPE_17__* %3, i32* %6)
  store i32 %176, i32* %2, align 4
  %177 = load i32, i32* %2, align 4
  %178 = load i32, i32* @TYPE_E_ELEMENTNOTFOUND, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %2, align 4
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @PSC_NORMAL, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %6, align 4
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %187)
  %189 = load i8*, i8** @VT_I2, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i8* %189, i8** %190, align 8
  store i32 -559038737, i32* %6, align 4
  %191 = load i32*, i32** %1, align 8
  %192 = call i32 @IPropertyStoreCache_GetValueAndState(i32* %191, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4, i32* %6)
  store i32 %192, i32* %2, align 4
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* @TYPE_E_ELEMENTNOTFOUND, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %2, align 4
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* @VT_EMPTY, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = icmp eq i8* %200, %203
  %205 = zext i1 %204 to i32
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %207)
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @PSC_NORMAL, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %6, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %213)
  %215 = load i32*, i32** %1, align 8
  %216 = load i32, i32* @PSC_NORMAL, align 4
  %217 = call i32 @IPropertyStoreCache_SetState(i32* %215, %struct.TYPE_17__* %3, i32 %216)
  store i32 %217, i32* %2, align 4
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* @TYPE_E_ELEMENTNOTFOUND, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %2, align 4
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %222)
  %224 = load i8*, i8** @PKEY_WineTest, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  store i8* %224, i8** %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i32 4, i32* %226, align 8
  store i32 -559038737, i32* %6, align 4
  %227 = load i32*, i32** %1, align 8
  %228 = call i32 @IPropertyStoreCache_GetState(i32* %227, %struct.TYPE_17__* %3, i32* %6)
  store i32 %228, i32* %2, align 4
  %229 = load i32, i32* %2, align 4
  %230 = load i32, i32* @S_OK, align 4
  %231 = icmp eq i32 %229, %230
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %2, align 4
  %234 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @PSC_NORMAL, align 4
  %237 = icmp eq i32 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %6, align 4
  %240 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %239)
  %241 = load i32*, i32** %1, align 8
  %242 = call i32 @IPropertyStoreCache_SetState(i32* %241, %struct.TYPE_17__* %3, i32 10)
  store i32 %242, i32* %2, align 4
  %243 = load i32, i32* %2, align 4
  %244 = load i32, i32* @S_OK, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %2, align 4
  %248 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %247)
  store i32 -559038737, i32* %6, align 4
  %249 = load i32*, i32** %1, align 8
  %250 = call i32 @IPropertyStoreCache_GetState(i32* %249, %struct.TYPE_17__* %3, i32* %6)
  store i32 %250, i32* %2, align 4
  %251 = load i32, i32* %2, align 4
  %252 = load i32, i32* @S_OK, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %2, align 4
  %256 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* %6, align 4
  %258 = icmp eq i32 %257, 10
  %259 = zext i1 %258 to i32
  %260 = load i32, i32* %6, align 4
  %261 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %260)
  %262 = load i8*, i8** @VT_I4, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i8* %262, i8** %263, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  store i32 12346, i32* %265, align 8
  %266 = load i32*, i32** %1, align 8
  %267 = call i32 @IPropertyStoreCache_SetValueAndState(i32* %266, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4, i32 5)
  store i32 %267, i32* %2, align 4
  %268 = load i32, i32* %2, align 4
  %269 = load i32, i32* @S_OK, align 4
  %270 = icmp eq i32 %268, %269
  %271 = zext i1 %270 to i32
  %272 = load i32, i32* %2, align 4
  %273 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %272)
  %274 = call i32 @memset(%struct.TYPE_17__* %4, i32 0, i32 32)
  store i32 -559038737, i32* %6, align 4
  %275 = load i32*, i32** %1, align 8
  %276 = call i32 @IPropertyStoreCache_GetValueAndState(i32* %275, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4, i32* %6)
  store i32 %276, i32* %2, align 4
  %277 = load i32, i32* %2, align 4
  %278 = load i32, i32* @S_OK, align 4
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* %2, align 4
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %284 = load i8*, i8** %283, align 8
  %285 = load i8*, i8** @VT_I4, align 8
  %286 = icmp eq i8* %284, %285
  %287 = zext i1 %286 to i32
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %289)
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %293, 12346
  %295 = zext i1 %294 to i32
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* %297)
  %299 = load i32, i32* %6, align 4
  %300 = icmp eq i32 %299, 5
  %301 = zext i1 %300 to i32
  %302 = load i32, i32* %6, align 4
  %303 = call i32 (i32, i8*, ...) @ok(i32 %301, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %302)
  %304 = load i8*, i8** @PKEY_WineTest, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  store i8* %304, i8** %305, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i32 8, i32* %306, align 8
  %307 = load i8*, i8** @VT_I4, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i8* %307, i8** %308, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  store i32 12347, i32* %310, align 8
  %311 = load i32*, i32** %1, align 8
  %312 = load i32, i32* @PSC_DIRTY, align 4
  %313 = call i32 @IPropertyStoreCache_SetValueAndState(i32* %311, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4, i32 %312)
  store i32 %313, i32* %2, align 4
  %314 = load i32, i32* %2, align 4
  %315 = load i32, i32* @S_OK, align 4
  %316 = icmp eq i32 %314, %315
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %2, align 4
  %319 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %318)
  %320 = call i32 @memset(%struct.TYPE_17__* %4, i32 0, i32 32)
  store i32 -559038737, i32* %6, align 4
  %321 = load i32*, i32** %1, align 8
  %322 = call i32 @IPropertyStoreCache_GetValueAndState(i32* %321, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4, i32* %6)
  store i32 %322, i32* %2, align 4
  %323 = load i32, i32* %2, align 4
  %324 = load i32, i32* @S_OK, align 4
  %325 = icmp eq i32 %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i32, i32* %2, align 4
  %328 = call i32 (i32, i8*, ...) @ok(i32 %326, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %327)
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %330 = load i8*, i8** %329, align 8
  %331 = load i8*, i8** @VT_I4, align 8
  %332 = icmp eq i8* %330, %331
  %333 = zext i1 %332 to i32
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 (i32, i8*, ...) @ok(i32 %333, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %335)
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 12347
  %341 = zext i1 %340 to i32
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 (i32, i8*, ...) @ok(i32 %341, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i8* %343)
  %345 = load i32, i32* %6, align 4
  %346 = load i32, i32* @PSC_DIRTY, align 4
  %347 = icmp eq i32 %345, %346
  %348 = zext i1 %347 to i32
  %349 = load i32, i32* %6, align 4
  %350 = call i32 (i32, i8*, ...) @ok(i32 %348, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %349)
  %351 = load i32*, i32** %1, align 8
  %352 = call i32 @IPropertyStoreCache_Release(i32* %351)
  br label %353

353:                                              ; preds = %21, %19
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IPropertyStoreCache_GetCount(i32*, i32*) #1

declare dso_local i32 @IPropertyStoreCache_Commit(i32*) #1

declare dso_local i32 @IPropertyStoreCache_GetAt(i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @IPropertyStoreCache_SetValue(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @IsEqualGUID(i8**, i8**) #1

declare dso_local i32 @IPropertyStoreCache_GetValue(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @IPropertyStoreCache_GetState(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @IPropertyStoreCache_GetValueAndState(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @IPropertyStoreCache_SetState(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @IPropertyStoreCache_SetValueAndState(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @IPropertyStoreCache_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
