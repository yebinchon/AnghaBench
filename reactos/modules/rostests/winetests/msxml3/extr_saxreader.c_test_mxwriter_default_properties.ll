; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_mxwriter_default_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_mxwriter_default_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxwriter_props_t = type { i32, i32, i32, i32, i32, i32, i64 }

@mxwriter_support_data = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IMXWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"test %d: got BOM %d, expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"test %d: got disable escape %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"test %d: got indent %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"test %d: got omitdecl %d, expected %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"test %d: got standalone %d, expected %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"test %d: got encoding %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxwriter_props_t*)* @test_mxwriter_default_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mxwriter_default_properties(%struct.mxwriter_props_t* %0) #0 {
  %2 = alloca %struct.mxwriter_props_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxwriter_props_t* %0, %struct.mxwriter_props_t** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %25, %20, %1
  %9 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %10 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %179

13:                                               ; preds = %8
  %14 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %15 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @mxwriter_support_data, align 4
  %18 = call i32 @is_clsid_supported(i64 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %22 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %21, i32 1
  store %struct.mxwriter_props_t* %22, %struct.mxwriter_props_t** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %13
  %26 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %27 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %30 = bitcast i32** %4 to i8**
  %31 = call i32 @CoCreateInstance(i64 %28, i32* null, i32 %29, i32* @IID_IMXWriter, i8** %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @S_OK, align 4
  %34 = call i32 @EXPECT_HR(i32 %32, i32 %33)
  %35 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %36 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @IMXWriter_get_byteOrderMark(i32* %41, i32* %5)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = call i32 @EXPECT_HR(i32 %43, i32 %44)
  %46 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %47 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %55 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %56)
  %58 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %59 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @IMXWriter_get_disableOutputEscaping(i32* %64, i32* %5)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @S_OK, align 4
  %68 = call i32 @EXPECT_HR(i32 %66, i32 %67)
  %69 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %70 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %78 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %79)
  %81 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %82 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %5, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @IMXWriter_get_indent(i32* %87, i32* %5)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @S_OK, align 4
  %91 = call i32 @EXPECT_HR(i32 %89, i32 %90)
  %92 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %93 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %101 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %99, i32 %102)
  %104 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %105 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %5, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @IMXWriter_get_omitXMLDeclaration(i32* %110, i32* %5)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @S_OK, align 4
  %114 = call i32 @EXPECT_HR(i32 %112, i32 %113)
  %115 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %116 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %124 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122, i32 %125)
  %127 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %128 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %5, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @IMXWriter_get_standalone(i32* %133, i32* %5)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @S_OK, align 4
  %137 = call i32 @EXPECT_HR(i32 %135, i32 %136)
  %138 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %139 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %147 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %145, i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @IMXWriter_get_encoding(i32* %150, i32* %6)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @S_OK, align 4
  %154 = call i32 @EXPECT_HR(i32 %152, i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %157 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @_bstr_(i32 %158)
  %160 = call i32 @lstrcmpW(i32 %155, i32 %159)
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @wine_dbgstr_w(i32 %165)
  %167 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %168 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %166, i32 %169)
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @SysFreeString(i32 %171)
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @IMXWriter_Release(i32* %173)
  %175 = load %struct.mxwriter_props_t*, %struct.mxwriter_props_t** %2, align 8
  %176 = getelementptr inbounds %struct.mxwriter_props_t, %struct.mxwriter_props_t* %175, i32 1
  store %struct.mxwriter_props_t* %176, %struct.mxwriter_props_t** %2, align 8
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %8

179:                                              ; preds = %8
  ret void
}

declare dso_local i32 @is_clsid_supported(i64, i32) #1

declare dso_local i32 @CoCreateInstance(i64, i32*, i32, i32*, i8**) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IMXWriter_get_byteOrderMark(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IMXWriter_get_disableOutputEscaping(i32*, i32*) #1

declare dso_local i32 @IMXWriter_get_indent(i32*, i32*) #1

declare dso_local i32 @IMXWriter_get_omitXMLDeclaration(i32*, i32*) #1

declare dso_local i32 @IMXWriter_get_standalone(i32*, i32*) #1

declare dso_local i32 @IMXWriter_get_encoding(i32*, i32*) #1

declare dso_local i32 @lstrcmpW(i32, i32) #1

declare dso_local i32 @_bstr_(i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IMXWriter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
