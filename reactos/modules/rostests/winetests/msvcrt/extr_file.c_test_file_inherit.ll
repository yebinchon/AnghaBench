; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_file_inherit.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_file_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fdopen.tst\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@_S_IREAD = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't create test file\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"tests/file.c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_P_WAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"bad position %u expecting 8\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Couldn't read back the data\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Couldn't unlink\0A\00", align 1
@O_NOINHERIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"inherit_no\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"bad position %u expecting 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Found unexpected data (%s)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"%s file inherit 1\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"empty block\00", align 1
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"valid block\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"zero count block\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"small size block\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"smaller size block\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"large size block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_file_inherit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_file_inherit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [5 x i8*], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca [3 x i64], align 16
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_BINARY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @_S_IREAD, align 4
  %21 = load i32, i32* @_S_IWRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %2, align 8
  %29 = call i8* @get_base_name(i8* %28)
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* %29, i8** %30, align 16
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 4
  store i8* null, i8** %38, align 16
  %39 = load i32, i32* @_P_WAIT, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %42 = call i32 @_spawnvp(i32 %39, i8* %40, i8** %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @tell(i32 %43)
  %45 = icmp eq i32 %44, 8
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @tell(i32 %47)
  %49 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i32 @lseek(i32 %50, i32 0, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %55 = call i32 @read(i32 %53, i8* %54, i32 16)
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %61

57:                                               ; preds = %1
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %59 = call i64 @memcmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %60 = icmp eq i64 %59, 0
  br label %61

61:                                               ; preds = %57, %1
  %62 = phi i1 [ false, %1 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @close(i32 %65)
  %67 = call i64 @unlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %71 = load i32, i32* @O_CREAT, align 4
  %72 = load i32, i32* @O_RDWR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @O_BINARY, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @O_NOINHERIT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @_S_IREAD, align 4
  %79 = load i32, i32* @_S_IWRITE, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, -1
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %86 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %86, align 8
  %87 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %87, align 16
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %89 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 4
  store i8* null, i8** %93, align 16
  %94 = load i32, i32* @_P_WAIT, align 4
  %95 = load i8*, i8** %2, align 8
  %96 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %97 = call i32 @_spawnvp(i32 %94, i8* %95, i8** %96)
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @tell(i32 %98)
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @tell(i32 %102)
  %104 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %107 = call i32 @read(i32 %105, i8* %106, i32 16)
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @close(i32 %112)
  %114 = call i64 @unlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 16, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32* null, i32** %119, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = load i8*, i8** %2, align 8
  %123 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %122)
  %124 = call i32 @ZeroMemory(%struct.TYPE_7__* %8, i32 16)
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 16, i32* %125, align 8
  %126 = call i32 @create_io_inherit_block(%struct.TYPE_7__* %8, i32 0, i64* null)
  %127 = load i32, i32* @FALSE, align 4
  %128 = call i32 @test_stdout_handle(%struct.TYPE_7__* %8, i8* %14, i64 0, i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %129 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %130 = call i64 @GetStdHandle(i32 %129)
  %131 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 %130, i64* %131, align 16
  %132 = load i32, i32* @GENERIC_READ, align 4
  %133 = load i32, i32* @GENERIC_WRITE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @FILE_SHARE_READ, align 4
  %136 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @CREATE_ALWAYS, align 4
  %139 = call i64 @CreateFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %137, %struct.TYPE_8__* %9, i32 %138, i32 0, i32* null)
  %140 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 %139, i64* %140, align 8
  %141 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %142 = call i64 @GetStdHandle(i32 %141)
  %143 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  store i64 %142, i64* %143, align 16
  %144 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %145 = call i32 @create_io_inherit_block(%struct.TYPE_7__* %8, i32 3, i64* %144)
  %146 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @TRUE, align 4
  %149 = call i32 @test_stdout_handle(%struct.TYPE_7__* %8, i8* %14, i64 %147, i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %150 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @CloseHandle(i64 %151)
  %153 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* @GENERIC_READ, align 4
  %155 = load i32, i32* @GENERIC_WRITE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @FILE_SHARE_READ, align 4
  %158 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @CREATE_ALWAYS, align 4
  %161 = call i64 @CreateFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %159, %struct.TYPE_8__* %9, i32 %160, i32 0, i32* null)
  %162 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 %161, i64* %162, align 8
  %163 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %164 = call i32 @create_io_inherit_block(%struct.TYPE_7__* %8, i32 3, i64* %163)
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i32*
  store i32 0, i32* %167, align 4
  %168 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = call i32 @test_stdout_handle(%struct.TYPE_7__* %8, i8* %14, i64 %169, i32 %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %172 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @CloseHandle(i64 %173)
  %175 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %176 = load i32, i32* @GENERIC_READ, align 4
  %177 = load i32, i32* @GENERIC_WRITE, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @FILE_SHARE_READ, align 4
  %180 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @CREATE_ALWAYS, align 4
  %183 = call i64 @CreateFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %178, i32 %181, %struct.TYPE_8__* %9, i32 %182, i32 0, i32* null)
  %184 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 %183, i64* %184, align 8
  %185 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %186 = call i32 @create_io_inherit_block(%struct.TYPE_7__* %8, i32 3, i64* %185)
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %188, 3
  store i32 %189, i32* %187, align 4
  %190 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @TRUE, align 4
  %193 = call i32 @test_stdout_handle(%struct.TYPE_7__* %8, i8* %14, i64 %191, i32 %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %194 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @CloseHandle(i64 %195)
  %197 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %198 = load i32, i32* @GENERIC_READ, align 4
  %199 = load i32, i32* @GENERIC_WRITE, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @FILE_SHARE_READ, align 4
  %202 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @CREATE_ALWAYS, align 4
  %205 = call i64 @CreateFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %200, i32 %203, %struct.TYPE_8__* %9, i32 %204, i32 0, i32* null)
  %206 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 %205, i64* %206, align 8
  %207 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %208 = call i32 @create_io_inherit_block(%struct.TYPE_7__* %8, i32 3, i64* %207)
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 13, i32* %209, align 4
  %210 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @FALSE, align 4
  %213 = call i32 @test_stdout_handle(%struct.TYPE_7__* %8, i8* %14, i64 %211, i32 %212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %214 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @CloseHandle(i64 %215)
  %217 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %218 = load i32, i32* @GENERIC_READ, align 4
  %219 = load i32, i32* @GENERIC_WRITE, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @FILE_SHARE_READ, align 4
  %222 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CREATE_ALWAYS, align 4
  %225 = call i64 @CreateFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %220, i32 %223, %struct.TYPE_8__* %9, i32 %224, i32 0, i32* null)
  %226 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 %225, i64* %226, align 8
  %227 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %228 = call i32 @create_io_inherit_block(%struct.TYPE_7__* %8, i32 3, i64* %227)
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 7
  store i32 %231, i32* %229, align 4
  %232 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* @TRUE, align 4
  %235 = call i32 @test_stdout_handle(%struct.TYPE_7__* %8, i8* %14, i64 %233, i32 %234, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %236 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @CloseHandle(i64 %237)
  %239 = call i32 @DeleteFileA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %240 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %240)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @get_base_name(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @_spawnvp(i32, i8*, i8**) #2

declare dso_local i32 @tell(i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @create_io_inherit_block(%struct.TYPE_7__*, i32, i64*) #2

declare dso_local i32 @test_stdout_handle(%struct.TYPE_7__*, i8*, i64, i32, i8*) #2

declare dso_local i64 @GetStdHandle(i32) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, %struct.TYPE_8__*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
