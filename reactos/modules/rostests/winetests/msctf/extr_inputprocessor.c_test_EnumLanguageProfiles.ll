; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_EnumLanguageProfiles.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_EnumLanguageProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@g_ipp = common dso_local global i32 0, align 4
@gLangid = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"EnumLanguageProfiles failed: %x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@CLSID_FakeService = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"LangId Incorrect\0A\00", align 1
@GUID_TFCAT_TIP_KEYBOARD = common dso_local global i32 0, align 4
@GUID_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"CatId Incorrect\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"guidProfile Incorrect\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Registered text service not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EnumLanguageProfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumLanguageProfiles() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @g_ipp, align 4
  %7 = load i64, i64* @gLangid, align 8
  %8 = call i64 @ITfInputProcessorProfiles_EnumLanguageProfiles(i32 %6, i64 %7, i32** null)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @E_INVALIDARG, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @g_ipp, align 4
  %16 = load i64, i64* @gLangid, align 8
  %17 = call i64 @ITfInputProcessorProfiles_EnumLanguageProfiles(i32 %15, i64 %16, i32** %2)
  %18 = call i64 @SUCCEEDED(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %53, %20
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @IEnumTfLanguageProfiles_Next(i32* %22, i32 1, %struct.TYPE_3__* %4, i32* null)
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %28 = call i32 @IsEqualGUID(i32* %27, i32* @CLSID_FakeService)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %1, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @gLangid, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %39 = call i32 @IsEqualGUID(i32* %38, i32* @GUID_TFCAT_TIP_KEYBOARD)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %43 = call i32 @IsEqualGUID(i32* %42, i32* @GUID_NULL)
  %44 = call i64 @broken(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %30
  %47 = phi i1 [ true, %30 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %51 = call i32 @IsEqualGUID(i32* %50, i32* @CLSID_FakeService)
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %46, %26
  br label %21

54:                                               ; preds = %21
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @IEnumTfLanguageProfiles_Release(i32* %55)
  br label %57

57:                                               ; preds = %54, %0
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i64 @ITfInputProcessorProfiles_EnumLanguageProfiles(i32, i64, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IEnumTfLanguageProfiles_Next(i32*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IEnumTfLanguageProfiles_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
