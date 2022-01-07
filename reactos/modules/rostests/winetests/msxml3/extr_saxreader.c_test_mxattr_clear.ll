; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_mxattr_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_mxattr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_SAXAttributes = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IMXAttributes = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@IID_ISAXAttributes = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"qname\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@E_POINTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mxattr_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mxattr_clear() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %2 to i8**
  %8 = call i32 @CoCreateInstance(i32* @CLSID_SAXAttributes, i32* null, i32 %6, i32* @IID_IMXAttributes, i8** %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @S_OK, align 4
  %11 = call i32 @EXPECT_HR(i32 %9, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = bitcast i32** %1 to i8**
  %14 = call i32 @IMXAttributes_QueryInterface(i32* %12, i32* @IID_ISAXAttributes, i8** %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = call i32 @EXPECT_HR(i32 %15, i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @ISAXAttributes_getQName(i32* %18, i32 0, i8** null, i32* null)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @E_INVALIDARG, align 4
  %22 = call i32 @EXPECT_HR(i32 %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @ISAXAttributes_getQName(i32* %23, i32 0, i8** %3, i32* %5)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @E_INVALIDARG, align 4
  %27 = call i32 @EXPECT_HR(i32 %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @IMXAttributes_clear(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @S_OK, align 4
  %32 = call i32 @EXPECT_HR(i32 %30, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @_bstr_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @_bstr_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = call i32 @IMXAttributes_addAttribute(i32* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @S_OK, align 4
  %42 = call i32 @EXPECT_HR(i32 %40, i32 %41)
  store i32 -1, i32* %5, align 4
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @ISAXAttributes_getLength(i32* %43, i32* %5)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = call i32 @EXPECT_HR(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  store i32 -1, i32* %5, align 4
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @ISAXAttributes_getQName(i32* %55, i32 0, i8** null, i32* %5)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @E_POINTER, align 4
  %59 = call i32 @EXPECT_HR(i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, -1
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %3, align 8
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @ISAXAttributes_getQName(i32* %67, i32 0, i8** %3, i32* null)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @E_POINTER, align 4
  %71 = call i32 @EXPECT_HR(i32 %69, i32 %70)
  %72 = load i8*, i8** %3, align 8
  %73 = icmp eq i8* %72, inttoptr (i64 3735928559 to i8*)
  %74 = zext i1 %73 to i32
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  store i32 0, i32* %5, align 4
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @ISAXAttributes_getQName(i32* %77, i32 0, i8** %3, i32* %5)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @S_OK, align 4
  %81 = call i32 @EXPECT_HR(i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 5
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %91 = call i32 @lstrcmpW(i8* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load i8*, i8** %3, align 8
  %96 = call i8* @wine_dbgstr_w(i8* %95)
  %97 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @IMXAttributes_clear(i32* %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @S_OK, align 4
  %102 = call i32 @EXPECT_HR(i32 %100, i32 %101)
  store i32 -1, i32* %5, align 4
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @ISAXAttributes_getLength(i32* %103, i32* %5)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @S_OK, align 4
  %107 = call i32 @EXPECT_HR(i32 %105, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  store i32 -1, i32* %5, align 4
  store i8* inttoptr (i64 3735928559 to i8*), i8** %3, align 8
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @ISAXAttributes_getQName(i32* %115, i32 0, i8** %3, i32* %5)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @E_INVALIDARG, align 4
  %119 = call i32 @EXPECT_HR(i32 %117, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, -1
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 @ok(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %125)
  %127 = load i8*, i8** %3, align 8
  %128 = icmp eq i8* %127, inttoptr (i64 3735928559 to i8*)
  %129 = zext i1 %128 to i32
  %130 = load i8*, i8** %3, align 8
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %130)
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 @IMXAttributes_Release(i32* %132)
  %134 = load i32*, i32** %1, align 8
  %135 = call i32 @ISAXAttributes_Release(i32* %134)
  %136 = call i32 (...) @free_bstrs()
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IMXAttributes_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ISAXAttributes_getQName(i32*, i32, i8**, i32*) #1

declare dso_local i32 @IMXAttributes_clear(i32*) #1

declare dso_local i32 @IMXAttributes_addAttribute(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @ISAXAttributes_getLength(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i32 @lstrcmpW(i8*, i32) #1

declare dso_local i8* @wine_dbgstr_w(i8*) #1

declare dso_local i32 @IMXAttributes_Release(i32*) #1

declare dso_local i32 @ISAXAttributes_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
