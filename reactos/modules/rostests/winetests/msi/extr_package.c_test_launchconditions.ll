; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_launchconditions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_launchconditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSTALLUILEVEL_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to create package database\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"'X = \221\22', 'one'\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"'X != \221\22', 'one'\00", align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create package %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to set property\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"LaunchConditions\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"cost init failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@ERROR_INSTALL_FAILURE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [40 x i8] c"Expected ERROR_INSTALL_FAILURE, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_launchconditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_launchconditions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @INSTALLUILEVEL_NONE, align 4
  %5 = call i32 @MsiSetInternalUI(i32 %4, i32* null)
  %6 = call i32 (...) @create_package_db()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @create_launchcondition_table(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @add_launchcondition_entry(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @add_launchcondition_entry(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @package_from_db(i32 %15, i32* %1)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @ERROR_INSTALL_PACKAGE_REJECTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32, i32* @msifile, align 4
  %23 = call i32 @DeleteFileA(i32 %22)
  br label %68

24:                                               ; preds = %0
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %3, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @MsiCloseHandle(i32 %31)
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @MsiSetPropertyA(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i32, i32* @INSTALLUILEVEL_NONE, align 4
  %41 = call i32 @MsiSetInternalUI(i32 %40, i32* null)
  %42 = load i32, i32* %1, align 4
  %43 = call i64 @MsiDoActionA(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %49 = load i32, i32* %1, align 4
  %50 = call i64 @MsiSetPropertyA(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32, i32* %1, align 4
  %57 = call i64 @MsiDoActionA(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @ERROR_INSTALL_FAILURE, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %3, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @MsiCloseHandle(i32 %64)
  %66 = load i32, i32* @msifile, align 4
  %67 = call i32 @DeleteFileA(i32 %66)
  br label %68

68:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @MsiSetInternalUI(i32, i32*) #1

declare dso_local i32 @create_package_db(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @create_launchcondition_table(i32) #1

declare dso_local i32 @add_launchcondition_entry(i32, i8*) #1

declare dso_local i64 @package_from_db(i32, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i64 @MsiSetPropertyA(i32, i8*, i8*) #1

declare dso_local i64 @MsiDoActionA(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
