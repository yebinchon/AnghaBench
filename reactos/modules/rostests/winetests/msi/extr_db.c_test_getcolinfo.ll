; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_getcolinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_test_getcolinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"failed to create db\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"select * from _Tables\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to open query\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to execute query\0A\00", align 1
@MSICOLINFO_NAMES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get names\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to get string\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"_Tables has wrong column name\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to close record handle\0A\00", align 1
@MSICOLINFO_TYPES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"_Tables has wrong column type\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"wrong error code\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"returned a record\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"failed to close view\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"failed to close view handle\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"failed to close database\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getcolinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getcolinfo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %7 = call i64 (...) @create_db()
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %1, align 8
  %12 = call i64 @MsiDatabaseOpenViewA(i64 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* %2)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i64, i64* %2, align 8
  %19 = call i64 @MsiViewExecute(i64 %18, i32 0)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i32, i32* @MSICOLINFO_NAMES, align 4
  %27 = call i64 @MsiViewGetColumnInfo(i64 %25, i32 %26, i64* %3)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 32, i32* %5, align 4
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %35 = call i64 @MsiRecordGetStringA(i64 %33, i32 1, i8* %34, i32* %5)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @MsiCloseHandle(i64 %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  %54 = load i64, i64* %2, align 8
  %55 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %56 = call i64 @MsiViewGetColumnInfo(i64 %54, i32 %55, i64* %3)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 32, i32* %5, align 4
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %64 = call i64 @MsiRecordGetStringA(i64 %62, i32 1, i8* %63, i32* %5)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %76 = load i64, i64* %3, align 8
  %77 = call i64 @MsiCloseHandle(i64 %76)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @ERROR_SUCCESS, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  %83 = load i64, i64* %2, align 8
  %84 = call i64 @MsiViewGetColumnInfo(i64 %83, i32 100, i64* %3)
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %90 = load i64, i64* %3, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %94 = load i64, i64* %2, align 8
  %95 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %96 = call i64 @MsiViewGetColumnInfo(i64 %94, i32 %95, i64* null)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %102 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %103 = call i64 @MsiViewGetColumnInfo(i64 0, i32 %102, i64* %3)
  store i64 %103, i64* %4, align 8
  %104 = load i64, i64* %4, align 8
  %105 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %109 = load i64, i64* %2, align 8
  %110 = call i64 @MsiViewClose(i64 %109)
  store i64 %110, i64* %4, align 8
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* @ERROR_SUCCESS, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %116 = load i64, i64* %2, align 8
  %117 = call i64 @MsiCloseHandle(i64 %116)
  store i64 %117, i64* %4, align 8
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @ERROR_SUCCESS, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %123 = load i64, i64* %1, align 8
  %124 = call i64 @MsiCloseHandle(i64 %123)
  store i64 %124, i64* %4, align 8
  %125 = load i64, i64* %4, align 8
  %126 = load i64, i64* @ERROR_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i64 @create_db(...) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @MsiDatabaseOpenViewA(i64, i8*, i64*) #1

declare dso_local i64 @MsiViewExecute(i64, i32) #1

declare dso_local i64 @MsiViewGetColumnInfo(i64, i32, i64*) #1

declare dso_local i64 @MsiRecordGetStringA(i64, i32, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @MsiCloseHandle(i64) #1

declare dso_local i64 @MsiViewClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
