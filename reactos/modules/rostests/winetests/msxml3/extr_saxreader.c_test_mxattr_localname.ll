; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_mxattr_localname.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_mxattr_localname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msxmlsupported_data_t = type { i64, i32 }

@test_mxattr_localname.localname1W = internal constant [11 x i8] c"localname1\00", align 1
@test_mxattr_localname.localnameW = internal constant [10 x i8] c"localname\00", align 1
@test_mxattr_localname.uri1W = internal constant [5 x i8] c"uri1\00", align 1
@test_mxattr_localname.uriW = internal constant [4 x i8] c"uri\00", align 1
@saxattr_support_data = common dso_local global %struct.msxmlsupported_data_t* null, align 8
@mxattributes_support_data = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IMXAttributes = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@IID_ISAXAttributes = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localname\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"a:localname\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"b:localname\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s: got index %d\0A\00", align 1
@CLSID_SAXAttributes = common dso_local global i32 0, align 4
@CLSID_SAXAttributes30 = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mxattr_localname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mxattr_localname() #0 {
  %1 = alloca %struct.msxmlsupported_data_t*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** @saxattr_support_data, align 8
  store %struct.msxmlsupported_data_t* %6, %struct.msxmlsupported_data_t** %1, align 8
  br label %7

7:                                                ; preds = %145, %19, %0
  %8 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %9 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %165

12:                                               ; preds = %7
  %13 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %14 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @mxattributes_support_data, align 4
  %17 = call i32 @is_clsid_supported(i64 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %21 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %20, i32 1
  store %struct.msxmlsupported_data_t* %21, %struct.msxmlsupported_data_t** %1, align 8
  br label %7

22:                                               ; preds = %12
  %23 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %24 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %27 = bitcast i32** %3 to i8**
  %28 = call i32 @CoCreateInstance(i64 %25, i32* null, i32 %26, i32* @IID_IMXAttributes, i8** %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @S_OK, align 4
  %31 = call i32 @EXPECT_HR(i32 %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = bitcast i32** %2 to i8**
  %34 = call i32 @IMXAttributes_QueryInterface(i32* %32, i32* @IID_ISAXAttributes, i8** %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = call i32 @EXPECT_HR(i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @ISAXAttributes_getIndexFromName(i32* %38, i8* null, i32 0, i8* null, i32 0, i32* %5)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @E_INVALIDARG, align 4
  %42 = call i32 @EXPECT_HR(i32 %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @_bstr_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @_bstr_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @_bstr_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @_bstr_(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 @IMXAttributes_addAttribute(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @S_OK, align 4
  %52 = call i32 @EXPECT_HR(i32 %50, i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @_bstr_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 @_bstr_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @_bstr_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32 @_bstr_(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @_bstr_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %59 = call i32 @IMXAttributes_addAttribute(i32* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = call i32 @EXPECT_HR(i32 %60, i32 %61)
  store i32 -1, i32* %5, align 4
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @lstrlenW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0))
  %65 = call i32 @lstrlenW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_mxattr_localname.localnameW, i64 0, i64 0))
  %66 = call i32 @ISAXAttributes_getIndexFromName(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0), i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_mxattr_localname.localnameW, i64 0, i64 0), i32 %65, i32* %5)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @S_OK, align 4
  %69 = call i32 @EXPECT_HR(i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %74 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %76)
  store i32 -1, i32* %5, align 4
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @lstrlenW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_mxattr_localname.uri1W, i64 0, i64 0))
  %80 = call i32 @lstrlenW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_mxattr_localname.localnameW, i64 0, i64 0))
  %81 = call i32 @ISAXAttributes_getIndexFromName(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_mxattr_localname.uri1W, i64 0, i64 0), i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_mxattr_localname.localnameW, i64 0, i64 0), i32 %80, i32* %5)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @E_INVALIDARG, align 4
  %84 = call i32 @EXPECT_HR(i32 %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, -1
  %87 = zext i1 %86 to i32
  %88 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %89 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %90, i32 %91)
  store i32 -1, i32* %5, align 4
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @lstrlenW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0))
  %95 = call i32 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_mxattr_localname.localname1W, i64 0, i64 0))
  %96 = call i32 @ISAXAttributes_getIndexFromName(i32* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0), i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_mxattr_localname.localname1W, i64 0, i64 0), i32 %95, i32* %5)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @E_INVALIDARG, align 4
  %99 = call i32 @EXPECT_HR(i32 %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, -1
  %102 = zext i1 %101 to i32
  %103 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %104 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %109 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @IsEqualGUID(i64 %110, i32* @CLSID_SAXAttributes)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %22
  %114 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %115 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @IsEqualGUID(i64 %116, i32* @CLSID_SAXAttributes30)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %113, %22
  %120 = load i32*, i32** %2, align 8
  %121 = call i32 @ISAXAttributes_getIndexFromName(i32* %120, i8* null, i32 0, i8* null, i32 0, i32* null)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @E_POINTER, align 4
  %124 = call i32 @EXPECT_HR(i32 %122, i32 %123)
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @lstrlenW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0))
  %127 = call i32 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_mxattr_localname.localname1W, i64 0, i64 0))
  %128 = call i32 @ISAXAttributes_getIndexFromName(i32* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0), i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_mxattr_localname.localname1W, i64 0, i64 0), i32 %127, i32* null)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @E_POINTER, align 4
  %131 = call i32 @EXPECT_HR(i32 %129, i32 %130)
  br label %145

