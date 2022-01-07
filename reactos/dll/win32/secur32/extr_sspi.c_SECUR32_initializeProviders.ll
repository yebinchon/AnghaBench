; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/secur32/extr_sspi.c_SECUR32_initializeProviders.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/secur32/extr_sspi.c_SECUR32_initializeProviders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@securityProvidersKeyW = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@securityProvidersW = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SECUR32_initializeProviders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SECUR32_initializeProviders() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %10 = load i32, i32* @securityProvidersKeyW, align 4
  %11 = load i32, i32* @KEY_READ, align 4
  %12 = call i64 @RegOpenKeyExW(i32 %9, i32 %10, i32 0, i32 %11, i32* %1)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %105

16:                                               ; preds = %0
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %3, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %4, align 8
  store i64 %18, i64* %5, align 8
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @securityProvidersW, align 4
  %23 = ptrtoint i8* %20 to i32
  %24 = call i64 @RegQueryValueExW(i32 %21, i32 %22, i32* null, i64* %6, i32 %23, i64* %5)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %101

28:                                               ; preds = %16
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @REG_SZ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = udiv i64 %33, 1
  store i64 %34, i64* %5, align 8
  store i8* %20, i8** %7, align 8
  br label %35

35:                                               ; preds = %94, %32
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i8, i8* %20, i64 %37
  %39 = icmp ult i8* %36, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %55, %40
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 44
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %42

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 44
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %58
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @isspace(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i8, i8* %20, i64 %78
  %80 = icmp ult i8* %77, %79
  br label %81

81:                                               ; preds = %76, %71, %66
  %82 = phi i1 [ false, %71 ], [ false, %66 ], [ %80, %76 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %7, align 8
  br label %66

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @_tryLoadProvider(i8* %92)
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @lstrlenW(i8* %95)
  %97 = add nsw i64 %96, 1
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %7, align 8
  br label %35

100:                                              ; preds = %35
  br label %101

101:                                              ; preds = %100, %28, %16
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @RegCloseKey(i32 %102)
  %104 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %104)
  br label %105

105:                                              ; preds = %101, %0
  ret void
}

declare dso_local i64 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i64*, i32, i64*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @_tryLoadProvider(i8*) #1

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
