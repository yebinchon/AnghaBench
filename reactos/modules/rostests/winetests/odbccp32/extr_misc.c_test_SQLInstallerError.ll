; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLInstallerError.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLInstallerError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"SQLInstallerError(0...) failed with %d instead of SQL_ERROR\0A\00", align 1
@SQL_NO_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"SQLInstallerError(>8...) failed with %d instead of SQL_NO_DATA\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to force an error for testing\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Too many errors when forcing an error for testing\0A\00", align 1
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [83 x i8] c"SQLInstallerError(null addresses) failed with %d instead of SQL_SUCCESS_WITH_INFO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLInstallerError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLInstallerError() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @SQLInstallerError(i32 0, i32* null, i32* null, i32 0, i32* null)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @SQL_ERROR, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = load i64, i64* %1, align 8
  %8 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = call i64 @SQLInstallerError(i32 65535, i32* null, i32* null, i32 0, i32* null)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @SQL_NO_DATA, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %1, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = call i32 @SQLGetInstalledDrivers(i32 0, i32 0, i32 0)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i64 @SQLInstallerError(i32 2, i32* null, i32* null, i32 0, i32* null)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @SQL_NO_DATA, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i64 @SQLInstallerError(i32 1, i32* null, i32* null, i32 0, i32* null)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %1, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i64 %32)
  ret void
}

declare dso_local i64 @SQLInstallerError(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SQLGetInstalledDrivers(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
