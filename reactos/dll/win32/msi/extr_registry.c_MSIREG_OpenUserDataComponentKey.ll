; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserDataComponentKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserDataComponentKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to retrieve user SID\0A\00", align 1
@szUserDataComp_fmt = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_OpenUserDataComponentKey(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [512 x i32], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
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
  br label %68

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @debugstr_w(i32* %29)
  %31 = call i32 @debugstr_w(i32* %22)
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %28
  %36 = call i32* (...) @get_user_sid()
  store i32* %36, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %68

41:                                               ; preds = %35
  %42 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %43 = load i32, i32* @szUserDataComp_fmt, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @sprintfW(i32* %42, i32 %43, i32* %44, i32* %22)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @LocalFree(i32* %46)
  br label %53

48:                                               ; preds = %28
  %49 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %50 = load i32, i32* @szUserDataComp_fmt, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @sprintfW(i32* %49, i32 %50, i32* %51, i32* %22)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %58 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @RegCreateKeyExW(i32 %57, i32* %58, i32 0, i32* null, i32 0, i32 %59, i32* null, i32* %60, i32* null)
  store i32 %61, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %68

62:                                               ; preds = %53
  %63 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %64 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @RegOpenKeyExW(i32 %63, i32* %64, i32 0, i32 %65, i32* %66)
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %68

68:                                               ; preds = %62, %56, %38, %26
  %69 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32* @get_user_sid(...) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @sprintfW(i32*, i32, i32*, i32*) #2

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
