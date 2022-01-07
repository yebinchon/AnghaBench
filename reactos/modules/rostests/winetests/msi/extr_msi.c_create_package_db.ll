; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_create_package_db.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_create_package_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@msifile = common dso_local global i32 0, align 4
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to create database\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to commit database\0A\00", align 1
@.str.2 = private unnamed_addr constant [146 x i8] c"CREATE TABLE `Directory` ( `Directory` CHAR(255) NOT NULL, `Directory_Parent` CHAR(255), `DefaultDir` CHAR(255) NOT NULL PRIMARY KEY `Directory`)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to create directory table\0A\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"CREATE TABLE `Property` ( `Property` CHAR(72) NOT NULL, `Value` CHAR(255) PRIMARY KEY `Property`)\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"INSERT INTO `Property` (`Property`, `Value`) VALUES( 'ProductCode', '%s' )\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @create_package_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_package_db(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @msifile, align 4
  %14 = call i32 @DeleteFileA(i32 %13)
  %15 = load i32, i32* @msifileW, align 4
  %16 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %17 = call i64 @MsiOpenDatabaseW(i32 %15, i32 %16, i32* %4)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %70

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @MsiDatabaseCommit(i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @set_summary_info(i32 %36, i8* %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @run_query(i32 %39, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.2, i64 0, i64 0))
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @run_query(i32 %46, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0))
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @run_query(i32 %55, i8* %12)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @MsiDatabaseCommit(i32 %62)
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @ERROR_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %28, %26
  %71 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DeleteFileA(i32) #2

declare dso_local i64 @MsiOpenDatabaseW(i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i64 @MsiDatabaseCommit(i32) #2

declare dso_local i32 @set_summary_info(i32, i8*) #2

declare dso_local i64 @run_query(i32, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
