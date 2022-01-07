; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_create_package_db.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_create_package_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msifile = common dso_local global i32 0, align 4
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to create database %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to commit database\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Expected ERROR_SUCCESS got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [146 x i8] c"CREATE TABLE `Directory` ( `Directory` CHAR(255) NOT NULL, `Directory_Parent` CHAR(255), `DefaultDir` CHAR(255) NOT NULL PRIMARY KEY `Directory`)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to create directory table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_package_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_package_db() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @msifile, align 4
  %5 = call i32 @DeleteFileA(i32 %4)
  %6 = load i32, i32* @msifileW, align 4
  %7 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %8 = call i64 @MsiOpenDatabaseW(i32 %6, i32 %7, i32* %2)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %44

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @MsiDatabaseCommit(i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @set_summary_info(i32 %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %3, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @run_query(i32 %36, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.3, i64 0, i64 0))
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %20, %18
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @MsiOpenDatabaseW(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @MsiDatabaseCommit(i32) #1

declare dso_local i64 @set_summary_info(i32) #1

declare dso_local i64 @run_query(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
