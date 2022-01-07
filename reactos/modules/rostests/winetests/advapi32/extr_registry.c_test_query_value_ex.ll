; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_query_value_ex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_query_value_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkey_main = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"TP1_SZ\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %d\0A\00", align 1
@sTestpath1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"(%d,%d)\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"type %d is not REG_SZ\0A\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Nonexistent Value\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"size should have been set to 0 instead of %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"size shouldn't have been changed to %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"BIN32\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_value_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_value_ex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  store i32 40, i32* %2, align 4
  %5 = load i32, i32* @hkey_main, align 4
  %6 = call i32 @RegQueryValueExA(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32* %3, i32* null, i32* %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @ERROR_SUCCESS, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, i32, ...) @ok(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @sTestpath1, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = add nsw i32 %15, 1
  %17 = icmp eq i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @sTestpath1, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i32, i8*, i32, ...) @ok(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @REG_SZ, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, i32, ...) @ok(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %2, align 4
  %30 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %31 = call i32 @RegQueryValueExA(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* %3, i32* null, i32* %2)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %1, align 4
  %37 = call i32 (i32, i8*, i32, ...) @ok(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %2, align 4
  %42 = call i32 (i32, i8*, i32, ...) @ok(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  store i32 40, i32* %2, align 4
  %43 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %45 = call i32 @RegQueryValueExA(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* %3, i32* %44, i32* %2)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %1, align 4
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %53, 40
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %2, align 4
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %56)
  store i32 4, i32* %2, align 4
  %58 = load i32, i32* @hkey_main, align 4
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %60 = call i32 @RegQueryValueExA(i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* null, i32* %2, i32* %59, i32* %2)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @ERROR_SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %1, align 4
  %66 = call i32 (i32, i8*, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
