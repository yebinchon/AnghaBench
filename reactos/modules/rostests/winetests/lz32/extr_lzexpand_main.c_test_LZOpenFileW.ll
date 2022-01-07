; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/lz32/extr_lzexpand_main.c_test_LZOpenFileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/lz32/extr_lzexpand_main.c_test_LZOpenFileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@test_LZOpenFileW.badfilenameW = internal global [16 x i8] c"badfilename.xtn\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@OF_READ = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"LZOpenFileW call is not implemented\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"GetLastError() returns %d\0A\00", align 1
@LZERROR_BADINHANDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"LZOpenFileW succeeded on nonexistent file\0A\00", align 1
@filename_ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@filenameW_ = common dso_local global i8* null, align 8
@OF_CREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"LZOpenFile failed on creation\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"LZOpenFileW set test.cBytes to %d\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"LZOpenFileW set test.nErrCode to %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"LZOpenFileW returned '%s', but was expected to return '%s'\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"GetFileAttributes: error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"LZOpenFileW failed on read\0A\00", align 1
@OF_WRITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"LZOpenFileW failed on write\0A\00", align 1
@OF_READWRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"LZOpenFileW failed on read/write\0A\00", align 1
@OF_EXIST = common dso_local global i32 0, align 4
@OF_DELETE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"LZOpenFileW failed on delete\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"GetFileAttributesW succeeded on deleted file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LZOpenFileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LZOpenFileW() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = call i32 @SetLastError(i32 -87118866)
  %12 = load i32, i32* @OF_READ, align 4
  %13 = call i64 @LZOpenFileW(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_LZOpenFileW.badfilenameW, i64 0, i64 0), %struct.TYPE_4__* %1, i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = call i32 (...) @GetLastError()
  %15 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %257

