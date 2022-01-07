; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_appsearch_inilocator.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_appsearch_inilocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"test.dll\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Section\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"keydata,field2\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"IniFile.ini\00", align 1
@CURR_DIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"FileName1\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s\\FileName1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Key2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Key3\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%s\\IDontExist\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Key4\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"FileName2.dll\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%s\\FileName2.dll\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Key5\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"FileName3.dll\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s\\FileName3.dll\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Key6\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"FileName4.dll\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"%s\\FileName4.dll\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Key7\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Expected a valid database handle\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"'SIGPROP1', 'NewSignature1'\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"'SIGPROP2', 'NewSignature2'\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"'SIGPROP3', 'NewSignature3'\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"'SIGPROP4', 'NewSignature4'\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"'SIGPROP5', 'NewSignature5'\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"'SIGPROP6', 'NewSignature6'\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"'SIGPROP7', 'NewSignature7'\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"'SIGPROP8', 'NewSignature8'\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"'SIGPROP9', 'NewSignature9'\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"'SIGPROP10', 'NewSignature10'\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"'SIGPROP11', 'NewSignature11'\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"'SIGPROP12', 'NewSignature12'\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"'NewSignature1', 'IniFile.ini', 'Section', 'Key', 1, 2\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"'NewSignature2', 'IniFile.ini', 'Section', 'Key', 2, 2\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"'NewSignature3', 'IniFile.ini', 'Section', 'Key', 0, 2\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"'NewSignature4', 'IniFile.ini', 'Section', 'Key2', 1, 1\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"'NewSignature5', 'IniFile.ini', 'Section', 'Key2', 1, 0\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"'NewSignature6', 'IniFile.ini', 'Section', 'Key3', 1, 0\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"'NewSignature7', 'IniFile.ini', 'Section', 'Key2', 1, 1\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"'NewSignature8', 'IniFile.ini', 'Section', 'Key3', 1, 1\00", align 1
@.str.41 = private unnamed_addr constant [56 x i8] c"'NewSignature9', 'IniFile.ini', 'Section', 'Key4', 1, 1\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"'NewSignature10', 'IniFile.ini', 'Section', 'Key5', 1, 1\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"'NewSignature11', 'IniFile.ini', 'Section', 'Key6', 1, 1\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"'NewSignature12', 'IniFile.ini', 'Section', 'Key7', 1, 1\00", align 1
@.str.45 = private unnamed_addr constant [57 x i8] c"'NewSignature4', 'FileName1', '', '', '', '', '', '', ''\00", align 1
@.str.46 = private unnamed_addr constant [58 x i8] c"'NewSignature9', 'IDontExist', '', '', '', '', '', '', ''\00", align 1
@.str.47 = private unnamed_addr constant [76 x i8] c"'NewSignature10', 'FileName2.dll', '1.1.1.1', '2.1.1.1', '', '', '', '', ''\00", align 1
@.str.48 = private unnamed_addr constant [76 x i8] c"'NewSignature11', 'FileName3.dll', '1.1.1.1', '2.1.1.1', '', '', '', '', ''\00", align 1
@.str.49 = private unnamed_addr constant [70 x i8] c"'NewSignature12', 'ignored', '1.1.1.1', '2.1.1.1', '', '', '', '', ''\00", align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [36 x i8] c"Expected a valid package handle %u\0A\00", align 1
@INSTALLUILEVEL_NONE = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"AppSearch\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"SIGPROP1\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"keydata\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"Expected \22keydata\22, got \22%s\22\0A\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"SIGPROP2\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"field2\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"Expected \22field2\22, got \22%s\22\0A\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"SIGPROP3\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"Expected \22keydata,field2\22, got \22%s\22\0A\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"SIGPROP4\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"Expected \22%s\22, got \22%s\22\0A\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"SIGPROP5\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"Expected \22\22, got \22%s\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%s\\\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"SIGPROP6\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"SIGPROP7\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"SIGPROP8\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"SIGPROP9\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"SIGPROP10\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"SIGPROP11\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"SIGPROP12\00", align 1
@msifile = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_appsearch_inilocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_appsearch_inilocator() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %7, align 8
  %22 = call i32 @MAKELONG(i32 2, i32 1)
  %23 = call i32 @MAKELONG(i32 4, i32 3)
  %24 = call i32 @create_file_with_version(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %0
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %26, %0
  %29 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @WritePrivateProfileStringA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32, i32* @CURR_DIR, align 4
  %32 = call i32 @strcpy(i8* %17, i32 %31)
  %33 = load i32, i32* @CURR_DIR, align 4
  %34 = call i64 @is_root(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 0, i8* %37, align 2
  br label %38

38:                                               ; preds = %36, %28
  %39 = call i32 @create_test_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %40 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  %41 = call i32 @WritePrivateProfileStringA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @WritePrivateProfileStringA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %17)
  %44 = call i32 @WritePrivateProfileStringA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @MAKELONG(i32 2, i32 1)
  %46 = call i32 @MAKELONG(i32 4, i32 3)
  %47 = call i32 @create_file_with_version(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %45, i32 %46)
  %48 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %17)
  %49 = call i32 @WritePrivateProfileStringA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 @MAKELONG(i32 1, i32 2)
  %51 = call i32 @MAKELONG(i32 3, i32 4)
  %52 = call i32 @create_file_with_version(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %50, i32 %51)
  %53 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %17)
  %54 = call i32 @WritePrivateProfileStringA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 @MAKELONG(i32 2, i32 1)
  %56 = call i32 @MAKELONG(i32 4, i32 3)
  %57 = call i32 @create_file_with_version(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %55, i32 %56)
  %58 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %17)
  %59 = call i32 @WritePrivateProfileStringA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 (...) @create_package_db()
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @create_appsearch_table(i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @add_appsearch_entry(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @add_appsearch_entry(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @add_appsearch_entry(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @add_appsearch_entry(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @add_appsearch_entry(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @add_appsearch_entry(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @add_appsearch_entry(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @add_appsearch_entry(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0))
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @add_appsearch_entry(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @add_appsearch_entry(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @add_appsearch_entry(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0))
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @add_appsearch_entry(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @create_inilocator_table(i32 %89)
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @add_inilocator_entry(i32 %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i64 0, i64 0))
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @add_inilocator_entry(i32 %93, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i64 0, i64 0))
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @add_inilocator_entry(i32 %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i64 0, i64 0))
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @add_inilocator_entry(i32 %97, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0))
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @add_inilocator_entry(i32 %99, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i64 0, i64 0))
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @add_inilocator_entry(i32 %101, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0))
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @add_inilocator_entry(i32 %103, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i64 0, i64 0))
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @add_inilocator_entry(i32 %105, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i64 0, i64 0))
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @add_inilocator_entry(i32 %107, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.41, i64 0, i64 0))
  %109 = load i32, i32* %2, align 4
  %110 = call i32 @add_inilocator_entry(i32 %109, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0))
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @add_inilocator_entry(i32 %111, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.43, i64 0, i64 0))
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @add_inilocator_entry(i32 %113, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.44, i64 0, i64 0))
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @create_signature_table(i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @add_signature_entry(i32 %117, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.45, i64 0, i64 0))
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @add_signature_entry(i32 %119, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.46, i64 0, i64 0))
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @add_signature_entry(i32 %121, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.47, i64 0, i64 0))
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @add_signature_entry(i32 %123, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.48, i64 0, i64 0))
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @add_signature_entry(i32 %125, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.49, i64 0, i64 0))
  %127 = load i32, i32* %2, align 4
  %128 = call i32 @package_from_db(i32 %127, i32* %1)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @ERROR_INSTALL_PACKAGE_REJECTED, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %38
  %133 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0))
  br label %339

