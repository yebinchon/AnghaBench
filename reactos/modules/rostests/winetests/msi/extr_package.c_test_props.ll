; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_props.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"'MetadataCompName', 'Photoshop.dll'\00", align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to create package %u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"wrong return val\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"boo\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"wrong size returned\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@ERROR_MORE_DATA = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"buffer was changed\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"buffer was not changed\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"asdf\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"prop wasn't empty\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"SourceDir\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"SOURCEDIR\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"buffer wrong\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"SOMERANDOMNAME\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"MetadataCompName\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Photoshop.dll\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"return wrong\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"size wrong (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Photoshop.dl\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Expected value, got %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Expected empty string, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_props() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = call i32 (...) @create_package_db()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @create_property_table(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @add_property_entry(i32 %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %2, align 4
  %12 = call i8* @package_from_db(i32 %11, i32* %1)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** @ERROR_INSTALL_PACKAGE_REJECTED, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @msifile, align 4
  %19 = call i32 @DeleteFileA(i32 %18)
  br label %404

20:                                               ; preds = %0
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** @ERROR_SUCCESS, align 8
  %23 = icmp eq i8* %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = call i8* @MsiGetPropertyA(i32 0, i8* null, i8* null, i32* null)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %30 = icmp eq i8* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %1, align 4
  %34 = call i8* @MsiGetPropertyA(i32 %33, i8* null, i8* null, i32* null)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %37 = icmp eq i8* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* %1, align 4
  %41 = call i8* @MsiGetPropertyA(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* null, i32* null)
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** @ERROR_SUCCESS, align 8
  %44 = icmp eq i8* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* %1, align 4
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %49 = call i8* @MsiGetPropertyA(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %48, i32* null)
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %52 = icmp eq i8* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 256, i32* %4, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i8* @MsiGetPropertyA(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* null, i32* %4)
  store i8* %56, i8** %3, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load i8*, i8** @ERROR_SUCCESS, align 8
  %59 = icmp eq i8* %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @check_prop_empty(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %69 = call i32 @strcpy(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* %1, align 4
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %72 = call i8* @MsiGetPropertyA(i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %71, i32* %4)
  store i8* %72, i8** %3, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** @ERROR_MORE_DATA, align 8
  %75 = icmp eq i8* %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %89 = call i32 @strcpy(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* %1, align 4
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %92 = call i8* @MsiGetPropertyA(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %91, i32* %4)
  store i8* %92, i8** %3, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = load i8*, i8** @ERROR_SUCCESS, align 8
  %95 = icmp eq i8* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %108 = call i8* @MsiSetPropertyA(i32 0, i8* null, i8* null)
  store i8* %108, i8** %3, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = load i8*, i8** @ERROR_INVALID_HANDLE, align 8
  %111 = icmp eq i8* %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* %1, align 4
  %115 = call i8* @MsiSetPropertyA(i32 %114, i8* null, i8* null)
  store i8* %115, i8** %3, align 8
  %116 = load i8*, i8** %3, align 8
  %117 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %118 = icmp eq i8* %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32, i32* %1, align 4
  %122 = call i8* @MsiSetPropertyA(i32 %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* null)
  store i8* %122, i8** %3, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = load i8*, i8** @ERROR_SUCCESS, align 8
  %125 = icmp eq i8* %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* %1, align 4
  %129 = call i8* @MsiSetPropertyA(i32 %128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %129, i8** %3, align 8
  %130 = load i8*, i8** %3, align 8
  %131 = load i8*, i8** @ERROR_FUNCTION_FAILED, align 8
  %132 = icmp eq i8* %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* %1, align 4
  %136 = call i8* @MsiSetPropertyA(i32 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %136, i8** %3, align 8
  %137 = load i8*, i8** %3, align 8
  %138 = load i8*, i8** @ERROR_SUCCESS, align 8
  %139 = icmp eq i8* %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32, i32* %1, align 4
  %143 = call i8* @MsiSetPropertyA(i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %143, i8** %3, align 8
  %144 = load i8*, i8** %3, align 8
  %145 = load i8*, i8** @ERROR_SUCCESS, align 8
  %146 = icmp eq i8* %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* %1, align 4
  %150 = call i8* @MsiSetPropertyA(i32 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %150, i8** %3, align 8
  %151 = load i8*, i8** %3, align 8
  %152 = load i8*, i8** @ERROR_SUCCESS, align 8
  %153 = icmp eq i8* %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 256, i32* %4, align 4
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %156, align 16
  %157 = load i32, i32* %1, align 4
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %159 = call i8* @MsiGetPropertyA(i32 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* %158, i32* %4)
  store i8* %159, i8** %3, align 8
  %160 = load i8*, i8** %3, align 8
  %161 = load i8*, i8** @ERROR_SUCCESS, align 8
  %162 = icmp eq i8* %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %171 = load i32, i32* %1, align 4
  %172 = call i8* @MsiSetPropertyA(i32 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* null)
  store i8* %172, i8** %3, align 8
  %173 = load i8*, i8** %3, align 8
  %174 = load i8*, i8** @ERROR_SUCCESS, align 8
  %175 = icmp eq i8* %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i32, i32* %1, align 4
  %179 = call i32 @check_prop_empty(i32 %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %181 = load i32, i32* %1, align 4
  %182 = call i8* @MsiSetPropertyA(i32 %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  store i8* %182, i8** %3, align 8
  %183 = load i8*, i8** %3, align 8
  %184 = load i8*, i8** @ERROR_SUCCESS, align 8
  %185 = icmp eq i8* %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %188 = load i32, i32* %1, align 4
  %189 = call i32 @check_prop_empty(i32 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %190 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %191 = load i32, i32* %1, align 4
  %192 = call i8* @MsiSetPropertyA(i32 %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  store i8* %192, i8** %3, align 8
  %193 = load i8*, i8** %3, align 8
  %194 = load i8*, i8** @ERROR_SUCCESS, align 8
  %195 = icmp eq i8* %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %199 = call i32 @strcpy(i8* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %200 = load i32, i32* %1, align 4
  %201 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %202 = call i8* @MsiGetPropertyA(i32 %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %201, i32* %4)
  store i8* %202, i8** %3, align 8
  %203 = load i8*, i8** %3, align 8
  %204 = load i8*, i8** @ERROR_MORE_DATA, align 8
  %205 = icmp eq i8* %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %208 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %209 = load i8, i8* %208, align 16
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %214 = load i32, i32* %4, align 4
  %215 = icmp eq i32 %214, 3
  %216 = zext i1 %215 to i32
  %217 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* %4, align 4
  %218 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %219 = call i32 @strcpy(i8* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %220 = load i32, i32* %1, align 4
  %221 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %222 = call i8* @MsiGetPropertyA(i32 %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %221, i32* %4)
  store i8* %222, i8** %3, align 8
  %223 = load i8*, i8** %3, align 8
  %224 = load i8*, i8** @ERROR_SUCCESS, align 8
  %225 = icmp eq i8* %223, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %228 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %229 = call i32 @strcmp(i8* %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %234 = load i32, i32* %4, align 4
  %235 = icmp eq i32 %234, 3
  %236 = zext i1 %235 to i32
  %237 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 3, i32* %4, align 4
  %238 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %239 = call i32 @strcpy(i8* %238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %240 = load i32, i32* %1, align 4
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %242 = call i8* @MsiGetPropertyA(i32 %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %241, i32* %4)
  store i8* %242, i8** %3, align 8
  %243 = load i8*, i8** %3, align 8
  %244 = load i8*, i8** @ERROR_MORE_DATA, align 8
  %245 = icmp eq i8* %243, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %254 = load i32, i32* %4, align 4
  %255 = icmp eq i32 %254, 3
  %256 = zext i1 %255 to i32
  %257 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %258 = load i32, i32* %1, align 4
  %259 = call i8* @MsiSetPropertyA(i32 %258, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  store i8* %259, i8** %3, align 8
  %260 = load i8*, i8** %3, align 8
  %261 = load i8*, i8** @ERROR_SUCCESS, align 8
  %262 = icmp eq i8* %260, %261
  %263 = zext i1 %262 to i32
  %264 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 4, i32* %4, align 4
  %265 = load i32, i32* %1, align 4
  %266 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %267 = call i8* @MsiGetPropertyA(i32 %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* %266, i32* %4)
  store i8* %267, i8** %3, align 8
  %268 = load i8*, i8** %3, align 8
  %269 = load i8*, i8** @ERROR_SUCCESS, align 8
  %270 = icmp eq i8* %268, %269
  %271 = zext i1 %270 to i32
  %272 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %273 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %274 = call i32 @strcmp(i8* %273, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  %278 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %279 = load i32, i32* %4, align 4
  %280 = icmp eq i32 %279, 0
  %281 = zext i1 %280 to i32
  %282 = call i32 (i32, i8*, ...) @ok(i32 %281, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* %4, align 4
  %283 = load i32, i32* %1, align 4
  %284 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %285 = call i8* @MsiGetPropertyA(i32 %283, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %284, i32* %4)
  store i8* %285, i8** %3, align 8
  %286 = load i8*, i8** %3, align 8
  %287 = load i8*, i8** @ERROR_SUCCESS, align 8
  %288 = icmp eq i8* %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 (i32, i8*, ...) @ok(i32 %289, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %291 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %292 = call i32 @strcmp(i8* %291, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %297 = load i32, i32* %4, align 4
  %298 = icmp eq i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* %4, align 4
  %301 = load i32, i32* %1, align 4
  %302 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %303 = call i8* @MsiGetPropertyA(i32 %301, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %302, i32* %4)
  store i8* %303, i8** %3, align 8
  %304 = load i8*, i8** %3, align 8
  %305 = load i8*, i8** @ERROR_SUCCESS, align 8
  %306 = icmp eq i8* %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 (i32, i8*, ...) @ok(i32 %307, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %309 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %310 = call i32 @strcmp(i8* %309, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %315 = load i32, i32* %4, align 4
  %316 = icmp eq i32 %315, 3
  %317 = zext i1 %316 to i32
  %318 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %319 = load i32, i32* %1, align 4
  %320 = call i8* @MsiSetPropertyA(i32 %319, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  store i8* %320, i8** %3, align 8
  %321 = load i8*, i8** %3, align 8
  %322 = load i8*, i8** @ERROR_SUCCESS, align 8
  %323 = icmp eq i8* %321, %322
  %324 = zext i1 %323 to i32
  %325 = call i32 (i32, i8*, ...) @ok(i32 %324, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %326 = load i32, i32* %1, align 4
  %327 = call i8* @MsiGetPropertyA(i32 %326, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* null, i32* %4)
  store i8* %327, i8** %3, align 8
  %328 = load i8*, i8** %3, align 8
  %329 = load i8*, i8** @ERROR_SUCCESS, align 8
  %330 = icmp eq i8* %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 (i32, i8*, ...) @ok(i32 %331, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %333 = load i32, i32* %4, align 4
  %334 = icmp eq i32 %333, 13
  %335 = zext i1 %334 to i32
  %336 = load i32, i32* %4, align 4
  %337 = call i32 (i32, i8*, ...) @ok(i32 %335, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 %336)
  store i32 13, i32* %4, align 4
  %338 = load i32, i32* %1, align 4
  %339 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %340 = call i8* @MsiGetPropertyA(i32 %338, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* %339, i32* %4)
  store i8* %340, i8** %3, align 8
  %341 = load i8*, i8** %3, align 8
  %342 = load i8*, i8** @ERROR_MORE_DATA, align 8
  %343 = icmp eq i8* %341, %342
  %344 = zext i1 %343 to i32
  %345 = call i32 (i32, i8*, ...) @ok(i32 %344, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %346 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %347 = call i32 @strcmp(i8* %346, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %348 = icmp ne i32 %347, 0
  %349 = xor i1 %348, true
  %350 = zext i1 %349 to i32
  %351 = call i32 (i32, i8*, ...) @ok(i32 %350, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %352 = load i32, i32* %1, align 4
  %353 = call i8* @MsiSetPropertyA(i32 %352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  store i8* %353, i8** %3, align 8
  %354 = load i8*, i8** %3, align 8
  %355 = load i8*, i8** @ERROR_SUCCESS, align 8
  %356 = icmp eq i8* %354, %355
  %357 = zext i1 %356 to i32
  %358 = load i8*, i8** %3, align 8
  %359 = call i32 (i32, i8*, ...) @ok(i32 %357, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %358)
  store i32 6, i32* %4, align 4
  %360 = load i32, i32* %1, align 4
  %361 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %362 = call i8* @MsiGetPropertyA(i32 %360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* %361, i32* %4)
  store i8* %362, i8** %3, align 8
  %363 = load i8*, i8** %3, align 8
  %364 = load i8*, i8** @ERROR_SUCCESS, align 8
  %365 = icmp eq i8* %363, %364
  %366 = zext i1 %365 to i32
  %367 = load i8*, i8** %3, align 8
  %368 = call i32 (i32, i8*, ...) @ok(i32 %366, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %367)
  %369 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %370 = call i32 @strcmp(i8* %369, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %371 = icmp ne i32 %370, 0
  %372 = xor i1 %371, true
  %373 = zext i1 %372 to i32
  %374 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %375 = call i32 (i32, i8*, ...) @ok(i32 %373, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %374)
  %376 = load i32, i32* %1, align 4
  %377 = call i8* @MsiSetPropertyA(i32 %376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* null)
  store i8* %377, i8** %3, align 8
  %378 = load i8*, i8** %3, align 8
  %379 = load i8*, i8** @ERROR_SUCCESS, align 8
  %380 = icmp eq i8* %378, %379
  %381 = zext i1 %380 to i32
  %382 = load i8*, i8** %3, align 8
  %383 = call i32 (i32, i8*, ...) @ok(i32 %381, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %382)
  store i32 6, i32* %4, align 4
  %384 = load i32, i32* %1, align 4
  %385 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %386 = call i8* @MsiGetPropertyA(i32 %384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* %385, i32* %4)
  store i8* %386, i8** %3, align 8
  %387 = load i8*, i8** %3, align 8
  %388 = load i8*, i8** @ERROR_SUCCESS, align 8
  %389 = icmp eq i8* %387, %388
  %390 = zext i1 %389 to i32
  %391 = load i8*, i8** %3, align 8
  %392 = call i32 (i32, i8*, ...) @ok(i32 %390, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %391)
  %393 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %394 = load i8, i8* %393, align 16
  %395 = icmp ne i8 %394, 0
  %396 = xor i1 %395, true
  %397 = zext i1 %396 to i32
  %398 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %399 = call i32 (i32, i8*, ...) @ok(i32 %397, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i8* %398)
  %400 = load i32, i32* %1, align 4
  %401 = call i32 @MsiCloseHandle(i32 %400)
  %402 = load i32, i32* @msifile, align 4
  %403 = call i32 @DeleteFileA(i32 %402)
  br label %404

404:                                              ; preds = %20, %16
  ret void
}

declare dso_local i32 @create_package_db(...) #1

declare dso_local i32 @create_property_table(i32) #1

declare dso_local i32 @add_property_entry(i32, i8*) #1

declare dso_local i8* @package_from_db(i32, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @MsiGetPropertyA(i32, i8*, i8*, i32*) #1

declare dso_local i32 @check_prop_empty(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @MsiSetPropertyA(i32, i8*, i8*) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
