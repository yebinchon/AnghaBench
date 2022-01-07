; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_create_test_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_create_test_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@create_test_entries.qw = internal constant [2 x i32] [i32 305419896, i32 -2023406815], align 4
@.str = private unnamed_addr constant [14 x i8] c"LONGSYSTEMVAR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ImARatherLongButIndeedNeededString\00", align 1
@hkey_main = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"TP1_EXP_SZ\00", align 1
@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@sTestpath1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"RegSetValueExA failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"TP1_SZ\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"TP1_ZB_SZ\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"TP2_EXP_SZ\00", align 1
@sTestpath2 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"DWORD\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"BIN32\00", align 1
@REG_BINARY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"BIN64\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_test_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_test_entries() #0 {
  %1 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %3 = load i32, i32* @hkey_main, align 4
  %4 = load i32, i32* @REG_EXPAND_SZ, align 4
  %5 = load i64, i64* @sTestpath1, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = load i64, i64* @sTestpath1, align 8
  %8 = call i32 @strlen(i64 %7)
  %9 = add nsw i32 %8, 1
  %10 = call i32 @RegSetValueExA(i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %4, i32* %6, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32, i32* @hkey_main, align 4
  %16 = load i32, i32* @REG_SZ, align 4
  %17 = load i64, i64* @sTestpath1, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i64, i64* @sTestpath1, align 8
  %20 = call i32 @strlen(i64 %19)
  %21 = add nsw i32 %20, 1
  %22 = call i32 @RegSetValueExA(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %16, i32* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* @hkey_main, align 4
  %28 = load i32, i32* @REG_SZ, align 4
  %29 = call i32 @RegSetValueExA(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %28, i32* bitcast ([1 x i8]* @.str.8 to i32*), i32 0)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32, i32* @hkey_main, align 4
  %35 = load i32, i32* @REG_EXPAND_SZ, align 4
  %36 = load i64, i64* @sTestpath2, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i64, i64* @sTestpath2, align 8
  %39 = call i32 @strlen(i64 %38)
  %40 = add nsw i32 %39, 1
  %41 = call i32 @RegSetValueExA(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 %35, i32* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @hkey_main, align 4
  %47 = load i32, i32* @REG_DWORD, align 4
  %48 = call i32 @RegSetValueExA(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 %47, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @create_test_entries.qw, i64 0, i64 0), i32 4)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* @hkey_main, align 4
  %54 = load i32, i32* @REG_BINARY, align 4
  %55 = call i32 @RegSetValueExA(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 %54, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @create_test_entries.qw, i64 0, i64 0), i32 4)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @hkey_main, align 4
  %61 = load i32, i32* @REG_BINARY, align 4
  %62 = call i32 @RegSetValueExA(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 %61, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @create_test_entries.qw, i64 0, i64 0), i32 8)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SetEnvironmentVariableA(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