134:                                              ; preds = %38
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @ERROR_SUCCESS, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %10, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @INSTALLUILEVEL_NONE, align 4
  %142 = call i32 @MsiSetInternalUI(i32 %141, i32* null)
  %143 = load i32, i32* %1, align 4
  %144 = call i32 @MsiDoActionA(i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0))
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @ERROR_SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %10, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @MAX_PATH, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @MsiGetPropertyA(i32 %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @ERROR_SUCCESS, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %10, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %158)
  %160 = call i32 @lstrcmpA(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i64 0, i64 0), i8* %20)
  %165 = load i32, i32* @MAX_PATH, align 4
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %1, align 4
  %167 = call i32 @MsiGetPropertyA(i32 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @ERROR_SUCCESS, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %10, align 4
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %172)
  %174 = call i32 @lstrcmpA(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i8* %20)
  %179 = load i32, i32* @MAX_PATH, align 4
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %1, align 4
  %181 = call i32 @MsiGetPropertyA(i32 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @ERROR_SUCCESS, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %10, align 4
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %186)
  %188 = call i32 @lstrcmpA(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i8* %20)
  %193 = load i32, i32* @MAX_PATH, align 4
  store i32 %193, i32* %9, align 4
  %194 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  %195 = load i32, i32* %1, align 4
  %196 = call i32 @MsiGetPropertyA(i32 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @ERROR_SUCCESS, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %10, align 4
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %201)
  %203 = call i32 @lstrcmpA(i8* %20, i8* %14)
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i64 0, i64 0), i8* %14, i8* %20)
  %208 = load i32, i32* @MAX_PATH, align 4
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %1, align 4
  %210 = call i32 @MsiGetPropertyA(i32 %209, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @ERROR_SUCCESS, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %10, align 4
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %215)
  %217 = call i32 @lstrcmpA(i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i64 0, i64 0))
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i64 0, i64 0), i8* %20)
  %222 = load i32, i32* @MAX_PATH, align 4
  store i32 %222, i32* %9, align 4
  %223 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* %17)
  %224 = load i32, i32* %1, align 4
  %225 = call i32 @MsiGetPropertyA(i32 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @ERROR_SUCCESS, align 4
  %228 = icmp eq i32 %226, %227
  %229 = zext i1 %228 to i32
  %230 = load i32, i32* %10, align 4
  %231 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %230)
  %232 = call i32 @lstrcmpA(i8* %20, i8* %14)
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i64 0, i64 0), i8* %14, i8* %20)
  %237 = load i32, i32* @MAX_PATH, align 4
  store i32 %237, i32* %9, align 4
  %238 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* %17)
  %239 = load i32, i32* %1, align 4
  %240 = call i32 @MsiGetPropertyA(i32 %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @ERROR_SUCCESS, align 4
  %243 = icmp eq i32 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i32, i32* %10, align 4
  %246 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %245)
  %247 = call i32 @lstrcmpA(i8* %20, i8* %14)
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i64 0, i64 0), i8* %14, i8* %20)
  %252 = load i32, i32* @CURR_DIR, align 4
  %253 = call i64 @is_root(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %274, label %255

255:                                              ; preds = %134
  %256 = load i32, i32* @MAX_PATH, align 4
  store i32 %256, i32* %9, align 4
  %257 = call i32 @lstrcpyA(i8* %14, i8* %17)
  %258 = call i64* @strrchr(i8* %14, i8 signext 92)
  store i64* %258, i64** %8, align 8
  %259 = load i64*, i64** %8, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 1
  store i64 0, i64* %260, align 8
  %261 = load i32, i32* %1, align 4
  %262 = call i32 @MsiGetPropertyA(i32 %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @ERROR_SUCCESS, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %10, align 4
  %268 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %267)
  %269 = call i32 @lstrcmpA(i8* %20, i8* %14)
  %270 = icmp ne i32 %269, 0
  %271 = xor i1 %270, true
  %272 = zext i1 %271 to i32
  %273 = call i32 (i32, i8*, ...) @ok(i32 %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i64 0, i64 0), i8* %14, i8* %20)
  br label %274