132:                                              ; preds = %113
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @ISAXAttributes_getIndexFromName(i32* %133, i8* null, i32 0, i8* null, i32 0, i32* null)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @E_INVALIDARG, align 4
  %137 = call i32 @EXPECT_HR(i32 %135, i32 %136)
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @lstrlenW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0))
  %140 = call i32 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_mxattr_localname.localname1W, i64 0, i64 0))
  %141 = call i32 @ISAXAttributes_getIndexFromName(i32* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0), i32 %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_mxattr_localname.localname1W, i64 0, i64 0), i32 %140, i32* null)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @E_INVALIDARG, align 4
  %144 = call i32 @EXPECT_HR(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %132, %119
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 @lstrlenW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0))
  %148 = call i32 @ISAXAttributes_getIndexFromName(i32* %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_mxattr_localname.uriW, i64 0, i64 0), i32 %147, i8* null, i32 0, i32* %5)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @E_INVALIDARG, align 4
  %151 = call i32 @EXPECT_HR(i32 %149, i32 %150)
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @lstrlenW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_mxattr_localname.localname1W, i64 0, i64 0))
  %154 = call i32 @ISAXAttributes_getIndexFromName(i32* %152, i8* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_mxattr_localname.localname1W, i64 0, i64 0), i32 %153, i32* %5)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @E_INVALIDARG, align 4
  %157 = call i32 @EXPECT_HR(i32 %155, i32 %156)
  %158 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %1, align 8
  %159 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %158, i32 1
  store %struct.msxmlsupported_data_t* %159, %struct.msxmlsupported_data_t** %1, align 8
  %160 = load i32*, i32** %2, align 8
  %161 = call i32 @ISAXAttributes_Release(i32* %160)
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 @IMXAttributes_Release(i32* %162)
  %164 = call i32 (...) @free_bstrs()
  br label %7

165:                                              ; preds = %7
  ret void
}

declare dso_local i32 @is_clsid_supported(i64, i32) #1

declare dso_local i32 @CoCreateInstance(i64, i32*, i32, i32*, i8**) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IMXAttributes_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ISAXAttributes_getIndexFromName(i32*, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @IMXAttributes_addAttribute(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i64 @IsEqualGUID(i64, i32*) #1

declare dso_local i32 @ISAXAttributes_Release(i32*) #1

declare dso_local i32 @IMXAttributes_Release(i32*) #1

declare dso_local i32 @free_bstrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
