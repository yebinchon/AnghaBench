; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_test_WICMapShortNameToGuid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_test_WICMapShortNameToGuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WICMapShortNameToGuid.unkW = internal constant [4 x i8] c"unk\00", align 1
@test_WICMapShortNameToGuid.xmpW = internal constant [4 x i8] c"xmp\00", align 1
@test_WICMapShortNameToGuid.XmPW = internal constant [4 x i8] c"XmP\00", align 1
@test_WICMapShortNameToGuid.unknownW = internal constant [8 x i8] c"unknown\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"got %#x\0A\00", align 1
@WINCODEC_ERR_PROPERTYNOTFOUND = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@GUID_MetadataFormatUnknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@GUID_MetadataFormatXMP = common dso_local global i32 0, align 4
@GUID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WICMapShortNameToGuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WICMapShortNameToGuid() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i64 @WICMapShortNameToGuid(i8* null, i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @E_INVALIDARG, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = call i64 @WICMapShortNameToGuid(i8* null, i32* %2)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @E_INVALIDARG, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = call i64 @WICMapShortNameToGuid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_WICMapShortNameToGuid.unknownW, i64 0, i64 0), i32* null)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @E_INVALIDARG, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i64 @WICMapShortNameToGuid(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WICMapShortNameToGuid.unkW, i64 0, i64 0), i32* %2)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @WINCODEC_ERR_PROPERTYNOTFOUND, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = call i64 @WICMapShortNameToGuid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_WICMapShortNameToGuid.unknownW, i64 0, i64 0), i32* %2)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = call i32 @IsEqualGUID(i32* %2, i32* @GUID_MetadataFormatUnknown)
  %39 = call i64 @wine_dbgstr_guid(i32* %2)
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = call i64 @WICMapShortNameToGuid(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WICMapShortNameToGuid.xmpW, i64 0, i64 0), i32* %2)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = call i32 @IsEqualGUID(i32* %2, i32* @GUID_MetadataFormatXMP)
  %49 = call i64 @wine_dbgstr_guid(i32* %2)
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @GUID_NULL, align 4
  store i32 %51, i32* %2, align 4
  %52 = call i64 @WICMapShortNameToGuid(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_WICMapShortNameToGuid.XmPW, i64 0, i64 0), i32* %2)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = call i32 @IsEqualGUID(i32* %2, i32* @GUID_MetadataFormatXMP)
  %60 = call i64 @wine_dbgstr_guid(i32* %2)
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  ret void
}

declare dso_local i64 @WICMapShortNameToGuid(i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
