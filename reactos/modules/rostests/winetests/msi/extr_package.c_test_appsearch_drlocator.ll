; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_appsearch_drlocator.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_appsearch_drlocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"test.dll\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"FileName1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"one\\two\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"one\\two\\three\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"one\\two\\three\\FileName2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"another\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"FileName3.dll\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"FileName4.dll\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"FileName5.dll\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Expected a valid database handle\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"'SIGPROP1', 'NewSignature1'\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"'SIGPROP2', 'NewSignature2'\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"'SIGPROP3', 'NewSignature3'\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"'SIGPROP4', 'NewSignature4'\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"'SIGPROP5', 'NewSignature5'\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"'SIGPROP6', 'NewSignature6'\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"'SIGPROP7', 'NewSignature7'\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"'SIGPROP8', 'NewSignature8'\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"'SIGPROP9', 'NewSignature9'\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"'SIGPROP10', 'NewSignature10'\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"'SIGPROP11', 'NewSignature11'\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"'SIGPROP13', 'NewSignature13'\00", align 1
@CURR_DIR = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [29 x i8] c"'NewSignature1', '', '%s', 0\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"'NewSignature2', '', '%s', 0\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"'NewSignature3', '', '%s', 0\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"'NewSignature4', '', '%s', 2\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"'NewSignature5', '', '%s', 3\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"'NewSignature6', '', '%s', 1\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"'NewSignature7', 'NewSignature1', 'one\\two\\three', 1\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"'NewSignature8', '', '%s', 0\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"'NewSignature9', '', '%s', 0\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"'NewSignature10', '', '%s', 0\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"'NewSignature11', '', '', 0\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"NewSignature12\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"htmlfile\\shell\\open\\nonexistent\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"'NewSignature13', 'NewSignature12', '', 0\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"'NewSignature1', 'FileName1', '', '', '', '', '', '', ''\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"'NewSignature4', 'FileName2', '', '', '', '', '', '', ''\00", align 1
@.str.40 = private unnamed_addr constant [57 x i8] c"'NewSignature5', 'FileName2', '', '', '', '', '', '', ''\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"'NewSignature6', 'another', '', '', '', '', '', '', ''\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"'NewSignature7', 'FileName2', '', '', '', '', '', '', ''\00", align 1
@.str.43 = private unnamed_addr constant [75 x i8] c"'NewSignature8', 'FileName3.dll', '1.1.1.1', '2.1.1.1', '', '', '', '', ''\00", align 1
@.str.44 = private unnamed_addr constant [75 x i8] c"'NewSignature9', 'FileName4.dll', '1.1.1.1', '2.1.1.1', '', '', '', '', ''\00", align 1
@.str.45 = private unnamed_addr constant [72 x i8] c"'NewSignature10', 'necessary', '1.1.1.1', '2.1.1.1', '', '', '', '', ''\00", align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i8* null, align 8
@.str.46 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [36 x i8] c"Expected a valid package handle %u\0A\00", align 1
@INSTALLUILEVEL_NONE = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [10 x i8] c"AppSearch\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"%s\\FileName1\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"SIGPROP1\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"Expected \22%s\22, got \22%s\22\0A\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%s\\\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"SIGPROP2\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"SIGPROP3\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"SIGPROP4\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"Expected \22\22, got \22%s\22\0A\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"%s\\one\\two\\three\\FileName2\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"SIGPROP5\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"SIGPROP6\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"SIGPROP7\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"%s\\FileName3.dll\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"SIGPROP8\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"SIGPROP9\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"SIGPROP10\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"SIGPROP11\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"SIGPROP13\00", align 1
@msifile = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_appsearch_drlocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_appsearch_drlocator() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i64, i64* @TRUE, align 8
  store i64 %20, i64* %7, align 8
  %21 = call i32 @MAKELONG(i32 2, i32 1)
  %22 = call i32 @MAKELONG(i32 4, i32 3)
  %23 = call i32 @create_file_with_version(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %0
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %25, %0
  %28 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @create_test_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %31 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %32 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %33 = call i32 @create_test_file(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %34 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %35 = call i32 @MAKELONG(i32 2, i32 1)
  %36 = call i32 @MAKELONG(i32 4, i32 3)
  %37 = call i32 @create_file_with_version(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %35, i32 %36)
  %38 = call i32 @MAKELONG(i32 1, i32 2)
  %39 = call i32 @MAKELONG(i32 3, i32 4)
  %40 = call i32 @create_file_with_version(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %38, i32 %39)
  %41 = call i32 @MAKELONG(i32 2, i32 1)
  %42 = call i32 @MAKELONG(i32 4, i32 3)
  %43 = call i32 @create_file_with_version(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call i32 (...) @create_package_db()
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @create_appsearch_table(i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @add_appsearch_entry(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @add_appsearch_entry(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @add_appsearch_entry(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @add_appsearch_entry(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @add_appsearch_entry(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @add_appsearch_entry(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @add_appsearch_entry(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @add_appsearch_entry(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @add_appsearch_entry(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @add_appsearch_entry(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @add_appsearch_entry(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @add_appsearch_entry(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @create_drlocator_table(i32 %73)
  %75 = load i8*, i8** @CURR_DIR, align 8
  %76 = call i32 @strcpy(i8* %16, i8* %75)
  %77 = load i8*, i8** @CURR_DIR, align 8
  %78 = call i64 @is_root(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %27
  %81 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 0, i8* %81, align 2
  br label %82

82:                                               ; preds = %80, %27
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i8* %16)
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @add_drlocator_entry(i32 %84, i8* %13)
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i8* %16)
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @add_drlocator_entry(i32 %87, i8* %13)
  %89 = getelementptr inbounds i8, i8* %16, i64 3
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @add_drlocator_entry(i32 %91, i8* %13)
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i8* %16)
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @add_drlocator_entry(i32 %94, i8* %13)
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i8* %16)
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @add_drlocator_entry(i32 %97, i8* %13)
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %16)
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @add_drlocator_entry(i32 %100, i8* %13)
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i64 0, i64 0))
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @add_drlocator_entry(i32 %103, i8* %13)
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i8* %16)
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @add_drlocator_entry(i32 %106, i8* %13)
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i8* %16)
  %109 = load i32, i32* %2, align 4
  %110 = call i32 @add_drlocator_entry(i32 %109, i8* %13)
  %111 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i8* %16)
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @add_drlocator_entry(i32 %112, i8* %13)
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0))
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @add_drlocator_entry(i32 %115, i8* %13)
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @create_reglocator_table(i32 %117)
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @add_reglocator_entry(i32 %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0), i32 1)
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0))
  %122 = load i32, i32* %2, align 4
  %123 = call i32 @add_drlocator_entry(i32 %122, i8* %13)
  %124 = load i32, i32* %2, align 4
  %125 = call i32 @create_signature_table(i32 %124)
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @add_signature_entry(i32 %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.38, i64 0, i64 0))
  %128 = load i32, i32* %2, align 4
  %129 = call i32 @add_signature_entry(i32 %128, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.39, i64 0, i64 0))
  %130 = load i32, i32* %2, align 4
  %131 = call i32 @add_signature_entry(i32 %130, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.40, i64 0, i64 0))
  %132 = load i32, i32* %2, align 4
  %133 = call i32 @add_signature_entry(i32 %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.41, i64 0, i64 0))
  %134 = load i32, i32* %2, align 4
  %135 = call i32 @add_signature_entry(i32 %134, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0))
  %136 = load i32, i32* %2, align 4
  %137 = call i32 @add_signature_entry(i32 %136, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.43, i64 0, i64 0))
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @add_signature_entry(i32 %138, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.44, i64 0, i64 0))
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @add_signature_entry(i32 %140, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i64 0, i64 0))
  %142 = load i32, i32* %2, align 4
  %143 = call i8* @package_from_db(i32 %142, i32* %1)
  store i8* %143, i8** %9, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** @ERROR_INSTALL_PACKAGE_REJECTED, align 8
  %146 = icmp eq i8* %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %82
  %148 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i64 0, i64 0))
  br label %350

