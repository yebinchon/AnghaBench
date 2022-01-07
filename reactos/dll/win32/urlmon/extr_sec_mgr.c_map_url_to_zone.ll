; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_map_url_to_zone.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_map_url_to_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URLZONE_INVALID = common dso_local global i32 0, align 4
@PSU_SECURITY_URL_ONLY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32*)* @map_url_to_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_url_to_zone(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @URLZONE_INVALID, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PSU_SECURITY_URL_ONLY, align 4
  %16 = call i64 @CoInternetGetSecurityUrl(i32 %14, i32* %9, i32 %15, i32 0)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @strlenW(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @CoTaskMemAlloc(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %31, i64* %4, align 8
  br label %68

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @memcpy(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %3
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, align 4
  %40 = call i64 @CreateUri(i32 %38, i32 %39, i32 0, i32** %8)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @FAILED(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @CoTaskMemFree(i32 %45)
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %4, align 8
  br label %68

48:                                               ; preds = %37
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @map_security_uri_to_zone(i32* %49, i32* %50)
  store i64 %51, i64* %10, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @IUri_Release(i32* %52)
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @FAILED(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @CoTaskMemFree(i32 %61)
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %66, %44, %30
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i64 @CoInternetGetSecurityUrl(i32, i32*, i32, i32) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @CoTaskMemAlloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @CreateUri(i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

declare dso_local i64 @map_security_uri_to_zone(i32*, i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
