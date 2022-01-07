; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarBstrCmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarBstrCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_VarBstrCmp.sz = internal constant [8 x i8] c"Wurscht\00", align 1
@test_VarBstrCmp.szempty = internal constant [1 x i8] zeroinitializer, align 1
@test_VarBstrCmp.sz1 = internal constant [2 x i8] c"a\00", align 1
@test_VarBstrCmp.sz2 = internal constant [2 x i8] c"A\00", align 1
@test_VarBstrCmp.s1 = internal constant [2 x i8] c"a\00", align 1
@test_VarBstrCmp.s2 = internal constant [3 x i8] c"a\00b", align 1
@test_VarBstrCmp.sb1 = internal constant [3 x i8] c"\01\00\01", align 1
@test_VarBstrCmp.sb2 = internal constant [3 x i8] c"\01\00\02", align 1
@test_VarBstrCmp.sbchr0 = internal constant [2 x i8] zeroinitializer, align 1
@test_VarBstrCmp.sbchr00 = internal constant [3 x i8] zeroinitializer, align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@VARCMP_EQ = common dso_local global i32 0, align 4
@VARCMP_GT = common dso_local global i32 0, align 4
@VARCMP_LT = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarBstrCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarBstrCmp() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @LANG_ENGLISH, align 4
  %7 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %8 = call i32 @MAKELANGID(i32 %6, i32 %7)
  %9 = load i32, i32* @SORT_DEFAULT, align 4
  %10 = call i64 @MAKELCID(i32 %8, i32 %9)
  store i64 %10, i64* %1, align 8
  %11 = call i32* @SysAllocString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_VarBstrCmp.sz, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = call i32* @SysAllocString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_VarBstrCmp.szempty, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* @VARCMP_EQ, align 4
  %14 = call i32 @VARBSTRCMP(i32* null, i32* null, i32 0, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @VARCMP_GT, align 4
  %17 = call i32 @VARBSTRCMP(i32* %15, i32* null, i32 0, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @VARCMP_LT, align 4
  %20 = call i32 @VARBSTRCMP(i32* null, i32* %18, i32 0, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @VARCMP_EQ, align 4
  %23 = call i32 @VARBSTRCMP(i32* %21, i32* null, i32 0, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @VARCMP_EQ, align 4
  %26 = call i32 @VARBSTRCMP(i32* null, i32* %24, i32 0, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @SysFreeString(i32* %27)
  %29 = call i32* @SysAllocString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_VarBstrCmp.sz1, i64 0, i64 0))
  store i32* %29, i32** %3, align 8
  %30 = call i32* @SysAllocString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_VarBstrCmp.sz2, i64 0, i64 0))
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @VARCMP_LT, align 4
  %34 = call i32 @VARBSTRCMP(i32* %31, i32* %32, i32 0, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @NORM_IGNORECASE, align 4
  %38 = load i32, i32* @VARCMP_EQ, align 4
  %39 = call i32 @VARBSTRCMP(i32* %35, i32* %36, i32 %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @SysFreeString(i32* %40)
  %42 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_VarBstrCmp.s1, i64 0, i64 0))
  %43 = call i32* @SysAllocStringLen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_VarBstrCmp.s1, i64 0, i64 0), i32 %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @VARCMP_EQ, align 4
  %47 = call i32 @VARBSTRCMP(i32* %44, i32* %45, i32 0, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @SysFreeString(i32* %48)
  %50 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_VarBstrCmp.s2, i64 0, i64 0))
  %51 = call i32* @SysAllocStringLen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_VarBstrCmp.s2, i64 0, i64 0), i32 %50)
  store i32* %51, i32** %5, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @VARCMP_LT, align 4
  %55 = call i32 @VARBSTRCMP(i32* %52, i32* %53, i32 0, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @SysFreeString(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @SysFreeString(i32* %58)
  %60 = call i32* @SysAllocStringByteLen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_VarBstrCmp.sbchr0, i64 0, i64 0), i32 2)
  store i32* %60, i32** %3, align 8
  %61 = call i32* @SysAllocStringByteLen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_VarBstrCmp.sbchr00, i64 0, i64 0), i32 3)
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @VARCMP_GT, align 4
  %65 = call i32 @VARBSTRCMP(i32* %62, i32* %63, i32 0, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @VARCMP_LT, align 4
  %69 = call i32 @VARBSTRCMP(i32* %66, i32* %67, i32 0, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @VARCMP_GT, align 4
  %73 = call i32 @VARBSTRCMP(i32* %70, i32* %71, i32 0, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* @VARCMP_EQ, align 4
  %77 = call i32 @VARBSTRCMP(i32* %74, i32* %75, i32 0, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @SysFreeString(i32* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @SysFreeString(i32* %80)
  %82 = call i32* @SysAllocStringByteLen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_VarBstrCmp.sb1, i64 0, i64 0), i32 3)
  store i32* %82, i32** %3, align 8
  %83 = call i32* @SysAllocStringByteLen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_VarBstrCmp.sb2, i64 0, i64 0), i32 3)
  store i32* %83, i32** %5, align 8
  store i64 0, i64* %1, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @VARCMP_LT, align 4
  %87 = call i32 @VARBSTRCMP(i32* %84, i32* %85, i32 0, i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @SysFreeString(i32* %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @SysFreeString(i32* %90)
  %92 = call i32* @SysAllocStringByteLen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_VarBstrCmp.sbchr0, i64 0, i64 0), i32 2)
  store i32* %92, i32** %3, align 8
  %93 = call i32* @SysAllocStringByteLen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_VarBstrCmp.sbchr00, i64 0, i64 0), i32 3)
  store i32* %93, i32** %5, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @VARCMP_GT, align 4
  %97 = call i32 @VARBSTRCMP(i32* %94, i32* %95, i32 0, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @VARCMP_LT, align 4
  %101 = call i32 @VARBSTRCMP(i32* %98, i32* %99, i32 0, i32 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @VARCMP_GT, align 4
  %105 = call i32 @VARBSTRCMP(i32* %102, i32* %103, i32 0, i32 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* @VARCMP_GT, align 4
  %109 = call i32 @VARBSTRCMP(i32* %106, i32* %107, i32 0, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @SysFreeString(i32* %110)
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @SysFreeString(i32* %112)
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @SysFreeString(i32* %114)
  ret void
}

declare dso_local i64 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32* @SysAllocString(i8*) #1

declare dso_local i32 @VARBSTRCMP(i32*, i32*, i32, i32) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32* @SysAllocStringLen(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32* @SysAllocStringByteLen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
