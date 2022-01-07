; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_DeleteProductKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_DeleteProductKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@szInstaller_Products = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_DeleteProductKey(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %11 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @squash_guid(i32* %17, i32* %16)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %40

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @debugstr_w(i32* %23)
  %25 = call i32 @debugstr_w(i32* %16)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %28 = load i32, i32* @szInstaller_Products, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @RegOpenKeyExW(i32 %27, i32 %28, i32 0, i32 %29, i32* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %40

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @RegDeleteTreeW(i32 %35, i32* %16)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @RegCloseKey(i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %34, %32, %20
  %41 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i64 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #2

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
