; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_appsearch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_appsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@__const.test_appsearch.reg_expand_value = private unnamed_addr constant [34 x i8] c"%systemroot%\\system32\\notepad.exe\00", align 16
@.str = private unnamed_addr constant [35 x i8] c"failed to create package database\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"'WEBBROWSERPROG', 'NewSignature1'\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"'NOTEPAD', 'NewSignature2'\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"'REGEXPANDVAL', 'NewSignature3'\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"NewSignature1\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"htmlfile\\shell\\open\\command\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Software\\Winetest_msi\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Could not create key: %d.\0A\00", align 1
@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Could not set key value: %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"NewSignature3\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"'NewSignature2', 0, 'c:\\windows\\system32', 0\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"'NewSignature1', 'FileName', '', '', '', '', '', '', ''\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"'NewSignature2', 'NOTEPAD.EXE|notepad.exe', '', '', '', '', '', '', ''\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"'NewSignature3', 'NOTEPAD.EXE|notepad.exe', '', '', '', '', '', '', ''\00", align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"failed to create package %u\0A\00", align 1
@INSTALLUILEVEL_NONE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"AppSearch\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"AppSearch failed: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"WEBBROWSERPROG\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"get property failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Expected non-zero length\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"NOTEPAD\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"REGEXPANDVAL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_appsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_appsearch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [34 x i8], align 16
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = bitcast [34 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([34 x i8], [34 x i8]* @__const.test_appsearch.reg_expand_value, i32 0, i32 0), i64 34, i1 false)
  %15 = call i32 (...) @create_package_db()
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @create_appsearch_table(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @add_appsearch_entry(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @add_appsearch_entry(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @add_appsearch_entry(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @create_reglocator_table(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @add_reglocator_entry(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %30 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %31 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %32 = call i64 @RegCreateKeyExA(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %31, i32* null, i32* %7, i32* null)
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %2, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @REG_EXPAND_SZ, align 4
  %41 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 0
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds [34 x i8], [34 x i8]* %8, i64 0, i64 0
  %44 = call i64 @strlen(i8* %43)
  %45 = add nsw i64 %44, 1
  %46 = call i64 @RegSetValueExA(i32 %39, i32* null, i32 0, i32 %40, i32* %42, i64 %45)
  store i64 %46, i64* %2, align 8
  %47 = load i64, i64* %2, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %2, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @RegCloseKey(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @add_reglocator_entry(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @create_drlocator_table(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @add_drlocator_entry(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @create_signature_table(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @add_signature_entry(i32 %63, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @add_signature_entry(i32 %65, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @add_signature_entry(i32 %67, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.14, i64 0, i64 0))
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @package_from_db(i32 %69, i32* %1)
  store i64 %70, i64* %2, align 8
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* @ERROR_INSTALL_PACKAGE_REJECTED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %0
  %75 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %76 = load i32, i32* @msifile, align 4
  %77 = call i32 @DeleteFileA(i32 %76)
  store i32 1, i32* %9, align 4
  br label %147

78:                                               ; preds = %0
  %79 = load i64, i64* %2, align 8
  %80 = load i64, i64* @ERROR_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %2, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @MsiCloseHandle(i32 %85)
  %87 = load i64, i64* %2, align 8
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %140

91:                                               ; preds = %78
  %92 = load i32, i32* @INSTALLUILEVEL_NONE, align 4
  %93 = call i32 @MsiSetInternalUI(i32 %92, i32* null)
  %94 = load i32, i32* %1, align 4
  %95 = call i64 @MsiDoActionA(i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  store i64 %95, i64* %2, align 8
  %96 = load i64, i64* %2, align 8
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %2, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i64 %100)
  %102 = mul nuw i64 4, %11
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %1, align 4
  %105 = call i64 @MsiGetPropertyA(i32 %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32* %13, i32* %6)
  store i64 %105, i64* %2, align 8
  %106 = load i64, i64* %2, align 8
  %107 = load i64, i64* @ERROR_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %2, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i64 %110)
  %112 = call i64 @lstrlenA(i32* %13)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %116 = mul nuw i64 4, %11
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %1, align 4
  %119 = call i64 @MsiGetPropertyA(i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32* %13, i32* %6)
  store i64 %119, i64* %2, align 8
  %120 = load i64, i64* %2, align 8
  %121 = load i64, i64* @ERROR_SUCCESS, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %2, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i64 %124)
  %126 = mul nuw i64 4, %11
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %1, align 4
  %129 = call i64 @MsiGetPropertyA(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32* %13, i32* %6)
  store i64 %129, i64* %2, align 8
  %130 = load i64, i64* %2, align 8
  %131 = load i64, i64* @ERROR_SUCCESS, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %2, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i64 %134)
  %136 = call i64 @lstrlenA(i32* %13)
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  br label %140

140:                                              ; preds = %91, %90
  %141 = load i32, i32* %1, align 4
  %142 = call i32 @MsiCloseHandle(i32 %141)
  %143 = load i32, i32* @msifile, align 4
  %144 = call i32 @DeleteFileA(i32 %143)
  %145 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %146 = call i32 @RegDeleteKeyA(i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %140, %74
  %148 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %9, align 4
  switch i32 %149, label %151 [
    i32 0, label %150
    i32 1, label %150
  ]

150:                                              ; preds = %147, %147
  ret void

151:                                              ; preds = %147
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @create_package_db(...) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @create_appsearch_table(i32) #3

declare dso_local i32 @add_appsearch_entry(i32, i8*) #3

declare dso_local i32 @create_reglocator_table(i32) #3

declare dso_local i32 @add_reglocator_entry(i32, i8*, i32, i8*, i8*, i32) #3

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #3

declare dso_local i64 @RegSetValueExA(i32, i32*, i32, i32, i32*, i64) #3

declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @RegCloseKey(i32) #3

declare dso_local i32 @create_drlocator_table(i32) #3

declare dso_local i32 @add_drlocator_entry(i32, i8*) #3

declare dso_local i32 @create_signature_table(i32) #3

declare dso_local i32 @add_signature_entry(i32, i8*) #3

declare dso_local i64 @package_from_db(i32, i32*) #3

declare dso_local i32 @skip(i8*) #3

declare dso_local i32 @DeleteFileA(i32) #3

declare dso_local i32 @MsiCloseHandle(i32) #3

declare dso_local i32 @MsiSetInternalUI(i32, i32*) #3

declare dso_local i64 @MsiDoActionA(i32, i8*) #3

declare dso_local i64 @MsiGetPropertyA(i32, i8*, i32*, i32*) #3

declare dso_local i64 @lstrlenA(i32*) #3

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #3

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
