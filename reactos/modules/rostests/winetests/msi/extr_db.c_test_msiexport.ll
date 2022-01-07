; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_msiexport.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_msiexport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@__const.test_msiexport.file = private unnamed_addr constant [10 x i8] c"phone.txt\00", align 1
@__const.test_msiexport.expected = private unnamed_addr constant [54 x i8] c"id\09name\09number\0D\0AI2\09S32\09S32\0D\0Aphone\09id\0D\0A1\09Abe\098675309\0D\0A\00", align 16
@msifileW = common dso_local global i32 0, align 4
@MSIDBOPEN_CREATE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"MsiOpenDatabase failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"CREATE TABLE `phone` ( `id` INT, `name` CHAR(32), `number` CHAR(32) PRIMARY KEY `id`)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"MsiDatabaseOpenView failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MsiViewExecute failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MsiViewClose failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MsiCloseHandle failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"INSERT INTO `phone` ( `id`, `name`, `number` )VALUES('1', 'Abe', '8675309')\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"phone\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"MsiDatabaseExport failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"failed to open file %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"length of data wrong\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"data doesn't match\0A\00", align 1
@msifile = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_msiexport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_msiexport() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca [54 x i8], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_msiexport.file, i32 0, i32 0), i64 10, i1 false)
  %17 = bitcast [54 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([54 x i8], [54 x i8]* @__const.test_msiexport.expected, i32 0, i32 0), i64 54, i1 false)
  %18 = load i32, i32* @msifileW, align 4
  %19 = call i32 @DeleteFileW(i32 %18)
  %20 = load i32, i32* @msifileW, align 4
  %21 = load i32, i32* @MSIDBOPEN_CREATE, align 4
  %22 = call i64 @MsiOpenDatabaseW(i32 %20, i32 %21, i32* %1)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %28 = load i32, i32* %1, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @MsiDatabaseOpenViewA(i32 %28, i8* %29, i32* %2)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @MsiViewExecute(i32 %36, i32 0)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @MsiViewClose(i32 %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @MsiCloseHandle(i32 %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %57 = load i32, i32* %1, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @MsiDatabaseOpenViewA(i32 %57, i8* %58, i32* %2)
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %2, align 4
  %66 = call i64 @MsiViewExecute(i32 %65, i32 0)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %2, align 4
  %73 = call i64 @MsiViewClose(i32 %72)
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* @ERROR_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %2, align 4
  %80 = call i64 @MsiCloseHandle(i32 %79)
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* @MAX_PATH, align 4
  %87 = call i32 @GetCurrentDirectoryA(i32 %86, i8* %15)
  %88 = load i32, i32* %1, align 4
  %89 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %90 = call i64 @MsiDatabaseExportA(i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %15, i8* %89)
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %96 = load i32, i32* %1, align 4
  %97 = call i64 @MsiCloseHandle(i32 %96)
  %98 = call i32 @lstrcatA(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %100 = call i32 @lstrcatA(i8* %15, i8* %99)
  store i64 0, i64* %10, align 8
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %102 = call i32 @memset(i8* %101, i32 0, i32 256)
  %103 = load i32, i32* @GENERIC_READ, align 4
  %104 = load i32, i32* @OPEN_EXISTING, align 4
  %105 = call i64 @CreateFileA(i8* %15, i32 %103, i32 0, i32* null, i32 %104, i32 0, i32* null)
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %0
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %112 = call i32 @ReadFile(i64 %110, i8* %111, i32 256, i64* %10, i32* null)
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @CloseHandle(i64 %113)
  %115 = call i32 @DeleteFileA(i8* %15)
  br label %118

116:                                              ; preds = %0
  %117 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %15)
  br label %118

118:                                              ; preds = %116, %109
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds [54 x i8], [54 x i8]* %11, i64 0, i64 0
  %121 = call i64 @strlen(i8* %120)
  %122 = icmp eq i64 %119, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %126 = getelementptr inbounds [54 x i8], [54 x i8]* %11, i64 0, i64 0
  %127 = call i32 @lstrcmpA(i8* %125, i8* %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %132 = load i8*, i8** @msifile, align 8
  %133 = call i32 @DeleteFileA(i8* %132)
  %134 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %134)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DeleteFileW(i32) #3

declare dso_local i64 @MsiOpenDatabaseW(i32, i32, i32*) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i64 @MsiDatabaseOpenViewA(i32, i8*, i32*) #3

declare dso_local i64 @MsiViewExecute(i32, i32) #3

declare dso_local i64 @MsiViewClose(i32) #3

declare dso_local i64 @MsiCloseHandle(i32) #3

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #3

declare dso_local i64 @MsiDatabaseExportA(i32, i8*, i8*, i8*) #3

declare dso_local i32 @lstrcatA(i8*, i8*) #3

declare dso_local i32 @memset(i8*, i32, i32) #3

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i32 @ReadFile(i64, i8*, i32, i64*, i32*) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @DeleteFileA(i8*) #3

declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @lstrcmpA(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