149:                                              ; preds = %82
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** @ERROR_SUCCESS, align 8
  %152 = icmp eq i8* %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i8*, i8** %9, align 8
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @INSTALLUILEVEL_NONE, align 4
  %157 = call i32 @MsiSetInternalUI(i32 %156, i32* null)
  %158 = load i32, i32* %1, align 4
  %159 = call i8* @MsiDoActionA(i32 %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0))
  store i8* %159, i8** %9, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = load i8*, i8** @ERROR_SUCCESS, align 8
  %162 = icmp eq i8* %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i8*, i8** %9, align 8
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %164)
  %166 = load i32, i32* @MAX_PATH, align 4
  store i32 %166, i32* %8, align 4
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0), i8* %16)
  %168 = load i32, i32* %1, align 4
  %169 = call i8* @MsiGetPropertyA(i32 %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %169, i8** %9, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = load i8*, i8** @ERROR_SUCCESS, align 8
  %172 = icmp eq i8* %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %174)
  %176 = call i32 @lstrcmpA(i8* %19, i8* %13)
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i8* %13, i8* %19)
  %181 = load i32, i32* @MAX_PATH, align 4
  store i32 %181, i32* %8, align 4
  %182 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %16)
  %183 = load i32, i32* %1, align 4
  %184 = call i8* @MsiGetPropertyA(i32 %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %184, i8** %9, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = load i8*, i8** @ERROR_SUCCESS, align 8
  %187 = icmp eq i8* %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %189)
  %191 = call i32 @lstrcmpA(i8* %19, i8* %13)
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i8* %13, i8* %19)
  %196 = load i32, i32* @MAX_PATH, align 4
  store i32 %196, i32* %8, align 4
  %197 = getelementptr inbounds i8, i8* %16, i64 3
  %198 = call i32 @search_absolute_directory(i8* %13, i8* %197)
  %199 = load i32, i32* %1, align 4
  %200 = call i8* @MsiGetPropertyA(i32 %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %200, i8** %9, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = load i8*, i8** @ERROR_SUCCESS, align 8
  %203 = icmp eq i8* %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i8*, i8** %9, align 8
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %205)
  %207 = call i32 @lstrcmpiA(i8* %19, i8* %13)
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i8* %13, i8* %19)
  %212 = load i32, i32* @MAX_PATH, align 4
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %1, align 4
  %214 = call i8* @MsiGetPropertyA(i32 %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %214, i8** %9, align 8
  %215 = load i8*, i8** %9, align 8
  %216 = load i8*, i8** @ERROR_SUCCESS, align 8
  %217 = icmp eq i8* %215, %216
  %218 = zext i1 %217 to i32
  %219 = load i8*, i8** %9, align 8
  %220 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %219)
  %221 = call i32 @lstrcmpA(i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), i8* %19)
  %226 = load i32, i32* @MAX_PATH, align 4
  store i32 %226, i32* %8, align 4
  %227 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i8* %16)
  %228 = load i32, i32* %1, align 4
  %229 = call i8* @MsiGetPropertyA(i32 %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %229, i8** %9, align 8
  %230 = load i8*, i8** %9, align 8
  %231 = load i8*, i8** @ERROR_SUCCESS, align 8
  %232 = icmp eq i8* %230, %231
  %233 = zext i1 %232 to i32
  %234 = load i8*, i8** %9, align 8
  %235 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %234)
  %236 = call i32 @lstrcmpA(i8* %19, i8* %13)
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i8* %13, i8* %19)
  %241 = load i32, i32* @MAX_PATH, align 4
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %1, align 4
  %243 = call i8* @MsiGetPropertyA(i32 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %243, i8** %9, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = load i8*, i8** @ERROR_SUCCESS, align 8
  %246 = icmp eq i8* %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i8*, i8** %9, align 8
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %248)
  %250 = call i32 @lstrcmpA(i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), i8* %19)
  %255 = load i32, i32* @MAX_PATH, align 4
  store i32 %255, i32* %8, align 4
  %256 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i8* %16)
  %257 = load i32, i32* %1, align 4
  %258 = call i8* @MsiGetPropertyA(i32 %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %258, i8** %9, align 8
  %259 = load i8*, i8** %9, align 8
  %260 = load i8*, i8** @ERROR_SUCCESS, align 8
  %261 = icmp eq i8* %259, %260
  %262 = zext i1 %261 to i32
  %263 = load i8*, i8** %9, align 8
  %264 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %263)
  %265 = call i32 @lstrcmpA(i8* %19, i8* %13)
  %266 = icmp ne i32 %265, 0
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i8* %13, i8* %19)
  %270 = load i64, i64* %7, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %316

