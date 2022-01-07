; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_CreateShellLink.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_CreateShellLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_ShellLink = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IShellLink = common dso_local global i32 0, align 4
@IID_IPersistFile = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @CreateShellLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateShellLink(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %19 = bitcast i32** %15 to i32*
  %20 = call i32 @CoCreateInstance(i32* @CLSID_ShellLink, i32* null, i32 %18, i32* @IID_IShellLink, i32* %19)
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = call i64 @SUCCEEDED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %7
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @IShellLinkW_SetPath(i32* %25, i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32*, i32** %15, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @IShellLinkW_SetArguments(i32* %31, i32 %32)
  store i32 %33, i32* %17, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @IShellLinkW_SetWorkingDirectory(i32* %38, i32 %39)
  store i32 %40, i32* %17, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @IShellLinkW_SetIconLocation(i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @IShellLinkW_SetDescription(i32* %53, i32 %54)
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32*, i32** %15, align 8
  %58 = bitcast i32** %16 to i32*
  %59 = call i32 @IShellLinkW_QueryInterface(i32* %57, i32* @IID_IPersistFile, i32* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i64 @SUCCEEDED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @IPersistFile_Save(i32* %64, i32 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @IPersistFile_Release(i32* %68)
  br label %70

70:                                               ; preds = %63, %56
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @IShellLinkW_Release(i32* %71)
  br label %73

73:                                               ; preds = %70, %7
  %74 = load i32, i32* %17, align 4
  ret i32 %74
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IShellLinkW_SetPath(i32*, i32) #1

declare dso_local i32 @IShellLinkW_SetArguments(i32*, i32) #1

declare dso_local i32 @IShellLinkW_SetWorkingDirectory(i32*, i32) #1

declare dso_local i32 @IShellLinkW_SetIconLocation(i32*, i32, i32) #1

declare dso_local i32 @IShellLinkW_SetDescription(i32*, i32) #1

declare dso_local i32 @IShellLinkW_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @IPersistFile_Save(i32*, i32, i32) #1

declare dso_local i32 @IPersistFile_Release(i32*) #1

declare dso_local i32 @IShellLinkW_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