274:                                              ; preds = %255, %134
  %275 = load i32, i32* @MAX_PATH, align 4
  store i32 %275, i32* %9, align 4
  %276 = load i32, i32* %1, align 4
  %277 = call i32 @MsiGetPropertyA(i32 %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* @ERROR_SUCCESS, align 4
  %280 = icmp eq i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %10, align 4
  %283 = call i32 (i32, i8*, ...) @ok(i32 %281, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %282)
  %284 = call i32 @lstrcmpA(i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i64 0, i64 0), i8* %20)
  %289 = load i64, i64* %7, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %336

291:                                              ; preds = %274
  %292 = load i32, i32* @MAX_PATH, align 4
  store i32 %292, i32* %9, align 4
  %293 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %17)
  %294 = load i32, i32* %1, align 4
  %295 = call i32 @MsiGetPropertyA(i32 %294, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* @ERROR_SUCCESS, align 4
  %298 = icmp eq i32 %296, %297
  %299 = zext i1 %298 to i32
  %300 = load i32, i32* %10, align 4
  %301 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %300)
  %302 = call i32 @lstrcmpA(i8* %20, i8* %14)
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = call i32 (i32, i8*, ...) @ok(i32 %305, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i64 0, i64 0), i8* %14, i8* %20)
  %307 = load i32, i32* @MAX_PATH, align 4
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %1, align 4
  %309 = call i32 @MsiGetPropertyA(i32 %308, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %309, i32* %10, align 4
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* @ERROR_SUCCESS, align 4
  %312 = icmp eq i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = load i32, i32* %10, align 4
  %315 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %314)
  %316 = call i32 @lstrcmpA(i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i64 0, i64 0))
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  %319 = zext i1 %318 to i32
  %320 = call i32 (i32, i8*, ...) @ok(i32 %319, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i64 0, i64 0), i8* %20)
  %321 = load i32, i32* @MAX_PATH, align 4
  store i32 %321, i32* %9, align 4
  %322 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %17)
  %323 = load i32, i32* %1, align 4
  %324 = call i32 @MsiGetPropertyA(i32 %323, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0), i8* %20, i32* %9)
  store i32 %324, i32* %10, align 4
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* @ERROR_SUCCESS, align 4
  %327 = icmp eq i32 %325, %326
  %328 = zext i1 %327 to i32
  %329 = load i32, i32* %10, align 4
  %330 = call i32 (i32, i8*, ...) @ok(i32 %328, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i64 0, i64 0), i32 %329)
  %331 = call i32 @lstrcmpA(i8* %20, i8* %14)
  %332 = icmp ne i32 %331, 0
  %333 = xor i1 %332, true
  %334 = zext i1 %333 to i32
  %335 = call i32 (i32, i8*, ...) @ok(i32 %334, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i64 0, i64 0), i8* %14, i8* %20)
  br label %336

