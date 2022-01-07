; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_mapi32_test.h_HaveDefaultMailClient.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_mapi32_test.h_HaveDefaultMailClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SOFTWARE\\Clients\\Mail\00", align 1
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @HaveDefaultMailClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HaveDefaultMailClient() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  %7 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %8 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %9 = call i64 @RegOpenKeyExA(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 0, i32 %8, i32* %2)
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %0
  store i32 256, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %15 = call i64 @RegQueryValueExA(i32 %13, i32* null, i32* null, i32* %3, i32* %14, i32* %4)
  %16 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @RegCloseKey(i32 %19)
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %1, align 4
  br label %53

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @RegCloseKey(i32 %23)
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %6, align 4
  br label %28

26:                                               ; preds = %0
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %30 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %31 = call i64 @RegOpenKeyExA(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 0, i32 %30, i32* %2)
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  store i32 256, i32* %4, align 4
  %35 = load i32, i32* %2, align 4
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %37 = call i64 @RegQueryValueExA(i32 %35, i32* null, i32* null, i32* %3, i32* %36, i32* %4)
  %38 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @RegCloseKey(i32 %41)
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %1, align 4
  br label %53

44:                                               ; preds = %34
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @RegCloseKey(i32 %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %1, align 4
  br label %53

48:                                               ; preds = %28
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %48, %44, %40, %18
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExA(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
