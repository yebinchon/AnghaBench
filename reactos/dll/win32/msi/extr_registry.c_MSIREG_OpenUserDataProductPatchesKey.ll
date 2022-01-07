; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserDataProductPatchesKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserDataProductPatchesKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@MSIINSTALLCONTEXT_MACHINE = common dso_local global i64 0, align 8
@szUserDataProductPatches_fmt = common dso_local global i32 0, align 4
@szLocalSid = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to retrieve user SID\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_OpenUserDataProductPatchesKey(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [512 x i32], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %17 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @squash_guid(i32* %23, i32* %22)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %69

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @debugstr_w(i32* %29)
  %31 = call i32 @debugstr_w(i32* %22)
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MSIINSTALLCONTEXT_MACHINE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %38 = load i32, i32* @szUserDataProductPatches_fmt, align 4
  %39 = load i32*, i32** @szLocalSid, align 8
  %40 = call i32 @sprintfW(i32* %37, i32 %38, i32* %39, i32* %22)
  br label %54

41:                                               ; preds = %28
  %42 = call i32* (...) @get_user_sid()
  store i32* %42, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %69

47:                                               ; preds = %41
  %48 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %49 = load i32, i32* @szUserDataProductPatches_fmt, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @sprintfW(i32* %48, i32 %49, i32* %50, i32* %22)
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @LocalFree(i32* %52)
  br label %54

54:                                               ; preds = %47, %36
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %59 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @RegCreateKeyExW(i32 %58, i32* %59, i32 0, i32* null, i32 0, i32 %60, i32* null, i32* %61, i32* null)
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %69

63:                                               ; preds = %54
  %64 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %65 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @RegOpenKeyExW(i32 %64, i32* %65, i32 0, i32 %66, i32* %67)
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %69

69:                                               ; preds = %63, %57, %44, %26
  %70 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @sprintfW(i32*, i32, i32*, i32*) #2

declare dso_local i32* @get_user_sid(...) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