336:                                              ; preds = %291, %274
  %337 = load i32, i32* %1, align 4
  %338 = call i32 @MsiCloseHandle(i32 %337)
  br label %339

339:                                              ; preds = %336, %132
  %340 = call i32 @delete_win_ini(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %341 = call i32 @DeleteFileA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %342 = call i32 @DeleteFileA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %343 = call i32 @DeleteFileA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %344 = call i32 @DeleteFileA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %345 = load i8*, i8** @msifile, align 8
  %346 = call i32 @DeleteFileA(i8* %345)
  %347 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %347)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_file_with_version(i8*, i32, i32) #2

declare dso_local i32 @MAKELONG(i32, i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @WritePrivateProfileStringA(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i64 @is_root(i32) #2

declare dso_local i32 @create_test_file(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @create_package_db(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @create_appsearch_table(i32) #2

declare dso_local i32 @add_appsearch_entry(i32, i8*) #2

declare dso_local i32 @create_inilocator_table(i32) #2

declare dso_local i32 @add_inilocator_entry(i32, i8*) #2

declare dso_local i32 @create_signature_table(i32) #2

declare dso_local i32 @add_signature_entry(i32, i8*) #2

declare dso_local i32 @package_from_db(i32, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @MsiSetInternalUI(i32, i32*) #2

declare dso_local i32 @MsiDoActionA(i32, i8*) #2

declare dso_local i32 @MsiGetPropertyA(i32, i8*, i8*, i32*) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i64* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @MsiCloseHandle(i32) #2

declare dso_local i32 @delete_win_ini(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
