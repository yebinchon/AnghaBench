; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_PropVariantToStringWithDefault.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_PropVariantToStringWithDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i8*, i8*, i32*, i32 }

@test_PropVariantToStringWithDefault.default_value = internal global [5 x i8] c"test\00", align 1
@test_PropVariantToStringWithDefault.wstr_test2 = internal global [6 x i8] c"test2\00", align 1
@test_PropVariantToStringWithDefault.wstr_empty = internal global [1 x i8] zeroinitializer, align 1
@test_PropVariantToStringWithDefault.wstr_space = internal global [2 x i8] c" \00", align 1
@test_PropVariantToStringWithDefault.str_test2 = internal global [6 x i8] c"test2\00", align 1
@test_PropVariantToStringWithDefault.str_empty = internal global [1 x i8] zeroinitializer, align 1
@test_PropVariantToStringWithDefault.str_space = internal global [2 x i8] c" \00", align 1
@VT_EMPTY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unexpected value %s\0A\00", align 1
@VT_NULL = common dso_local global i8* null, align 8
@VT_BOOL = common dso_local global i8* null, align 8
@VARIANT_TRUE = common dso_local global i32 0, align 4
@VT_I4 = common dso_local global i8* null, align 8
@VT_LPWSTR = common dso_local global i8* null, align 8
@VT_LPSTR = common dso_local global i8* null, align 8
@VT_BSTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PropVariantToStringWithDefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PropVariantToStringWithDefault() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @VT_EMPTY, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %3, i8** %4, align 8
  %5 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %8 = zext i1 %7 to i32
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @wine_dbgstr_w(i8* %9)
  %11 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i8*, i8** @VT_NULL, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = icmp eq i8* %15, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %17 = zext i1 %16 to i32
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @wine_dbgstr_w(i8* %18)
  %20 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** @VT_BOOL, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @VARIANT_TRUE, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = icmp eq i8* %27, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @wine_dbgstr_w(i8* %30)
  %32 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i8*, i8** @VT_I4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 15, i32* %36, align 8
  %37 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = icmp eq i8* %38, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %40 = zext i1 %39 to i32
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @wine_dbgstr_w(i8* %41)
  %43 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** @VT_LPWSTR, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i8* null, i8** %47, align 8
  %48 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %48, i8** %2, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = icmp eq i8* %49, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %51 = zext i1 %50 to i32
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @wine_dbgstr_w(i8* %52)
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** @VT_LPWSTR, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_PropVariantToStringWithDefault.wstr_empty, i64 0, i64 0), i8** %58, align 8
  %59 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %59, i8** %2, align 8
  %60 = load i8*, i8** %2, align 8
  %61 = icmp eq i8* %60, getelementptr inbounds ([1 x i8], [1 x i8]* @test_PropVariantToStringWithDefault.wstr_empty, i64 0, i64 0)
  %62 = zext i1 %61 to i32
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @wine_dbgstr_w(i8* %63)
  %65 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** @VT_LPWSTR, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_PropVariantToStringWithDefault.wstr_space, i64 0, i64 0), i8** %69, align 8
  %70 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %70, i8** %2, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = icmp eq i8* %71, getelementptr inbounds ([2 x i8], [2 x i8]* @test_PropVariantToStringWithDefault.wstr_space, i64 0, i64 0)
  %73 = zext i1 %72 to i32
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @wine_dbgstr_w(i8* %74)
  %76 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** @VT_LPWSTR, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_PropVariantToStringWithDefault.wstr_test2, i64 0, i64 0), i8** %80, align 8
  %81 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %81, i8** %2, align 8
  %82 = load i8*, i8** %2, align 8
  %83 = icmp eq i8* %82, getelementptr inbounds ([6 x i8], [6 x i8]* @test_PropVariantToStringWithDefault.wstr_test2, i64 0, i64 0)
  %84 = zext i1 %83 to i32
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @wine_dbgstr_w(i8* %85)
  %87 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i8*, i8** @VT_LPSTR, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i8* null, i8** %91, align 8
  %92 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %92, i8** %2, align 8
  %93 = load i8*, i8** %2, align 8
  %94 = icmp eq i8* %93, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %95 = zext i1 %94 to i32
  %96 = load i8*, i8** %2, align 8
  %97 = call i32 @wine_dbgstr_w(i8* %96)
  %98 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** @VT_LPSTR, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_PropVariantToStringWithDefault.str_empty, i64 0, i64 0), i8** %102, align 8
  %103 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %103, i8** %2, align 8
  %104 = load i8*, i8** %2, align 8
  %105 = icmp eq i8* %104, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %106 = zext i1 %105 to i32
  %107 = load i8*, i8** %2, align 8
  %108 = call i32 @wine_dbgstr_w(i8* %107)
  %109 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i8*, i8** @VT_LPSTR, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_PropVariantToStringWithDefault.str_space, i64 0, i64 0), i8** %113, align 8
  %114 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %114, i8** %2, align 8
  %115 = load i8*, i8** %2, align 8
  %116 = icmp eq i8* %115, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %117 = zext i1 %116 to i32
  %118 = load i8*, i8** %2, align 8
  %119 = call i32 @wine_dbgstr_w(i8* %118)
  %120 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** @VT_LPSTR, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %121, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_PropVariantToStringWithDefault.str_test2, i64 0, i64 0), i8** %124, align 8
  %125 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %125, i8** %2, align 8
  %126 = load i8*, i8** %2, align 8
  %127 = icmp eq i8* %126, getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0)
  %128 = zext i1 %127 to i32
  %129 = load i8*, i8** %2, align 8
  %130 = call i32 @wine_dbgstr_w(i8* %129)
  %131 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i8*, i8** @VT_BSTR, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  store i32* null, i32** %135, align 8
  %136 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %136, i8** %2, align 8
  %137 = load i8*, i8** %2, align 8
  %138 = call i32 @lstrcmpW(i8* %137, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_PropVariantToStringWithDefault.wstr_empty, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = load i8*, i8** %2, align 8
  %143 = call i32 @wine_dbgstr_w(i8* %142)
  %144 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** @VT_BSTR, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %145, i8** %146, align 8
  %147 = call i8* @SysAllocString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_PropVariantToStringWithDefault.wstr_empty, i64 0, i64 0))
  %148 = bitcast i8* %147 to i32*
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  store i32* %148, i32** %150, align 8
  %151 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %151, i8** %2, align 8
  %152 = load i8*, i8** %2, align 8
  %153 = call i32 @lstrcmpW(i8* %152, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_PropVariantToStringWithDefault.wstr_empty, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = load i8*, i8** %2, align 8
  %158 = call i32 @wine_dbgstr_w(i8* %157)
  %159 = call i32 @ok(i32 %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @SysFreeString(i32* %162)
  %164 = load i8*, i8** @VT_BSTR, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %164, i8** %165, align 8
  %166 = call i8* @SysAllocString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_PropVariantToStringWithDefault.wstr_space, i64 0, i64 0))
  %167 = bitcast i8* %166 to i32*
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  store i32* %167, i32** %169, align 8
  %170 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %170, i8** %2, align 8
  %171 = load i8*, i8** %2, align 8
  %172 = call i32 @lstrcmpW(i8* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_PropVariantToStringWithDefault.wstr_space, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = load i8*, i8** %2, align 8
  %177 = call i32 @wine_dbgstr_w(i8* %176)
  %178 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @SysFreeString(i32* %181)
  %183 = load i8*, i8** @VT_BSTR, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %183, i8** %184, align 8
  %185 = call i8* @SysAllocString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_PropVariantToStringWithDefault.wstr_test2, i64 0, i64 0))
  %186 = bitcast i8* %185 to i32*
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  store i32* %186, i32** %188, align 8
  %189 = call i8* @PropVariantToStringWithDefault(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_PropVariantToStringWithDefault.default_value, i64 0, i64 0))
  store i8* %189, i8** %2, align 8
  %190 = load i8*, i8** %2, align 8
  %191 = call i32 @lstrcmpW(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_PropVariantToStringWithDefault.wstr_test2, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = load i8*, i8** %2, align 8
  %196 = call i32 @wine_dbgstr_w(i8* %195)
  %197 = call i32 @ok(i32 %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @SysFreeString(i32* %200)
  ret void
}

declare dso_local i8* @PropVariantToStringWithDefault(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i8* @SysAllocString(i8*) #1

declare dso_local i32 @SysFreeString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
