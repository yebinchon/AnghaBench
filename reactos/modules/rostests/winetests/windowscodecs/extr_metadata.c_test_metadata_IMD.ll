; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_test_metadata_IMD.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_test_metadata_IMD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_data = type { %struct.TYPE_6__, i32*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i8, i8, float, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, float, i8, i8, i8, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@test_metadata_IMD.IMD_name = internal constant [24 x i8] c"Image Descriptor Reader\00", align 16
@test_metadata_IMD.IMD_data = internal constant [28 x i8] c"hello world!\01\02\03\04\05\06\07\08\ED\0A\0B\0C\0D\0E\0F\00", align 16
@test_metadata_IMD.td = internal constant [8 x %struct.test_data] [%struct.test_data { %struct.TYPE_6__ { i8 -128, i8 0, float 0.000000e+00, i8 1, i8 0, i8 76, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, float 0.000000e+00, i8 0, i8 0, i8 0, i32 0 }, i32* null, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.test_data { %struct.TYPE_6__ { i8 -128, i8 0, float 0.000000e+00, i8 3, i8 0, i8 84, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, float 0.000000e+00, i8 0, i8 0, i8 0, i32 0 }, i32* null, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.test_data { %struct.TYPE_6__ { i8 -128, i8 0, float 0.000000e+00, i8 5, i8 0, i8 87, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, float 0.000000e+00, i8 0, i8 0, i8 0, i32 0 }, i32* null, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.test_data { %struct.TYPE_6__ { i8 -128, i8 0, float 0.000000e+00, i8 7, i8 0, i8 72, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, float 0.000000e+00, i8 0, i8 0, i8 0, i32 0 }, i32* null, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.test_data { %struct.TYPE_6__ { i8 -126, i8 0, float 0.000000e+00, i8 1, i8 0, i8 76, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, float 0.000000e+00, i8 0, i8 0, i8 0, i32 0 }, i32* null, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.test_data { %struct.TYPE_6__ { i8 -126, i8 0, float 0.000000e+00, i8 1, i8 0, i8 73, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, float 0.000000e+00, i8 0, i8 0, i8 0, i32 0 }, i32* null, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.test_data { %struct.TYPE_6__ { i8 -126, i8 0, float 0.000000e+00, i8 1, i8 0, i8 83, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, float 0.000000e+00, i8 0, i8 0, i8 0, i32 0 }, i32* null, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }, %struct.test_data { %struct.TYPE_6__ { i8 -127, i8 0, float 0.000000e+00, i8 5, i8 0, i8 76, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, float 0.000000e+00, i8 0, i8 0, i8 0, i32 0 }, i32* null, %struct.TYPE_5__ zeroinitializer, i32 0, i32 0, i32 0 }], align 16
@CLSID_WICIMDMetadataReader = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IWICMetadataReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@E_NOINTERFACE = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"CoCreateInstance error %#x\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"IStream_Seek error %#x\0A\00", align 1
@IID_IWICPersistStream = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"QueryInterface error %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Load error %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GetCount error %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"unexpected count %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"GetMetadataFormat error %#x\0A\00", align 1
@GUID_MetadataFormatIMD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"wrong format %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"GetMetadataHandlerInfo error %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"GetCLSID error %#x\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"wrong CLSID %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"GetFriendlyName error %#x\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"wrong IMD reader name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_metadata_IMD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_metadata_IMD() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %13 = bitcast i32** %5 to i8**
  %14 = call i64 @CoCreateInstance(i32* @CLSID_WICIMDMetadataReader, i32* null, i32 %12, i32* @IID_IWICMetadataReader, i8** %13)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %0
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @E_NOINTERFACE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ true, %18 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @broken(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %0
  %32 = phi i1 [ true, %0 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = call i32* @create_stream(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_metadata_IMD.IMD_data, i64 0, i64 0), i32 28)
  store i32* %36, i32** %3, align 8
  %37 = load i64, i64* %2, align 8
  %38 = call i64 @SUCCEEDED(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 12, i32* %41, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IStream_Seek(i32* %42, i32 %45, i32 %43, i32* null)
  store i64 %46, i64* %2, align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %2, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = bitcast i32** %4 to i8**
  %55 = call i64 @IUnknown_QueryInterface(i32* %53, i32* @IID_IWICPersistStream, i8** %54)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @IWICPersistStream_Load(i32* %62, i32* %63)
  store i64 %64, i64* %2, align 8
  %65 = load i64, i64* %2, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %2, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @IWICPersistStream_Release(i32* %71)
  br label %73

73:                                               ; preds = %40, %31
  %74 = load i64, i64* %2, align 8
  %75 = call i64 @SUCCEEDED(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %145

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @IWICMetadataReader_GetCount(i32* %78, i64* %8)
  store i64 %79, i64* %2, align 8
  %80 = load i64, i64* %2, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %2, align 8
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @ARRAY_SIZE(%struct.test_data* getelementptr inbounds ([8 x %struct.test_data], [8 x %struct.test_data]* @test_metadata_IMD.td, i64 0, i64 0))
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @compare_metadata(i32* %92, %struct.test_data* getelementptr inbounds ([8 x %struct.test_data], [8 x %struct.test_data]* @test_metadata_IMD.td, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call i64 @IWICMetadataReader_GetMetadataFormat(i32* %95, i32* %10)
  store i64 %96, i64* %2, align 8
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %2, align 8
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %101)
  %103 = call i32 @IsEqualGUID(i32* %10, i32* @GUID_MetadataFormatIMD)
  %104 = call i64 @wine_dbgstr_guid(i32* %10)
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = call i64 @IWICMetadataReader_GetMetadataHandlerInfo(i32* %106, i32** %6)
  store i64 %107, i64* %2, align 8
  %108 = load i64, i64* %2, align 8
  %109 = load i64, i64* @S_OK, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %2, align 8
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = call i64 @IWICMetadataHandlerInfo_GetCLSID(i32* %114, i32* %11)
  store i64 %115, i64* %2, align 8
  %116 = load i64, i64* %2, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %2, align 8
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %120)
  %122 = call i32 @IsEqualGUID(i32* %11, i32* @CLSID_WICIMDMetadataReader)
  %123 = call i64 @wine_dbgstr_guid(i32* %11)
  %124 = call i32 @ok(i32 %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %127 = call i64 @IWICMetadataHandlerInfo_GetFriendlyName(i32* %125, i32 64, i8* %126, i64* %9)
  store i64 %127, i64* %2, align 8
  %128 = load i64, i64* %2, align 8
  %129 = load i64, i64* @S_OK, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %2, align 8
  %133 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i64 %132)
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %135 = call i64 @lstrcmpW(i8* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_metadata_IMD.IMD_name, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %139 = call i64 @wine_dbgstr_w(i8* %138)
  %140 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 %139)
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @IWICMetadataHandlerInfo_Release(i32* %141)
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @IWICMetadataReader_Release(i32* %143)
  br label %145

145:                                              ; preds = %77, %73
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @IStream_Release(i32* %146)
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32* @create_stream(i8*, i32) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IStream_Seek(i32*, i32, i32, i32*) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IWICPersistStream_Load(i32*, i32*) #1

declare dso_local i32 @IWICPersistStream_Release(i32*) #1

declare dso_local i64 @IWICMetadataReader_GetCount(i32*, i64*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.test_data*) #1

declare dso_local i32 @compare_metadata(i32*, %struct.test_data*, i64) #1

declare dso_local i64 @IWICMetadataReader_GetMetadataFormat(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_guid(i32*) #1

declare dso_local i64 @IWICMetadataReader_GetMetadataHandlerInfo(i32*, i32**) #1

declare dso_local i64 @IWICMetadataHandlerInfo_GetCLSID(i32*, i32*) #1

declare dso_local i64 @IWICMetadataHandlerInfo_GetFriendlyName(i32*, i32, i8*, i64*) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @IWICMetadataHandlerInfo_Release(i32*) #1

declare dso_local i32 @IWICMetadataReader_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
