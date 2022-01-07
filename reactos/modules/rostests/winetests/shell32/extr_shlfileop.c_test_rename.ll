; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_test_rename.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_test_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32, i32*, i32*, i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@FO_RENAME = common dso_local global i32 0, align 4
@FOF_NOCONFIRMATION = common dso_local global i32 0, align 4
@FOF_SILENT = common dso_local global i32 0, align 4
@FOF_NOERRORUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"test1.txt\00\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"test4.txt\00\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@DE_FILEDESTISFLD = common dso_local global i32 0, align 4
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Expected ERROR_ALREADY_EXISTS or DE_FILEDESTISFLD, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"test1.txt\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"The file is renamed\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"test3.txt\00\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"test4.txt\\test1.txt\00\00", align 1
@DE_DIFFDIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"test4.txt\\test1.txt\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"File is renamed moving to other directory\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"The file is not renamed\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"test1.txt\00test2.txt\00test4.txt\00\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"test6.txt\00test7.txt\00test8.txt\00\00", align 1
@ERROR_GEN_FAILURE = common dso_local global i32 0, align 4
@DE_MANYSRC1DEST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [56 x i8] c"Expected ERROR_GEN_FAILURE or DE_MANYSRC1DEST , got %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"The file is renamed - many files are specified\0A\00", align 1
@FOF_MULTIDESTFILES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [61 x i8] c"Expected ERROR_GEN_FAILURE or DE_MANYSRC1DEST files, got %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"The file is not renamed - many files are specified\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"test6.txt\00\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Rename file failed, retval = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"test6.txt\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Rename file back failed, retval = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Rename dir failed, retval = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"test4.txt\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"The dir is not renamed\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Rename dir back failed, retval = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"test1.txt\00test2.txt\00\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"a.txt\00\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"Expected ERROR_GEN_FAILURE or DE_MANYSRC1DEST, got %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"Expected test1.txt to exist\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"test2.txt\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Expected test2.txt to exist\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"a.txt\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Expected a.txt to not exist\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"idontexist\00\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"newfile\00\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [47 x i8] c"Expected 1026 or ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"newfile\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Expected newfile to not exist\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"test2.txt\00\00", align 1
@old_shell32 = common dso_local global i64 0, align 8
@FOF_NOCONFIRMMKDIR = common dso_local global i32 0, align 4
@DE_OPCANCELLED = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [39 x i8] c"Expected ERROR_ALREADY_EXISTS, got %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@ERROR_CANCELLED = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [48 x i8] c"Expected ERROR_CANCELLED or DE_DIFFDIR, got %u\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [57 x i8] c"Expected ERROR_ACCESS_DENIED or DE_MANYSRC1DEST, got %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rename() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = mul nsw i32 5, %7
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = mul nsw i32 5, %12
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 6
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @FO_RENAME, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* %11, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %15, i8** %20, align 8
  %21 = load i32, i32* @FOF_NOCONFIRMATION, align 4
  %22 = load i32, i32* @FOF_SILENT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FOF_NOERRORUI, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = call i32 @set_curr_dir_path(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ERROR_ALREADY_EXISTS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %0
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DE_FILEDESTISFLD, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @broken(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %39, %35, %0
  %47 = phi i1 [ true, %35 ], [ true, %0 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 @file_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 @set_curr_dir_path(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %55 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @DE_DIFFDIR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %46
  %60 = call i32 @file_exists(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %73

65:                                               ; preds = %46
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ERROR_SUCCESS, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %71 = call i32 @file_exists(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %73

73:                                               ; preds = %65, %59
  %74 = call i32 @set_curr_dir_path(i8* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %75 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %76 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @DE_MANYSRC1DEST, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @ERROR_SUCCESS, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @broken(i32 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %84, %80, %73
  %92 = phi i1 [ true, %80 ], [ true, %73 ], [ %90, %84 ]
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 %94)
  %96 = call i32 @file_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %98 = call i32 @memcpy(%struct.TYPE_5__* %2, %struct.TYPE_5__* %1, i32 56)
  %99 = load i32, i32* @FOF_MULTIDESTFILES, align 4
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 8
  %103 = call i32 @set_curr_dir_path(i8* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %104 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %105 = call i32 @SHFileOperationA(%struct.TYPE_5__* %2)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %120, label %109

109:                                              ; preds = %91
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @DE_MANYSRC1DEST, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @ERROR_SUCCESS, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @broken(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %113, %109, %91
  %121 = phi i1 [ true, %109 ], [ true, %91 ], [ %119, %113 ]
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i32 %123)
  %125 = call i32 @file_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  %127 = call i32 @set_curr_dir_path(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %128 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %129 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @ERROR_SUCCESS, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %6, align 4
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %134)
  %136 = call i32 @file_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %141 = call i32 @file_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %143 = call i32 @set_curr_dir_path(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %144 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %145 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @ERROR_SUCCESS, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %6, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 %150)
  %152 = call i32 @set_curr_dir_path(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %153 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %154 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @ERROR_SUCCESS, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %6, align 4
  %160 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 %159)
  %161 = call i32 @dir_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %166 = call i32 @dir_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %168 = call i32 @set_curr_dir_path(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %169 = call i32 @set_curr_dir_path(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %170 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @ERROR_SUCCESS, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %6, align 4
  %176 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i32 %175)
  %177 = call i32 @dir_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %178 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8** %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8** %180, align 8
  %181 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %196, label %185

185:                                              ; preds = %120
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @DE_MANYSRC1DEST, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @ERROR_SUCCESS, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i64 @broken(i32 %193)
  %195 = icmp ne i64 %194, 0
  br label %196

196:                                              ; preds = %189, %185, %120
  %197 = phi i1 [ true, %185 ], [ true, %120 ], [ %195, %189 ]
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %6, align 4
  %200 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0), i32 %199)
  %201 = call i32 @file_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %202 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  %203 = call i32 @file_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %204 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0))
  %205 = call i32 @file_exists(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8** %210, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8** %211, align 8
  %212 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp eq i32 %213, 1026
  br i1 %214, label %226, label %215

215:                                              ; preds = %196
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %226, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @ERROR_SUCCESS, align 4
  %222 = icmp eq i32 %220, %221
  %223 = zext i1 %222 to i32
  %224 = call i64 @broken(i32 %223)
  %225 = icmp ne i64 %224, 0
  br label %226

226:                                              ; preds = %219, %215, %196
  %227 = phi i1 [ true, %215 ], [ true, %196 ], [ %225, %219 ]
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %6, align 4
  %230 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0), i32 %229)
  %231 = call i32 @file_exists(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0))
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %236, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8** %237, align 8
  %238 = load i64, i64* @old_shell32, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %226
  %241 = load i32, i32* @FOF_NOCONFIRMMKDIR, align 4
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %241
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %240, %226
  %246 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @ERROR_SUCCESS, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = call i32 @createTestFile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %275

252:                                              ; preds = %245
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* @ERROR_ALREADY_EXISTS, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %270, label %256

256:                                              ; preds = %252
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @DE_OPCANCELLED, align 4
  %259 = icmp eq i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i64 @broken(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %256
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %266 = icmp eq i32 %264, %265
  %267 = zext i1 %266 to i32
  %268 = call i64 @broken(i32 %267)
  %269 = icmp ne i64 %268, 0
  br label %270

270:                                              ; preds = %263, %256, %252
  %271 = phi i1 [ true, %256 ], [ true, %252 ], [ %269, %263 ]
  %272 = zext i1 %271 to i32
  %273 = load i32, i32* %6, align 4
  %274 = call i32 (i32, i8*, ...) @ok(i32 %272, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 %273)
  br label %275

275:                                              ; preds = %270, %250
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %276, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i8** %277, align 8
  %278 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* @ERROR_CANCELLED, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %303, label %282

282:                                              ; preds = %275
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* @DE_DIFFDIR, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %303, label %286

286:                                              ; preds = %282
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @DE_FILEDESTISFLD, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %303, label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @DE_OPCANCELLED, align 4
  %293 = icmp eq i32 %291, %292
  %294 = zext i1 %293 to i32
  %295 = call i64 @broken(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %290
  %298 = load i32, i32* %6, align 4
  %299 = icmp eq i32 %298, 65652
  %300 = zext i1 %299 to i32
  %301 = call i64 @broken(i32 %300)
  %302 = icmp ne i64 %301, 0
  br label %303

303:                                              ; preds = %297, %290, %286, %282, %275
  %304 = phi i1 [ true, %290 ], [ true, %286 ], [ true, %282 ], [ true, %275 ], [ %302, %297 ]
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* %6, align 4
  %307 = call i32 (i32, i8*, ...) @ok(i32 %305, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i64 0, i64 0), i32 %306)
  %308 = call i32 @file_exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %309 = call i32 (i32, i8*, ...) @ok(i32 %308, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0))
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i8** %310, align 8
  %311 = call i32 @SHFileOperationA(%struct.TYPE_5__* %1)
  store i32 %311, i32* %6, align 4
  %312 = load i32, i32* %6, align 4
  %313 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %326, label %315

315:                                              ; preds = %303
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* @DE_MANYSRC1DEST, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %326, label %319

319:                                              ; preds = %315
  %320 = load i32, i32* %6, align 4
  %321 = load i32, i32* @ERROR_SUCCESS, align 4
  %322 = icmp eq i32 %320, %321
  %323 = zext i1 %322 to i32
  %324 = call i64 @broken(i32 %323)
  %325 = icmp ne i64 %324, 0
  br label %326

326:                                              ; preds = %319, %315, %303
  %327 = phi i1 [ true, %315 ], [ true, %303 ], [ %325, %319 ]
  %328 = zext i1 %327 to i32
  %329 = load i32, i32* %6, align 4
  %330 = call i32 (i32, i8*, ...) @ok(i32 %328, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.41, i64 0, i64 0), i32 %329)
  %331 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %331)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_curr_dir_path(i8*, i8*) #2

declare dso_local i32 @SHFileOperationA(%struct.TYPE_5__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @file_exists(i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @dir_exists(i8*) #2

declare dso_local i32 @createTestFile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
