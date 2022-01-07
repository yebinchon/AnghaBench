; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dirid.c_create_system_dirid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dirid.c_create_system_dirid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@create_system_dirid.Null = internal constant [1 x i8] zeroinitializer, align 1
@create_system_dirid.C_Root = internal constant [4 x i8] c"C:\\\00", align 1
@create_system_dirid.Drivers = internal constant [9 x i8] c"\\drivers\00", align 1
@create_system_dirid.Inf = internal constant [5 x i8] c"\\inf\00", align 1
@create_system_dirid.Help = internal constant [6 x i8] c"\\help\00", align 1
@create_system_dirid.Fonts = internal constant [7 x i8] c"\\fonts\00", align 1
@create_system_dirid.Viewers = internal constant [9 x i8] c"\\viewers\00", align 1
@create_system_dirid.System = internal constant [8 x i8] c"\\system\00", align 1
@create_system_dirid.Spool = internal constant [7 x i8] c"\\spool\00", align 1
@create_system_dirid.UserProfile = internal constant [12 x i8] c"USERPROFILE\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@CSIDL_PROFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cannot retrieve print processor directory\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown dirid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @create_system_dirid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_system_dirid(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = add nsw i32 %10, 32
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %75 [
    i32 137, label %16
    i32 128, label %17
    i32 132, label %20
    i32 142, label %23
    i32 139, label %27
    i32 140, label %31
    i32 141, label %35
    i32 129, label %39
    i32 145, label %43
    i32 135, label %44
    i32 144, label %47
    i32 131, label %48
    i32 134, label %52
    i32 133, label %52
    i32 130, label %56
    i32 138, label %64
    i32 136, label %65
    i32 143, label %74
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @create_system_dirid.Null, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %18)
  br label %79

20:                                               ; preds = %1
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = call i32 @GetSystemDirectoryW(i8* %14, i32 %21)
  br label %79

23:                                               ; preds = %1
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = call i32 @GetSystemDirectoryW(i8* %14, i32 %24)
  %26 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @create_system_dirid.Drivers, i64 0, i64 0))
  br label %79

27:                                               ; preds = %1
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %28)
  %30 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @create_system_dirid.Inf, i64 0, i64 0))
  br label %79

31:                                               ; preds = %1
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %32)
  %34 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @create_system_dirid.Help, i64 0, i64 0))
  br label %79

35:                                               ; preds = %1
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %36)
  %38 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @create_system_dirid.Fonts, i64 0, i64 0))
  br label %79

39:                                               ; preds = %1
  %40 = load i32, i32* @MAX_PATH, align 4
  %41 = call i32 @GetSystemDirectoryW(i8* %14, i32 %40)
  %42 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @create_system_dirid.Viewers, i64 0, i64 0))
  br label %79

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @create_system_dirid.C_Root, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %95

44:                                               ; preds = %1
  %45 = load i32, i32* @MAX_PATH, align 4
  %46 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %45)
  br label %79

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @create_system_dirid.C_Root, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %95

48:                                               ; preds = %1
  %49 = load i32, i32* @MAX_PATH, align 4
  %50 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %49)
  %51 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @create_system_dirid.System, i64 0, i64 0))
  br label %79

52:                                               ; preds = %1, %1
  %53 = load i32, i32* @MAX_PATH, align 4
  %54 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %53)
  %55 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @create_system_dirid.Spool, i64 0, i64 0))
  br label %79

56:                                               ; preds = %1
  %57 = load i32, i32* @MAX_PATH, align 4
  %58 = call i32 @GetEnvironmentVariableW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @create_system_dirid.UserProfile, i64 0, i64 0), i8* %14, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %79

61:                                               ; preds = %56
  %62 = load i32, i32* @CSIDL_PROFILE, align 4
  %63 = call i8* @get_csidl_dir(i32 %62)
  store i8* %63, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %95

64:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @create_system_dirid.C_Root, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %95

65:                                               ; preds = %1
  %66 = ptrtoint i8* %14 to i32
  %67 = trunc i64 %12 to i32
  %68 = call i32 @GetPrintProcessorDirectoryW(i32* null, i32* null, i32 1, i32 %66, i32 %67, i32* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %72 = call i8* (...) @get_unknown_dirid()
  store i8* %72, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %95

73:                                               ; preds = %65
  br label %79

74:                                               ; preds = %1
  br label %75

75:                                               ; preds = %1, %74
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = call i8* (...) @get_unknown_dirid()
  store i8* %78, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %95

79:                                               ; preds = %73, %60, %52, %48, %44, %39, %35, %31, %27, %23, %20, %17
  %80 = call i32 @strlenW(i8* %14)
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 1
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = call i32 (...) @GetProcessHeap()
  %86 = load i32, i32* %7, align 4
  %87 = call i8* @HeapAlloc(i32 %85, i32 0, i32 %86)
  store i8* %87, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @memcpy(i8* %90, i8* %14, i32 %91)
  br label %93

93:                                               ; preds = %89, %79
  %94 = load i8*, i8** %6, align 8
  store i8* %94, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %75, %70, %64, %61, %47, %43, %16
  %96 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i8*, i8** %2, align 8
  ret i8* %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowsDirectoryW(i8*, i32) #2

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #2

declare dso_local i32 @strcatW(i8*, i8*) #2

declare dso_local i32 @GetEnvironmentVariableW(i8*, i8*, i32) #2

declare dso_local i8* @get_csidl_dir(i32) #2

declare dso_local i32 @GetPrintProcessorDirectoryW(i32*, i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i8* @get_unknown_dirid(...) #2

declare dso_local i32 @FIXME(i8*, i32) #2

declare dso_local i32 @strlenW(i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
