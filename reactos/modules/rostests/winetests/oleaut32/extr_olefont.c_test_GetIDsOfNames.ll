; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_GetIDsOfNames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_GetIDsOfNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_GetIDsOfNames.name_Name = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@__const.test_GetIDsOfNames.name_Italic = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@__const.test_GetIDsOfNames.name_Size = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@__const.test_GetIDsOfNames.name_Bold = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@__const.test_GetIDsOfNames.name_Underline = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@__const.test_GetIDsOfNames.name_Strikethrough = private unnamed_addr constant [14 x i8] c"Strikethrough\00", align 1
@__const.test_GetIDsOfNames.name_Weight = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@__const.test_GetIDsOfNames.name_Charset = private unnamed_addr constant [8 x i8] c"Charset\00", align 1
@__const.test_GetIDsOfNames.name_Foo = private unnamed_addr constant [4 x i8] c"Foo\00", align 1
@__const.test_GetIDsOfNames.name_nAmE = private unnamed_addr constant [5 x i8] c"nAmE\00", align 1
@__const.test_GetIDsOfNames.name_Nom = private unnamed_addr constant [4 x i8] c"Nom\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@LANG_FRENCH = common dso_local global i32 0, align 4
@SUBLANG_FRENCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DISPID_FONT_NAME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@DISPID_FONT_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@DISPID_FONT_BOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@DISPID_FONT_ITALIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@DISPID_FONT_UNDER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Strikethrough\00", align 1
@DISPID_FONT_STRIKE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@DISPID_FONT_WEIGHT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"Charset\00", align 1
@DISPID_FONT_CHARSET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"nAmE\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Foo\00", align 1
@DISPID_UNKNOWN = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"This is not a font\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetIDsOfNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetIDsOfNames() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca [7 x i8], align 1
  %3 = alloca [5 x i8], align 1
  %4 = alloca [5 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [14 x i8], align 1
  %7 = alloca [7 x i8], align 1
  %8 = alloca [8 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca [5 x i8], align 1
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_GetIDsOfNames.name_Name, i32 0, i32 0), i64 5, i1 false)
  %15 = bitcast [7 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_GetIDsOfNames.name_Italic, i32 0, i32 0), i64 7, i1 false)
  %16 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_GetIDsOfNames.name_Size, i32 0, i32 0), i64 5, i1 false)
  %17 = bitcast [5 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_GetIDsOfNames.name_Bold, i32 0, i32 0), i64 5, i1 false)
  %18 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_GetIDsOfNames.name_Underline, i32 0, i32 0), i64 10, i1 false)
  %19 = bitcast [14 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test_GetIDsOfNames.name_Strikethrough, i32 0, i32 0), i64 14, i1 false)
  %20 = bitcast [7 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_GetIDsOfNames.name_Weight, i32 0, i32 0), i64 7, i1 false)
  %21 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_GetIDsOfNames.name_Charset, i32 0, i32 0), i64 8, i1 false)
  %22 = bitcast [4 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_GetIDsOfNames.name_Foo, i32 0, i32 0), i64 4, i1 false)
  %23 = bitcast [5 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_GetIDsOfNames.name_nAmE, i32 0, i32 0), i64 5, i1 false)
  %24 = bitcast [4 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_GetIDsOfNames.name_Nom, i32 0, i32 0), i64 4, i1 false)
  %25 = load i32, i32* @LANG_ENGLISH, align 4
  %26 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %27 = call i32 @MAKELANGID(i32 %25, i32 %26)
  %28 = load i32, i32* @SORT_DEFAULT, align 4
  %29 = call i32 @MAKELCID(i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @LANG_FRENCH, align 4
  %31 = load i32, i32* @SUBLANG_FRENCH, align 4
  %32 = call i32 @MAKELANGID(i32 %30, i32 %31)
  %33 = load i32, i32* @SORT_DEFAULT, align 4
  %34 = call i32 @MAKELCID(i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @DISPID_FONT_NAME, align 4
  %38 = load i32, i32* @S_OK, align 4
  %39 = call i32 @test_names_ids(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 0, i32 %38, i32 1)
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @DISPID_FONT_SIZE, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = call i32 @test_names_ids(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 0, i32 %43, i32 1)
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @DISPID_FONT_BOLD, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = call i32 @test_names_ids(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 0, i32 %48, i32 1)
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @DISPID_FONT_ITALIC, align 4
  %53 = load i32, i32* @S_OK, align 4
  %54 = call i32 @test_names_ids(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 0, i32 %53, i32 1)
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @DISPID_FONT_UNDER, align 4
  %58 = load i32, i32* @S_OK, align 4
  %59 = call i32 @test_names_ids(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i32 0, i32 %58, i32 1)
  %60 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @DISPID_FONT_STRIKE, align 4
  %63 = load i32, i32* @S_OK, align 4
  %64 = call i32 @test_names_ids(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 0, i32 %63, i32 1)
  %65 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @DISPID_FONT_WEIGHT, align 4
  %68 = load i32, i32* @S_OK, align 4
  %69 = call i32 @test_names_ids(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 0, i32 %68, i32 1)
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @DISPID_FONT_CHARSET, align 4
  %73 = load i32, i32* @S_OK, align 4
  %74 = call i32 @test_names_ids(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 0, i32 %73, i32 1)
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @DISPID_FONT_NAME, align 4
  %78 = load i32, i32* @S_OK, align 4
  %79 = call i32 @test_names_ids(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77, i32 0, i32 %78, i32 1)
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @DISPID_UNKNOWN, align 4
  %83 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  %84 = call i32 @test_names_ids(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 0, i32 %83, i32 1)
  %85 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %86 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @DISPID_FONT_ITALIC, align 4
  %89 = load i32, i32* @DISPID_UNKNOWN, align 4
  %90 = load i32, i32* @S_OK, align 4
  %91 = call i32 @test_names_ids(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90, i32 2)
  %92 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %93 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @DISPID_FONT_ITALIC, align 4
  %96 = load i32, i32* @DISPID_UNKNOWN, align 4
  %97 = load i32, i32* @S_OK, align 4
  %98 = call i32 @test_names_ids(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %94, i32 %95, i32 %96, i32 %97, i32 2)
  %99 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @DISPID_FONT_NAME, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = call i32 @test_names_ids(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101, i32 0, i32 %102, i32 1)
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @DISPID_UNKNOWN, align 4
  %107 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  %108 = call i32 @test_names_ids(i8* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106, i32 0, i32 %107, i32 1)
  %109 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @E_INVALIDARG, align 4
  %112 = call i32 @test_names_ids(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 -559038737, i32 -559038737, i32 %111, i32 0)
  %113 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @E_INVALIDARG, align 4
  %116 = call i32 @test_names_ids(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 -559038737, i32 -559038737, i32 %115, i32 0)
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @E_INVALIDARG, align 4
  %120 = call i32 @test_names_ids(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 -559038737, i32 -559038737, i32 %119, i32 0)
  %121 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %122 = load i32, i32* @DISPID_FONT_NAME, align 4
  %123 = load i32, i32* @S_OK, align 4
  %124 = call i32 @test_names_ids(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 %122, i32 0, i32 %123, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MAKELCID(i32, i32) #2

declare dso_local i32 @MAKELANGID(i32, i32) #2

declare dso_local i32 @test_names_ids(i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
