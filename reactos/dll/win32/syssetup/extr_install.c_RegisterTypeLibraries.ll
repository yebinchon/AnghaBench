; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_RegisterTypeLibraries.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_RegisterTypeLibraries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SetupGetStringFieldW failed\0A\00", align 1
@CSIDL_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"SHGetFolderPathW failed hret=0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"LoadLibraryW failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RegisterTypeLibraries(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @SetupFindFirstLine(i32 %23, i32 %24, i32* null, i32* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %68

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %63, %30
  %32 = call i32 @ARRAYSIZE(i32* %19)
  %33 = call i32 @SetupGetStringFieldW(i32* %6, i32 1, i32* %19, i32 %32, i32* null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %63

37:                                               ; preds = %31
  %38 = call i32 @SetupGetIntField(i32* %6, i32 2, i32* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @CSIDL_SYSTEM, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @SHGetFolderPathW(i32* null, i32 %43, i32* null, i32 0, i32* %22)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %14, align 4
  %50 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %63

51:                                               ; preds = %42
  %52 = call i32 @PathAddBackslash(i32* %22)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @wcscpy(i32 %53, i32* %19)
  %55 = call i32* @LoadLibraryW(i32* %19)
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %63

60:                                               ; preds = %51
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @__wine_register_resources(i32* %61)
  br label %63

63:                                               ; preds = %60, %58, %48, %35
  %64 = call i64 @SetupFindNextLine(i32* %6, i32* %6)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %31, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %68

68:                                               ; preds = %66, %28
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetupFindFirstLine(i32, i32, i32*, i32*) #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @FatalError(i8*, ...) #2

declare dso_local i32 @SetupGetIntField(i32*, i32, i32*) #2

declare dso_local i32 @SHGetFolderPathW(i32*, i32, i32*, i32, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @PathAddBackslash(i32*) #2

declare dso_local i32 @wcscpy(i32, i32*) #2

declare dso_local i32* @LoadLibraryW(i32*) #2

declare dso_local i32 @__wine_register_resources(i32*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
