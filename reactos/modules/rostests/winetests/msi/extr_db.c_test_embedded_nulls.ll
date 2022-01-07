; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_embedded_nulls.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_embedded_nulls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_embedded_nulls.control_table = internal constant [70 x i8] c"Dialog\09Text\0As72\09L0\0AControl\09Dialog\0ALicenseAgreementDlg\09text\11\19text\00text\00", align 16
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to open database %u\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@CURR_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"temp_file\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to import table %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"SELECT `Text` FROM `Control` WHERE `Dialog` = 'LicenseAgreementDlg'\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"query failed %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to get string %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"text\0D\0Atext\0Atext\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"wrong buffer contents \22%s\22\0A\00", align 1
@msifile = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_embedded_nulls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_embedded_nulls() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  %6 = load i32, i32* @msifileW, align 4
  %7 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %8 = call i64 @MsiOpenDatabaseW(i32 %6, i32 %7, i32* %3)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %1, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = load i32, i32* @CURR_DIR, align 4
  %18 = call i32 @GetCurrentDirectoryA(i32 %16, i32 %17)
  %19 = call i32 @write_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @test_embedded_nulls.control_table, i64 0, i64 0), i32 70)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @CURR_DIR, align 4
  %22 = call i64 @MsiDatabaseImportA(i32 %20, i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = call i32 @DeleteFileA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @do_query(i32 %31, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %40, align 16
  store i64 32, i64* %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %43 = call i64 @MsiRecordGetStringA(i32 %41, i32 1, i8* %42, i64* %2)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %1, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %52 = call i32 @memcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %51, i32 15)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @MsiCloseHandle(i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @MsiCloseHandle(i32 %60)
  %62 = load i8*, i8** @msifile, align 8
  %63 = call i32 @DeleteFileA(i8* %62)
  ret void
}

declare dso_local i64 @MsiOpenDatabaseW(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i32 @GetCurrentDirectoryA(i32, i32) #1

declare dso_local i32 @write_file(i8*, i8*, i32) #1

declare dso_local i64 @MsiDatabaseImportA(i32, i32, i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i64 @do_query(i32, i8*, i32*) #1

declare dso_local i64 @MsiRecordGetStringA(i32, i32, i8*, i64*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
