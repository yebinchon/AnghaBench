; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_validate_package.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_validate_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i32* }

@PLATFORM_INTEL64 = common dso_local global i64 0, align 8
@ERROR_INSTALL_PLATFORM_UNSUPPORTED = common dso_local global i64 0, align 8
@PLATFORM_ARM = common dso_local global i64 0, align 8
@PLATFORM_X64 = common dso_local global i64 0, align 8
@is_64bit = common dso_local global i32 0, align 4
@is_wow64 = common dso_local global i32 0, align 4
@ERROR_INSTALL_PACKAGE_INVALID = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@LANG_NEUTRAL = common dso_local global i64 0, align 8
@SUBLANG_NEUTRAL = common dso_local global i64 0, align 8
@LCID_INSTALLED = common dso_local global i32 0, align 4
@ERROR_INSTALL_LANGUAGE_UNSUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @validate_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @validate_package(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PLATFORM_INTEL64, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @ERROR_INSTALL_PLATFORM_UNSUPPORTED, align 8
  store i64 %12, i64* %2, align 8
  br label %98

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PLATFORM_ARM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* @ERROR_INSTALL_PLATFORM_UNSUPPORTED, align 8
  store i64 %20, i64* %2, align 8
  br label %98

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PLATFORM_X64, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load i32, i32* @is_64bit, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @is_wow64, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @ERROR_INSTALL_PLATFORM_UNSUPPORTED, align 8
  store i64 %34, i64* %2, align 8
  br label %98

35:                                               ; preds = %30, %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 200
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @ERROR_INSTALL_PACKAGE_INVALID, align 8
  store i64 %41, i64* %2, align 8
  br label %98

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %49, i64* %2, align 8
  br label %98

50:                                               ; preds = %43
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %93, %50
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @PRIMARYLANGID(i32 %64)
  %66 = load i64, i64* @LANG_NEUTRAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = call i32 (...) @GetSystemDefaultLangID()
  %70 = call i64 @PRIMARYLANGID(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @SUBLANGID(i32 %71)
  %73 = call i32 @MAKELANGID(i64 %70, i64 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %57
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @SUBLANGID(i32 %75)
  %77 = load i64, i64* @SUBLANG_NEUTRAL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @PRIMARYLANGID(i32 %80)
  %82 = call i32 (...) @GetSystemDefaultLangID()
  %83 = call i64 @SUBLANGID(i32 %82)
  %84 = call i32 @MAKELANGID(i64 %81, i64 %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @LCID_INSTALLED, align 4
  %88 = call i64 @IsValidLocale(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %91, i64* %2, align 8
  br label %98

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %4, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %4, align 8
  br label %51

96:                                               ; preds = %51
  %97 = load i64, i64* @ERROR_INSTALL_LANGUAGE_UNSUPPORTED, align 8
  store i64 %97, i64* %2, align 8
  br label %98

98:                                               ; preds = %96, %90, %48, %40, %33, %19, %11
  %99 = load i64, i64* %2, align 8
  ret i64 %99
}

declare dso_local i64 @PRIMARYLANGID(i32) #1

declare dso_local i32 @MAKELANGID(i64, i64) #1

declare dso_local i32 @GetSystemDefaultLangID(...) #1

declare dso_local i64 @SUBLANGID(i32) #1

declare dso_local i64 @IsValidLocale(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
