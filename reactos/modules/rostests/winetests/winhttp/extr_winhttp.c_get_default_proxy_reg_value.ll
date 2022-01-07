; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_get_default_proxy_reg_value.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winhttp/extr_winhttp.c_get_default_proxy_reg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@Connections = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@WinHttpSettings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64*)* @get_default_proxy_reg_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_default_proxy_reg_value(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %12 = load i32, i32* @Connections, align 4
  %13 = load i32, i32* @KEY_READ, align 4
  %14 = call i32 @RegOpenKeyExW(i32 %11, i32 %12, i32 0, i32 %13, i32* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @WinHttpSettings, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = call i32 @RegQueryValueExW(i32 %18, i32 %19, i32* null, i64* %20, i32* null, i64* %10)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @WinHttpSettings, align 4
  %31 = load i64*, i64** %6, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @RegQueryValueExW(i32 %29, i32 %30, i32* null, i64* %31, i32* %32, i64* %10)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @RegCloseKey(i32 %41)
  br label %43

43:                                               ; preds = %40, %3
  %44 = load i64, i64* %9, align 8
  ret i64 %44
}

declare dso_local i32 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @RegQueryValueExW(i32, i32, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
