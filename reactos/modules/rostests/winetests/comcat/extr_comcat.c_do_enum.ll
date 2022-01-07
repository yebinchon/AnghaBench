; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comcat/extr_comcat.c_do_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comcat/extr_comcat.c_do_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_StdComponentCategoriesMgr = common dso_local global i32 0, align 4
@do_enum.szCatID = internal constant [39 x i8] c"{deadcafe-0000-0000-0000-000000000000}\00", align 16
@do_enum.szGuid = internal constant [39 x i8] c"{deadcafe-beed-bead-dead-cafebeaddead}\00", align 16
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ICatInformation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CoCreateInstance\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ICatInformation_EnumClassesOfCategories\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Expected S_FALSE, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Fetched wrong number of guids %u\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Expected S_OK, got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Guids do not match\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Could not register the test category\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_enum() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [1 x i32], align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* @CLSID_StdComponentCategoriesMgr, i32** %2, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  store i32 -1, i32* %7, align 4
  store i32* inttoptr (i64 3735931646 to i32*), i32** %8, align 8
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %10 = call i32 @CLSIDFromString(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @do_enum.szCatID, i64 0, i64 0), i32* %9)
  %11 = call i32 @CLSIDFromString(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @do_enum.szGuid, i64 0, i64 0), i32* %6)
  %12 = call i32 @OleInitialize(i32* null)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %15 = bitcast i32** %3 to i8**
  %16 = call i64 @CoCreateInstance(i32* %13, i32* null, i32 %14, i32* @IID_ICatInformation, i8** %15)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok_ole_success(i64 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @ICatInformation_EnumClassesOfCategories(i32* %19, i32 -1, i32* null, i32 -1, i32* null, i32** %8)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok_ole_success(i64 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @IEnumGUID_Release(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %27 = call i64 @ICatInformation_EnumClassesOfCategories(i32* %25, i32 1, i32* %26, i32 -1, i32* null, i32** %8)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @ok_ole_success(i64 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %32 = call i64 @IEnumGUID_Next(i32* %30, i32 1, i32* %31, i32* %7)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @S_FALSE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @IEnumGUID_Release(i32* %44)
  %46 = call i64 (...) @register_testentry()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %0
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %51 = call i64 @ICatInformation_EnumClassesOfCategories(i32* %49, i32 1, i32* %50, i32 -1, i32* null, i32** %8)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = call i32 @ok_ole_success(i64 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %56 = call i64 @IEnumGUID_Next(i32* %54, i32 1, i32* %55, i32* %7)
  store i64 %56, i64* %1, align 8
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %1, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %69 = call i32 @IsEqualGUID(i32* %68, i32* %6)
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @IEnumGUID_Release(i32* %71)
  %73 = call i32 (...) @unregister_testentry()
  br label %76

74:                                               ; preds = %0
  %75 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %48
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @ICatInformation_Release(i32* %77)
  %79 = call i32 (...) @OleUninitialize()
  ret void
}

declare dso_local i32 @CLSIDFromString(i8*, i32*) #1

declare dso_local i32 @OleInitialize(i32*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok_ole_success(i64, i8*) #1

declare dso_local i64 @ICatInformation_EnumClassesOfCategories(i32*, i32, i32*, i32, i32*, i32**) #1

declare dso_local i32 @IEnumGUID_Release(i32*) #1

declare dso_local i64 @IEnumGUID_Next(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @register_testentry(...) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @unregister_testentry(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ICatInformation_Release(i32*) #1

declare dso_local i32 @OleUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
