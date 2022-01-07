; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_test_WICMapGuidToShortName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_test_WICMapGuidToShortName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WICMapGuidToShortName.unkW = internal constant [4 x i8] c"unk\00", align 1
@test_WICMapGuidToShortName.unknownW = internal constant [8 x i8] c"unknown\00", align 1
@GUID_MetadataFormatUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@GUID_NULL = common dso_local global i32 0, align 4
@WINCODEC_ERR_PROPERTYNOTFOUND = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WICMapGuidToShortName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WICMapGuidToShortName() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %4, align 16
  store i32 -559038737, i32* %2, align 4
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %6 = call i32 @WICMapGuidToShortName(i32* @GUID_MetadataFormatUnknown, i32 8, i8* %5, i32* %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @S_OK, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 8
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %19 = call i32 @lstrcmpW(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_WICMapGuidToShortName.unknownW, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %24 = call i32 @wine_dbgstr_w(i8* %23)
  %25 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %28 = call i32 @WICMapGuidToShortName(i32* @GUID_MetadataFormatUnknown, i32 8, i8* %27, i32* null)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @S_OK, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %36 = call i32 @lstrcmpW(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_WICMapGuidToShortName.unknownW, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %41 = call i32 @wine_dbgstr_w(i8* %40)
  %42 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 -559038737, i32* %2, align 4
  %43 = call i32 @WICMapGuidToShortName(i32* @GUID_MetadataFormatUnknown, i32 8, i8* null, i32* %2)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 8
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 -559038737, i32* %2, align 4
  %55 = call i32 @WICMapGuidToShortName(i32* @GUID_MetadataFormatUnknown, i32 0, i8* null, i32* %2)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @S_OK, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = icmp eq i32 %62, 8
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = call i32 @WICMapGuidToShortName(i32* @GUID_MetadataFormatUnknown, i32 0, i8* null, i32* null)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = call i32 @WICMapGuidToShortName(i32* @GUID_MetadataFormatUnknown, i32 8, i8* null, i32* null)
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @S_OK, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = call i32 @WICMapGuidToShortName(i32* @GUID_NULL, i32 0, i8* null, i32* null)
  store i32 %81, i32* %1, align 4
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* @WINCODEC_ERR_PROPERTYNOTFOUND, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %1, align 4
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %88, align 16
  store i32 -559038737, i32* %2, align 4
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %90 = call i32 @WICMapGuidToShortName(i32* @GUID_MetadataFormatUnknown, i32 4, i8* %89, i32* %2)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %93 = call i32 @HRESULT_FROM_WIN32(i32 %92)
  %94 = icmp eq i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %1, align 4
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %2, align 4
  %99 = icmp eq i32 %98, -559038737
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %104 = call i32 @lstrcmpW(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WICMapGuidToShortName.unkW, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %109 = call i32 @wine_dbgstr_w(i8* %108)
  %110 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %111, align 16
  store i32 -559038737, i32* %2, align 4
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %113 = call i32 @WICMapGuidToShortName(i32* @GUID_MetadataFormatUnknown, i32 0, i8* %112, i32* %2)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* %1, align 4
  %115 = load i32, i32* @E_INVALIDARG, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %2, align 4
  %121 = icmp eq i32 %120, -559038737
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @ok(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %126 = load i8, i8* %125, align 16
  %127 = icmp ne i8 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %131 = call i32 @wine_dbgstr_w(i8* %130)
  %132 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %134 = call i32 @WICMapGuidToShortName(i32* null, i32 8, i8* %133, i32* null)
  store i32 %134, i32* %1, align 4
  %135 = load i32, i32* %1, align 4
  %136 = load i32, i32* @E_INVALIDARG, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %1, align 4
  %140 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %139)
  ret void
}

declare dso_local i32 @WICMapGuidToShortName(i32*, i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
