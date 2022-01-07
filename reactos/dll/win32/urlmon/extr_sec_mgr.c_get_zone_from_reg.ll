; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_get_zone_from_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_get_zone_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_zone_from_reg.wszZoneMapProtocolKey = internal constant [85 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\ZoneMap\\ProtocolDefaults\00", align 16
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Could not open key %s\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @get_zone_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_zone_from_reg(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %10 = call i64 @RegOpenKeyW(i32 %9, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @get_zone_from_reg.wszZoneMapProtocolKey, i64 0, i64 0), i32* %8)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @debugstr_w(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @get_zone_from_reg.wszZoneMapProtocolKey, i64 0, i64 0))
  %16 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  store i64 8, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i64*, i64** %5, align 8
  %22 = ptrtoint i64* %21 to i32
  %23 = call i64 @RegQueryValueExW(i32 %19, i32 %20, i32* null, i32* null, i32 %22, i64* %7)
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @RegCloseKey(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @S_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %18
  %32 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %33 = call i64 @RegOpenKeyW(i32 %32, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @get_zone_from_reg.wszZoneMapProtocolKey, i64 0, i64 0), i32* %8)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @debugstr_w(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @get_zone_from_reg.wszZoneMapProtocolKey, i64 0, i64 0))
  %39 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %31
  store i64 8, i64* %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i64*, i64** %5, align 8
  %45 = ptrtoint i64* %44 to i32
  %46 = call i64 @RegQueryValueExW(i32 %42, i32 %43, i32* null, i32* null, i32 %45, i64* %7)
  store i64 %46, i64* %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @RegCloseKey(i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @S_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %41
  %55 = load i64*, i64** %5, align 8
  store i64 3, i64* %55, align 8
  %56 = load i32, i32* @S_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %52, %37, %29, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @RegOpenKeyW(i32, i8*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i32*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
