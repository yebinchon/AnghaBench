; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_formatrecord2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_formatrecord2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create package %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Manufacturer\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"set property failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"create record failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"[ProgramFilesFolder][Manufacturer]\\asdf\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"format record failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Expected ERROR_SUCCESS got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"[foo][1]\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"hoo\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"size wrong\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"wrong output %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"format failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"x[~]x\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"[foo.$%}][1]\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"[\\[]\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"BAR\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"[%FOO]\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"[[1]]\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%FOO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_formatrecord2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_formatrecord2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @create_package_db()
  %7 = call i32 @package_from_db(i32 %6, i32* %1)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ERROR_INSTALL_PACKAGE_REJECTED, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @msifile, align 4
  %14 = call i32 @DeleteFileA(i32 %13)
  br label %243

15:                                               ; preds = %0
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ERROR_SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @MsiSetPropertyA(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ERROR_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @MsiCreateRecord(i32 2)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @MsiRecordSetStringA(i32 %32, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ERROR_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %39, align 16
  store i32 256, i32* %4, align 4
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* %2, align 4
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %43 = call i32 @MsiFormatRecordA(i32 %40, i32 %41, i8* %42, i32* %4)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ERROR_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @MsiRecordSetStringA(i32 %50, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ERROR_SUCCESS, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @MsiRecordSetStringA(i32 %58, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ERROR_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %64)
  store i32 256, i32* %4, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* %2, align 4
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %69 = call i32 @MsiFormatRecordA(i32 %66, i32 %67, i8* %68, i32* %4)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 3
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %76 = icmp eq i64 0, %75
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @ERROR_SUCCESS, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @MsiRecordSetStringA(i32 %85, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ERROR_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  store i32 256, i32* %4, align 4
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* %2, align 4
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %96 = call i32 @MsiFormatRecordA(i32 %93, i32 %94, i8* %95, i32* %4)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, 3
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %103 = icmp eq i64 0, %102
  %104 = zext i1 %103 to i32
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @ERROR_SUCCESS, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @MsiRecordSetStringA(i32 %112, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @ERROR_SUCCESS, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %2, align 4
  %121 = call i32 @MsiRecordSetStringA(i32 %120, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @ERROR_SUCCESS, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %5, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %126)
  store i32 256, i32* %4, align 4
  %128 = load i32, i32* %1, align 4
  %129 = load i32, i32* %2, align 4
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %131 = call i32 @MsiFormatRecordA(i32 %128, i32 %129, i8* %130, i32* %4)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp eq i32 %132, 3
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %138 = icmp eq i64 0, %137
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @ERROR_SUCCESS, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %147 = load i32, i32* %2, align 4
  %148 = call i32 @MsiRecordSetStringA(i32 %147, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @ERROR_SUCCESS, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  store i32 256, i32* %4, align 4
  %155 = load i32, i32* %1, align 4
  %156 = load i32, i32* %2, align 4
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %158 = call i32 @MsiFormatRecordA(i32 %155, i32 %156, i8* %157, i32* %4)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp eq i32 %159, 1
  %161 = zext i1 %160 to i32
  %162 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %165 = icmp eq i64 0, %164
  %166 = zext i1 %165 to i32
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @ERROR_SUCCESS, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %174 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %175 = load i32, i32* %2, align 4
  %176 = call i32 @MsiRecordSetStringA(i32 %175, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @ERROR_SUCCESS, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %5, align 4
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %181)
  store i32 256, i32* %4, align 4
  %183 = load i32, i32* %1, align 4
  %184 = load i32, i32* %2, align 4
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %186 = call i32 @MsiFormatRecordA(i32 %183, i32 %184, i8* %185, i32* %4)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp eq i32 %187, 3
  %189 = zext i1 %188 to i32
  %190 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %192 = call i64 @strcmp(i8* %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %193 = icmp eq i64 0, %192
  %194 = zext i1 %193 to i32
  %195 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %196 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %195)
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @ERROR_SUCCESS, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %202 = load i32, i32* %2, align 4
  %203 = call i32 @MsiRecordSetStringA(i32 %202, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @ERROR_SUCCESS, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %2, align 4
  %211 = call i32 @MsiRecordSetStringA(i32 %210, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* @ERROR_SUCCESS, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %5, align 4
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  store i32 256, i32* %4, align 4
  %218 = load i32, i32* %1, align 4
  %219 = load i32, i32* %2, align 4
  %220 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %221 = call i32 @MsiFormatRecordA(i32 %218, i32 %219, i8* %220, i32* %4)
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp eq i32 %222, 3
  %224 = zext i1 %223 to i32
  %225 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %226 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %227 = call i64 @strcmp(i8* %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %228 = icmp eq i64 0, %227
  %229 = zext i1 %228 to i32
  %230 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %231 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %230)
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @ERROR_SUCCESS, align 4
  %234 = icmp eq i32 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %237 = load i32, i32* %2, align 4
  %238 = call i32 @MsiCloseHandle(i32 %237)
  %239 = load i32, i32* %1, align 4
  %240 = call i32 @MsiCloseHandle(i32 %239)
  %241 = load i32, i32* @msifile, align 4
  %242 = call i32 @DeleteFileA(i32 %241)
  br label %243

243:                                              ; preds = %15, %11
  ret void
}

declare dso_local i32 @package_from_db(i32, i32*) #1

declare dso_local i32 @create_package_db(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @MsiSetPropertyA(i32, i8*, i8*) #1

declare dso_local i32 @MsiCreateRecord(i32) #1

declare dso_local i32 @MsiRecordSetStringA(i32, i32, i8*) #1

declare dso_local i32 @MsiFormatRecordA(i32, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SetEnvironmentVariableA(i8*, i8*) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
