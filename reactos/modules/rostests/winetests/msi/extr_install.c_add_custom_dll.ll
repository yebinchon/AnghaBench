; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_add_custom_dll.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_add_custom_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_TRANSACT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed to open db: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"CREATE TABLE `Binary` (`Name` CHAR(72) NOT NULL, `Data` OBJECT NOT NULL PRIMARY KEY `Name`)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to create Binary table: %u\0A\00", align 1
@customdll = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to add %s to stream: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"INSERT INTO `Binary` (`Name`, `Data`) VALUES ('custom.dll', ?)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to insert into Binary table: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to commit database: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_custom_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_custom_dll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @msifileW, align 4
  %5 = load i32, i32* @MSIDBOPEN_TRANSACT, align 4
  %6 = call i64 @MsiOpenDatabaseW(i32 %4, i32 %5, i32* %1)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ERROR_SUCCESS, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %3, align 8
  %12 = call i32 (i32, i8*, i64, ...) @ok(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @run_query(i32 %13, i32 0, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0))
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %19)
  %21 = call i32 @MsiCreateRecord(i32 1)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @customdll, align 4
  %24 = call i64 @MsiRecordSetStreamA(i32 %22, i32 1, i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @customdll, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %3, align 8
  %32 = call i32 (i32, i8*, i64, ...) @ok(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %30, i64 %31)
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @run_query(i32 %33, i32 %34, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %3, align 8
  %41 = call i32 (i32, i8*, i64, ...) @ok(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %1, align 4
  %43 = call i64 @MsiDatabaseCommit(i32 %42)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %3, align 8
  %49 = call i32 (i32, i8*, i64, ...) @ok(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @MsiCloseHandle(i32 %50)
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @MsiCloseHandle(i32 %52)
  ret void
}

declare dso_local i64 @MsiOpenDatabaseW(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @run_query(i32, i32, i8*) #1

declare dso_local i32 @MsiCreateRecord(i32) #1

declare dso_local i64 @MsiRecordSetStreamA(i32, i32, i32) #1

declare dso_local i64 @MsiDatabaseCommit(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
