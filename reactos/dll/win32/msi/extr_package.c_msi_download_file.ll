; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_download_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_download_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to download %s to cache file\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_download_file(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GetUrlCacheEntryInfoW(i32 %10, %struct.TYPE_5__* null, i32* %7)
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_5__* @msi_alloc(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = call i32 @GetUrlCacheEntryInfoW(i32 %18, %struct.TYPE_5__* %19, i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = call i64 (...) @GetLastError()
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = call i32 @msi_free(%struct.TYPE_5__* %24)
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %3, align 8
  br label %51

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @lstrcpyW(i32 %28, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = call i32 @msi_free(%struct.TYPE_5__* %33)
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %35, i64* %3, align 8
  br label %51

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAX_PATH, align 4
  %40 = call i32 @URLDownloadToCacheFileW(i32* null, i32 %37, i32 %38, i32 %39, i32 0, i32* null)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @debugstr_w(i32 %45)
  %47 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %48, i64* %3, align 8
  br label %51

49:                                               ; preds = %36
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %49, %44, %27, %22
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i32 @GetUrlCacheEntryInfoW(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local %struct.TYPE_5__* @msi_alloc(i32) #1

declare dso_local i32 @msi_free(%struct.TYPE_5__*) #1

declare dso_local i32 @lstrcpyW(i32, i32) #1

declare dso_local i32 @URLDownloadToCacheFileW(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
