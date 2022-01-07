; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserDataProductKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserDataProductKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@MSIINSTALLCONTEXT_MACHINE = common dso_local global i64 0, align 8
@szUserDataProd_fmt = common dso_local global i32 0, align 4
@szLocalSid = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to retrieve user SID\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_OpenUserDataProductKey(i32* %0, i64 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [512 x i32], align 16
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %19 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @squash_guid(i32* %25, i32* %24)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %80

30:                                               ; preds = %5
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @debugstr_w(i32* %31)
  %33 = call i32 @debugstr_w(i32* %24)
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @MSIINSTALLCONTEXT_MACHINE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  %40 = load i32, i32* @szUserDataProd_fmt, align 4
  %41 = load i32*, i32** @szLocalSid, align 8
  %42 = call i32 @sprintfW(i32* %39, i32 %40, i32* %41, i32* %24)
  br label %65

43:                                               ; preds = %30
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  %48 = load i32, i32* @szUserDataProd_fmt, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @sprintfW(i32* %47, i32 %48, i32* %49, i32* %24)
  br label %64

51:                                               ; preds = %43
  %52 = call i32* (...) @get_user_sid()
  store i32* %52, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %80

57:                                               ; preds = %51
  %58 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  %59 = load i32, i32* @szUserDataProd_fmt, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @sprintfW(i32* %58, i32 %59, i32* %60, i32* %24)
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @LocalFree(i32* %62)
  br label %64

64:                                               ; preds = %57, %46
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %70 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @RegCreateKeyExW(i32 %69, i32* %70, i32 0, i32* null, i32 0, i32 %71, i32* null, i32* %72, i32* null)
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %80

74:                                               ; preds = %65
  %75 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %76 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 0
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @RegOpenKeyExW(i32 %75, i32* %76, i32 0, i32 %77, i32* %78)
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %74, %68, %54, %28
  %81 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
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
