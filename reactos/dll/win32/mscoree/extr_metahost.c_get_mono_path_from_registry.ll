; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_metahost.c_get_mono_path_from_registry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_metahost.c_get_mono_path_from_registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_mono_path_from_registry.mono_key = internal constant [21 x i8] c"Software\\Novell\\Mono\00", align 16
@get_mono_path_from_registry.defaul_clr = internal constant [11 x i8] c"DefaultCLR\00", align 1
@get_mono_path_from_registry.install_root = internal constant [15 x i8] c"SdkInstallRoot\00", align 1
@get_mono_path_from_registry.slash = internal constant [2 x i8] c"\\\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @get_mono_path_from_registry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mono_path_from_registry(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %20 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %21 = load i32, i32* @KEY_READ, align 4
  %22 = call i64 @RegOpenKeyExW(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @get_mono_path_from_registry.mono_key, i64 0, i64 0), i32 0, i32 %21, i32* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

26:                                               ; preds = %2
  store i32 64, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %29 = ptrtoint i8* %28 to i32
  %30 = call i64 @RegQueryValueExW(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @get_mono_path_from_registry.defaul_clr, i64 0, i64 0), i32 0, i32* null, i32 %29, i32* %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @RegCloseKey(i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @RegCloseKey(i32 %37)
  %39 = call i32 @lstrcpyW(i8* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @get_mono_path_from_registry.mono_key, i64 0, i64 0))
  %40 = call i32 @lstrcatW(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @get_mono_path_from_registry.slash, i64 0, i64 0))
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %42 = call i32 @lstrcatW(i8* %16, i8* %41)
  %43 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %44 = load i32, i32* @KEY_READ, align 4
  %45 = call i64 @RegOpenKeyExW(i32 %43, i8* %16, i32 0, i32 %44, i32* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

49:                                               ; preds = %36
  %50 = load i32, i32* @MAX_PATH, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 1, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i64, i64* %4, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @RegQueryValueExW(i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_mono_path_from_registry.install_root, i64 0, i64 0), i32 0, i32* null, i32 %56, i32* %9)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @RegCloseKey(i32 %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

63:                                               ; preds = %49
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @RegCloseKey(i32 %64)
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @find_mono_dll(i64 %66, i8* %19, i32 %67)
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %63, %59, %47, %32, %24
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32, i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @find_mono_dll(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
