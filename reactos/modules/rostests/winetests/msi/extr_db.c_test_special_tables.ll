; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_special_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_special_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"MsiOpenDatabase failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"CREATE TABLE `_Properties` ( `foo` INT NOT NULL, `bar` INT LOCALIZABLE PRIMARY KEY `foo`)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to create table\0A\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"CREATE TABLE `_Storages` ( `foo` INT NOT NULL, `bar` INT LOCALIZABLE PRIMARY KEY `foo`)\00", align 1
@ERROR_BAD_QUERY_SYNTAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"created _Streams table\0A\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"CREATE TABLE `_Streams` ( `foo` INT NOT NULL, `bar` INT LOCALIZABLE PRIMARY KEY `foo`)\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"CREATE TABLE `_Tables` ( `foo` INT NOT NULL, `bar` INT LOCALIZABLE PRIMARY KEY `foo`)\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"created _Tables table\0A\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"CREATE TABLE `_Columns` ( `foo` INT NOT NULL, `bar` INT LOCALIZABLE PRIMARY KEY `foo`)\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"created _Columns table\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"MsiCloseHandle failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_special_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_special_tables() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @msifileW, align 4
  %5 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %6 = call i64 @MsiOpenDatabaseW(i32 %4, i32 %5, i32* %2)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ERROR_SUCCESS, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = call i64 @run_query(i32 %12, i32 0, i8* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @run_query(i32 %20, i32 0, i8* %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i8*, i8** %1, align 8
  %30 = call i64 @run_query(i32 %28, i32 0, i8* %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load i8*, i8** %1, align 8
  %38 = call i64 @run_query(i32 %36, i32 0, i8* %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load i8*, i8** %1, align 8
  %46 = call i64 @run_query(i32 %44, i32 0, i8* %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @ERROR_BAD_QUERY_SYNTAX, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %52 = load i32, i32* %2, align 4
  %53 = call i64 @MsiCloseHandle(i32 %52)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i64 @MsiOpenDatabaseW(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @run_query(i32, i32, i8*) #1

declare dso_local i64 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
