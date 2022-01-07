; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_GetComputerNameEx.c_ReadRegistryValue.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_GetComputerNameEx.c_ReadRegistryValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"System\\CurrentControlSet\\Services\\Tcpip\\Parameters\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @ReadRegistryValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadRegistryValue(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %10 = load i32, i32* @KEY_READ, align 4
  %11 = call i64 @RegOpenKeyExA(i32 %9, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 0, i32 %10, i32* %6)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @NO_ERROR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @RegQueryValueExA(i32 %16, i64 %17, i32* null, i64* %7, i32* null, i64* %8)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i64 @RegQueryValueExA(i32 %22, i64 %23, i32* null, i64* %7, i32* %25, i64* %8)
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @RegCloseKey(i32 %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExA(i32, i64, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