19:                                               ; preds = %0
  %20 = call i32 (...) @GetLastError()
  %21 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @LZERROR_BADINHANDLE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @LZClose(i64 %31)
  %33 = call i32 @memset(%struct.TYPE_4__* %1, i32 165, i32 12)
  %34 = load i32, i32* @filename_, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @full_file_path_name_in_a_CWD(i32 %34, i8* %10, i32 %35)
  %37 = load i8*, i8** @filenameW_, align 8
  %38 = load i32, i32* @OF_CREATE, align 4
  %39 = call i64 @LZOpenFileW(i8* %37, %struct.TYPE_4__* %1, i32 %38)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp sge i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 12
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ERROR_SUCCESS, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @lstrcmpA(i32 %61, i8* %10)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %66, i8* %10)
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @LZClose(i64 %68)
  %70 = load i8*, i8** @filenameW_, align 8
  %71 = call i64 @GetFileAttributesW(i8* %70)
  store i64 %71, i64* %2, align 8
  %72 = load i64, i64* %2, align 8
  %73 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %74 = icmp ne i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = call i32 @memset(%struct.TYPE_4__* %1, i32 165, i32 12)
  %79 = load i8*, i8** @filenameW_, align 8
  %80 = load i32, i32* @OF_READ, align 4
  %81 = call i64 @LZOpenFileW(i8* %79, %struct.TYPE_4__* %1, i32 %80)
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = icmp sge i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %88, 12
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ERROR_SUCCESS, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @lstrcmpA(i32 %103, i8* %10)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %108, i8* %10)
  %110 = load i64, i64* %3, align 8
  %111 = call i32 @LZClose(i64 %110)
  %112 = call i32 @memset(%struct.TYPE_4__* %1, i32 165, i32 12)
  %113 = load i8*, i8** @filenameW_, align 8
  %114 = load i32, i32* @OF_WRITE, align 4
  %115 = call i64 @LZOpenFileW(i8* %113, %struct.TYPE_4__* %1, i32 %114)
  store i64 %115, i64* %3, align 8
  %116 = load i64, i64* %3, align 8
  %117 = icmp sge i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp eq i64 %122, 12
  %124 = zext i1 %123 to i32
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ERROR_SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @lstrcmpA(i32 %137, i8* %10)
  %139 = icmp eq i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %142, i8* %10)
  %144 = load i64, i64* %3, align 8
  %145 = call i32 @LZClose(i64 %144)
  %146 = call i32 @memset(%struct.TYPE_4__* %1, i32 165, i32 12)
  %147 = load i8*, i8** @filenameW_, align 8
  %148 = load i32, i32* @OF_READWRITE, align 4
  %149 = call i64 @LZOpenFileW(i8* %147, %struct.TYPE_4__* %1, i32 %148)
  store i64 %149, i64* %3, align 8
  %150 = load i64, i64* %3, align 8
  %151 = icmp sge i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp eq i64 %156, 12
  %158 = zext i1 %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ERROR_SUCCESS, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @lstrcmpA(i32 %171, i8* %10)
  %173 = icmp eq i64 %172, 0
  %174 = zext i1 %173 to i32
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %176, i8* %10)
  %178 = load i64, i64* %3, align 8
  %179 = call i32 @LZClose(i64 %178)
  %180 = call i32 @memset(%struct.TYPE_4__* %1, i32 165, i32 12)
  %181 = load i8*, i8** @filenameW_, align 8
  %182 = load i32, i32* @OF_EXIST, align 4
  %183 = call i64 @LZOpenFileW(i8* %181, %struct.TYPE_4__* %1, i32 %182)
  store i64 %183, i64* %3, align 8
  %184 = load i64, i64* %3, align 8
  %185 = icmp sge i64 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = icmp eq i64 %190, 12
  %192 = zext i1 %191 to i32
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @ERROR_SUCCESS, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @lstrcmpA(i32 %205, i8* %10)
  %207 = icmp eq i64 %206, 0
  %208 = zext i1 %207 to i32
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %210, i8* %10)
  %212 = load i64, i64* %3, align 8
  %213 = call i32 @LZClose(i64 %212)
  %214 = call i32 @memset(%struct.TYPE_4__* %1, i32 165, i32 12)
  %215 = load i8*, i8** @filenameW_, align 8
  %216 = load i32, i32* @OF_DELETE, align 4
  %217 = call i64 @LZOpenFileW(i8* %215, %struct.TYPE_4__* %1, i32 %216)
  store i64 %217, i64* %3, align 8
  %218 = load i64, i64* %3, align 8
  %219 = icmp sge i64 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = icmp eq i64 %224, 12
  %226 = zext i1 %225 to i32
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @ERROR_SUCCESS, align 4
  %233 = icmp eq i32 %231, %232
  %234 = zext i1 %233 to i32
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %236)
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @lstrcmpA(i32 %239, i8* %10)
  %241 = icmp eq i64 %240, 0
  %242 = zext i1 %241 to i32
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, i8*, ...) @ok(i32 %242, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %244, i8* %10)
  %246 = load i64, i64* %3, align 8
  %247 = call i32 @LZClose(i64 %246)
  %248 = load i8*, i8** @filenameW_, align 8
  %249 = call i64 @GetFileAttributesW(i8* %248)
  store i64 %249, i64* %2, align 8
  %250 = load i64, i64* %2, align 8
  %251 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %252 = icmp eq i64 %250, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %255 = call i32 (...) @test_LZOpenFileW_existing_compressed()
  %256 = call i32 (...) @test_LZOpenFileW_nonexisting_compressed()
  store i32 0, i32* %6, align 4
  br label %257

257:                                              ; preds = %19, %17
  %258 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %258)
  %259 = load i32, i32* %6, align 4
  switch i32 %259, label %261 [
    i32 0, label %260
    i32 1, label %260
  ]

260:                                              ; preds = %257, %257
  ret void

261:                                              ; preds = %257
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @LZOpenFileW(i8*, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @LZClose(i64) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @full_file_path_name_in_a_CWD(i32, i8*, i32) #2

declare dso_local i64 @lstrcmpA(i32, i8*) #2

declare dso_local i64 @GetFileAttributesW(i8*) #2

declare dso_local i32 @test_LZOpenFileW_existing_compressed(...) #2

declare dso_local i32 @test_LZOpenFileW_nonexisting_compressed(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