272:                                              ; preds = %149
  %273 = load i32, i32* @MAX_PATH, align 4
  store i32 %273, i32* %8, align 4
  %274 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i64 0, i64 0), i8* %16)
  %275 = load i32, i32* %1, align 4
  %276 = call i8* @MsiGetPropertyA(i32 %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %276, i8** %9, align 8
  %277 = load i8*, i8** %9, align 8
  %278 = load i8*, i8** @ERROR_SUCCESS, align 8
  %279 = icmp eq i8* %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i8*, i8** %9, align 8
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %281)
  %283 = call i32 @lstrcmpA(i8* %19, i8* %13)
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  %287 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i8* %13, i8* %19)
  %288 = load i32, i32* @MAX_PATH, align 4
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %1, align 4
  %290 = call i8* @MsiGetPropertyA(i32 %289, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %290, i8** %9, align 8
  %291 = load i8*, i8** %9, align 8
  %292 = load i8*, i8** @ERROR_SUCCESS, align 8
  %293 = icmp eq i8* %291, %292
  %294 = zext i1 %293 to i32
  %295 = load i8*, i8** %9, align 8
  %296 = call i32 (i32, i8*, ...) @ok(i32 %294, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %295)
  %297 = call i32 @lstrcmpA(i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0))
  %298 = icmp ne i32 %297, 0
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  %301 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), i8* %19)
  %302 = load i32, i32* @MAX_PATH, align 4
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* %1, align 4
  %304 = call i8* @MsiGetPropertyA(i32 %303, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %304, i8** %9, align 8
  %305 = load i8*, i8** %9, align 8
  %306 = load i8*, i8** @ERROR_SUCCESS, align 8
  %307 = icmp eq i8* %305, %306
  %308 = zext i1 %307 to i32
  %309 = load i8*, i8** %9, align 8
  %310 = call i32 (i32, i8*, ...) @ok(i32 %308, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %309)
  %311 = call i32 @lstrcmpA(i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0))
  %312 = icmp ne i32 %311, 0
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = call i32 (i32, i8*, ...) @ok(i32 %314, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), i8* %19)
  br label %316

