; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_FindClosestCategory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_FindClosestCategory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUID_TFCAT_TIP_SPEECH = common dso_local global i32 0, align 4
@GUID_TFCAT_TIP_KEYBOARD = common dso_local global i32 0, align 4
@GUID_TFCAT_TIP_HANDWRITING = common dso_local global i32 0, align 4
@__const.test_FindClosestCategory.list = private unnamed_addr constant [3 x i32*] [i32* @GUID_TFCAT_TIP_SPEECH, i32* @GUID_TFCAT_TIP_KEYBOARD, i32* @GUID_TFCAT_TIP_HANDWRITING], align 16
@g_cm = common dso_local global i32 0, align 4
@CLSID_FakeService = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ITfCategoryMgr_FindClosestCategory failed (%x)\0A\00", align 1
@GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Wrong GUID\0A\00", align 1
@GUID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FindClosestCategory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FindClosestCategory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [3 x i32*], align 16
  %4 = bitcast [3 x i32*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x i32*]* @__const.test_FindClosestCategory.list to i8*), i64 24, i1 false)
  %5 = load i32, i32* @g_cm, align 4
  %6 = call i32 @ITfCategoryMgr_FindClosestCategory(i32 %5, i32* @CLSID_FakeService, i32* %1, i32** null, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @SUCCEEDED(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @IsEqualGUID(i32* %1, i32* @GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER)
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @g_cm, align 4
  %14 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %15 = call i32 @ITfCategoryMgr_FindClosestCategory(i32 %13, i32* @CLSID_FakeService, i32* %1, i32** %14, i32 1)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @SUCCEEDED(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @IsEqualGUID(i32* %1, i32* @GUID_NULL)
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @g_cm, align 4
  %23 = getelementptr inbounds [3 x i32*], [3 x i32*]* %3, i64 0, i64 0
  %24 = call i32 @ITfCategoryMgr_FindClosestCategory(i32 %22, i32* @CLSID_FakeService, i32* %1, i32** %23, i32 3)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @SUCCEEDED(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @IsEqualGUID(i32* %1, i32* @GUID_TFCAT_TIP_KEYBOARD)
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ITfCategoryMgr_FindClosestCategory(i32, i32*, i32*, i32**, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SUCCEEDED(i32) #2

declare dso_local i32 @IsEqualGUID(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
