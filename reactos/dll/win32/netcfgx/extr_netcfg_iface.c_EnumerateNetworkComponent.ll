; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_netcfg_iface.c_EnumerateNetworkComponent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_netcfg_iface.c_EnumerateNetworkComponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 92, i32 78, i32 101, i32 116, i32 119, i32 111, i32 114, i32 107, i32 92, i32 37, i32 115, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EnumerateNetworkComponent(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [150 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @StringFromCLSID(i32* %9, i8** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @SUCCEEDED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = getelementptr inbounds [150 x i32], [150 x i32]* %8, i64 0, i64 0
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @swprintf(i32* %15, i8* bitcast ([44 x i32]* @.str to i8*), i8* %16)
  %18 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %19 = getelementptr inbounds [150 x i32], [150 x i32]* %8, i64 0, i64 0
  %20 = load i32, i32* @KEY_READ, align 4
  %21 = call i64 @RegOpenKeyExW(i32 %18, i32* %19, i32 0, i32 %20, i32* %5)
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32**, i32*** %4, align 8
  %28 = call i32 @EnumClientServiceProtocol(i32 %25, i32* %26, i32** %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @RegCloseKey(i32 %29)
  br label %31

31:                                               ; preds = %24, %14
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @CoTaskMemFree(i8* %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @StringFromCLSID(i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @swprintf(i32*, i8*, i8*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @EnumClientServiceProtocol(i32, i32*, i32**) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @CoTaskMemFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