316:                                              ; preds = %272, %149
  %317 = load i32, i32* @MAX_PATH, align 4
  store i32 %317, i32* %8, align 4
  %318 = call i32 @search_absolute_directory(i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0))
  %319 = load i32, i32* %1, align 4
  %320 = call i8* @MsiGetPropertyA(i32 %319, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %320, i8** %9, align 8
  %321 = load i8*, i8** %9, align 8
  %322 = load i8*, i8** @ERROR_SUCCESS, align 8
  %323 = icmp eq i8* %321, %322
  %324 = zext i1 %323 to i32
  %325 = load i8*, i8** %9, align 8
  %326 = call i32 (i32, i8*, ...) @ok(i32 %324, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %325)
  %327 = call i32 @lstrcmpiA(i8* %19, i8* %13)
  %328 = icmp ne i32 %327, 0
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = call i32 (i32, i8*, ...) @ok(i32 %330, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0), i8* %13, i8* %19)
  %332 = load i32, i32* @MAX_PATH, align 4
  store i32 %332, i32* %8, align 4
  %333 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0))
  %334 = load i32, i32* %1, align 4
  %335 = call i8* @MsiGetPropertyA(i32 %334, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), i8* %19, i32* %8)
  store i8* %335, i8** %9, align 8
  %336 = load i8*, i8** %9, align 8
  %337 = load i8*, i8** @ERROR_SUCCESS, align 8
  %338 = icmp eq i8* %336, %337
  %339 = zext i1 %338 to i32
  %340 = load i8*, i8** %9, align 8
  %341 = call i32 (i32, i8*, ...) @ok(i32 %339, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* %340)
  %342 = getelementptr inbounds i8, i8* %19, i64 0
  %343 = load i8, i8* %342, align 16
  %344 = icmp ne i8 %343, 0
  %345 = xor i1 %344, true
  %346 = zext i1 %345 to i32
  %347 = call i32 (i32, i8*, ...) @ok(i32 %346, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), i8* %19)
  %348 = load i32, i32* %1, align 4
  %349 = call i32 @MsiCloseHandle(i32 %348)
  br label %350

350:                                              ; preds = %316, %147
  %351 = call i32 @DeleteFileA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %352 = call i32 @DeleteFileA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %353 = call i32 @DeleteFileA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %354 = call i32 @DeleteFileA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %355 = call i32 @DeleteFileA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %356 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %357 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %358 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %359 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %360 = load i8*, i8** @msifile, align 8
  %361 = call i32 @DeleteFileA(i8* %360)
  %362 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %362)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_file_with_version(i8*, i32, i32) #2

declare dso_local i32 @MAKELONG(i32, i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @create_test_file(i8*) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i32 @create_package_db(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @create_appsearch_table(i32) #2

declare dso_local i32 @add_appsearch_entry(i32, i8*) #2

declare dso_local i32 @create_drlocator_table(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @is_root(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @add_drlocator_entry(i32, i8*) #2

declare dso_local i32 @create_reglocator_table(i32) #2

declare dso_local i32 @add_reglocator_entry(i32, i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @create_signature_table(i32) #2

declare dso_local i32 @add_signature_entry(i32, i8*) #2

declare dso_local i8* @package_from_db(i32, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @MsiSetInternalUI(i32, i32*) #2

declare dso_local i8* @MsiDoActionA(i32, i8*) #2

declare dso_local i8* @MsiGetPropertyA(i32, i8*, i8*, i32*) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @search_absolute_directory(i8*, i8*) #2

declare dso_local i32 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @MsiCloseHandle(i32) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
