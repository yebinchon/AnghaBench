; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_DeleteUserDataComponentKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_DeleteUserDataComponentKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to retrieve user SID\0A\00", align 1
@szUserDataComponents_fmt = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_DeleteUserDataComponentKey(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [512 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %15 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @squash_guid(i32* %21, i32* %20)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @debugstr_w(i32* %27)
  %29 = call i32 @debugstr_w(i32* %20)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = call i32* (...) @get_user_sid()
  store i32* %34, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

39:                                               ; preds = %33
  %40 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %41 = load i32, i32* @szUserDataComponents_fmt, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @sprintfW(i32* %40, i32 %41, i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @LocalFree(i32* %44)
  br label %51

46:                                               ; preds = %26
  %47 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %48 = load i32, i32* @szUserDataComponents_fmt, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @sprintfW(i32* %47, i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %53 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @RegOpenKeyExW(i32 %52, i32* %53, i32 0, i32 %54, i32* %11)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @RegDeleteTreeW(i32 %60, i32* %20)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @RegCloseKey(i32 %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %59, %57, %36, %24
  %66 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32* @get_user_sid(...) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @sprintfW(i32*, i32, i32*) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @RegDeleteTreeW(i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
