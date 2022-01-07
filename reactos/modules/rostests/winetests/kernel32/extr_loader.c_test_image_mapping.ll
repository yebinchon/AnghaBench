; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_loader.c_test_image_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_loader.c_test_image_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32, i32, i32, i32 }

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CreateFile error %d\0A\00", align 1
@PAGE_READONLY = common dso_local global i32 0, align 4
@SEC_IMAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CreateFileMapping error %d\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"NtMapViewOfSection error %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"mapped address should be valid\0A\00", align 1
@section = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"VirtualQuery error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"got %p != expected %p\0A\00", align 1
@page_size = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"got %#lx != expected %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"got %#x != expected %#x\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%p != %p\0A\00", align 1
@PAGE_EXECUTE_WRITECOPY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"%#x != PAGE_EXECUTE_WRITECOPY\0A\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"%#x != MEM_COMMIT\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%#x != SEC_IMAGE\0A\00", align 1
@STATUS_IMAGE_NOT_AT_BASE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"expected STATUS_IMAGE_NOT_AT_BASE, got %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"mapped addresses should be different\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"NtUnmapViewOfSection error %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"LoadLibrary should fail, is_dll %d\0A\00", align 1
@ERROR_INVALID_ADDRESS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"expected ERROR_INVALID_ADDRESS, got %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"LoadLibrary error %d, is_dll %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"FreeLibrary error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @test_image_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_image_mapping(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @GENERIC_READ, align 4
  %19 = load i32, i32* @FILE_SHARE_READ, align 4
  %20 = load i32, i32* @OPEN_EXISTING, align 4
  %21 = call i64 @CreateFileA(i8* %17, i32 %18, i32 %19, i32* null, i32 %20, i32 0, i32 0)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (...) @GetLastError()
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @PAGE_READONLY, align 4
  %31 = load i32, i32* @SEC_IMAGE, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @CreateFileMappingW(i64 %29, i32* null, i32 %32, i32 0, i32 0, i32 0)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %11, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 (...) @GetCurrentProcess()
  %45 = load i32, i32* @PAGE_READONLY, align 4
  %46 = call i32 @pNtMapViewOfSection(i64 %43, i32 %44, i8** %12, i32 0, i32 0, %struct.TYPE_9__* %10, i32* %11, i32 1, i32 0, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @SetLastError(i32 -559038737)
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i32 @VirtualQuery(i8* %61, %struct.TYPE_8__* %14, i32 40)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 40
  %66 = zext i1 %65 to i32
  %67 = call i32 (...) @GetLastError()
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = icmp eq i8* %70, %74
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %78, i8* %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @page_size, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @page_size, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %90, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = icmp eq i8* %103, %104
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %108, i8* %109)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PAGE_EXECUTE_WRITECOPY, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MEM_COMMIT, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SEC_IMAGE, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %133)
  store i8* null, i8** %13, align 8
  store i32 0, i32* %11, align 4
  %135 = load i64, i64* %8, align 8
  %136 = call i32 (...) @GetCurrentProcess()
  %137 = load i32, i32* @PAGE_READONLY, align 4
  %138 = call i32 @pNtMapViewOfSection(i64 %135, i32 %136, i8** %13, i32 0, i32 0, %struct.TYPE_9__* %10, i32* %11, i32 1, i32 0, i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @STATUS_IMAGE_NOT_AT_BASE, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %9, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %13, align 8
  %146 = icmp ne i8* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = icmp ne i8* %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %154 = call i32 @SetLastError(i32 -559038737)
  %155 = load i8*, i8** %13, align 8
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = call i32 @VirtualQuery(i8* %158, %struct.TYPE_8__* %14, i32 40)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp eq i64 %161, 40
  %163 = zext i1 %162 to i32
  %164 = call i32 (...) @GetLastError()
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** %13, align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = icmp eq i8* %167, %171
  %173 = zext i1 %172 to i32
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %175, i8* %179)
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @page_size, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @page_size, align 4
  %189 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %187, i32 %188)
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %5, align 4
  %198 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %196, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** %13, align 8
  %202 = icmp eq i8* %200, %201
  %203 = zext i1 %202 to i32
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = load i8*, i8** %13, align 8
  %207 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %205, i8* %206)
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @PAGE_EXECUTE_WRITECOPY, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %214)
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @MEM_COMMIT, align 4
  %219 = icmp eq i32 %217, %218
  %220 = zext i1 %219 to i32
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %222)
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @SEC_IMAGE, align 4
  %227 = icmp eq i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %230)
  %232 = call i32 (...) @GetCurrentProcess()
  %233 = load i8*, i8** %13, align 8
  %234 = call i32 @pNtUnmapViewOfSection(i32 %232, i8* %233)
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* @STATUS_SUCCESS, align 4
  %237 = icmp eq i32 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %9, align 4
  %240 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %239)
  %241 = load i64, i64* %8, align 8
  %242 = call i8* @MapViewOfFile(i64 %241, i32 0, i32 0, i32 0, i32 0)
  store i8* %242, i8** %13, align 8
  %243 = load i8*, i8** %13, align 8
  %244 = icmp ne i8* %243, null
  %245 = zext i1 %244 to i32
  %246 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %247 = load i8*, i8** %13, align 8
  %248 = load i8*, i8** %12, align 8
  %249 = icmp ne i8* %247, %248
  %250 = zext i1 %249 to i32
  %251 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %252 = call i32 @SetLastError(i32 -559038737)
  %253 = load i8*, i8** %13, align 8
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = call i32 @VirtualQuery(i8* %256, %struct.TYPE_8__* %14, i32 40)
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = icmp eq i64 %259, 40
  %261 = zext i1 %260 to i32
  %262 = call i32 (...) @GetLastError()
  %263 = call i32 (i32, i8*, ...) @ok(i32 %261, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %262)
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load i8*, i8** %13, align 8
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = icmp eq i8* %265, %269
  %271 = zext i1 %270 to i32
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = load i8*, i8** %13, align 8
  %275 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @section, i32 0, i32 0), align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %273, i8* %277)
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @page_size, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @page_size, align 4
  %287 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %285, i32 %286)
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %5, align 4
  %291 = icmp eq i32 %289, %290
  %292 = zext i1 %291 to i32
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %5, align 4
  %296 = call i32 (i32, i8*, ...) @ok(i32 %292, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %294, i32 %295)
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %298 = load i8*, i8** %297, align 8
  %299 = load i8*, i8** %13, align 8
  %300 = icmp eq i8* %298, %299
  %301 = zext i1 %300 to i32
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = load i8*, i8** %13, align 8
  %305 = call i32 (i32, i8*, ...) @ok(i32 %301, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %303, i8* %304)
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @PAGE_EXECUTE_WRITECOPY, align 4
  %309 = icmp eq i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (i32, i8*, ...) @ok(i32 %310, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %312)
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @MEM_COMMIT, align 4
  %317 = icmp eq i32 %315, %316
  %318 = zext i1 %317 to i32
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %320)
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @SEC_IMAGE, align 4
  %325 = icmp eq i32 %323, %324
  %326 = zext i1 %325 to i32
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = call i32 (i32, i8*, ...) @ok(i32 %326, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %328)
  %330 = load i8*, i8** %13, align 8
  %331 = call i32 @UnmapViewOfFile(i8* %330)
  %332 = call i32 @SetLastError(i32 -559038737)
  %333 = load i8*, i8** %4, align 8
  %334 = call i8* @LoadLibraryA(i8* %333)
  store i8* %334, i8** %13, align 8
  %335 = load i32, i32* %6, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %350

337:                                              ; preds = %3
  %338 = load i8*, i8** %13, align 8
  %339 = icmp ne i8* %338, null
  %340 = xor i1 %339, true
  %341 = zext i1 %340 to i32
  %342 = load i32, i32* %6, align 4
  %343 = call i32 (i32, i8*, ...) @ok(i32 %341, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %342)
  %344 = call i32 (...) @GetLastError()
  %345 = load i32, i32* @ERROR_INVALID_ADDRESS, align 4
  %346 = icmp eq i32 %344, %345
  %347 = zext i1 %346 to i32
  %348 = call i32 (...) @GetLastError()
  %349 = call i32 (i32, i8*, ...) @ok(i32 %347, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %348)
  br label %368

350:                                              ; preds = %3
  %351 = load i8*, i8** %13, align 8
  %352 = icmp ne i8* %351, null
  %353 = zext i1 %352 to i32
  %354 = call i32 (...) @GetLastError()
  %355 = load i32, i32* %6, align 4
  %356 = call i32 (i32, i8*, ...) @ok(i32 %353, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %354, i32 %355)
  %357 = load i8*, i8** %13, align 8
  %358 = load i8*, i8** %12, align 8
  %359 = icmp ne i8* %357, %358
  %360 = zext i1 %359 to i32
  %361 = call i32 (i32, i8*, ...) @ok(i32 %360, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %362 = call i32 @SetLastError(i32 -559038737)
  %363 = load i8*, i8** %13, align 8
  %364 = call i32 @FreeLibrary(i8* %363)
  store i32 %364, i32* %15, align 4
  %365 = load i32, i32* %15, align 4
  %366 = call i32 (...) @GetLastError()
  %367 = call i32 (i32, i8*, ...) @ok(i32 %365, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %366)
  br label %368

368:                                              ; preds = %350, %337
  %369 = call i32 (...) @GetCurrentProcess()
  %370 = load i8*, i8** %12, align 8
  %371 = call i32 @pNtUnmapViewOfSection(i32 %369, i8* %370)
  store i32 %371, i32* %9, align 4
  %372 = load i32, i32* %9, align 4
  %373 = load i32, i32* @STATUS_SUCCESS, align 4
  %374 = icmp eq i32 %372, %373
  %375 = zext i1 %374 to i32
  %376 = load i32, i32* %9, align 4
  %377 = call i32 (i32, i8*, ...) @ok(i32 %375, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %376)
  %378 = load i64, i64* %8, align 8
  %379 = call i32 @CloseHandle(i64 %378)
  %380 = load i64, i64* %7, align 8
  %381 = call i32 @CloseHandle(i64 %380)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @CreateFileMappingW(i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pNtMapViewOfSection(i64, i32, i8**, i32, i32, %struct.TYPE_9__*, i32*, i32, i32, i32) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @VirtualQuery(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @pNtUnmapViewOfSection(i32, i8*) #1

declare dso_local i8* @MapViewOfFile(i64, i32, i32, i32, i32) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

declare dso_local i8* @LoadLibraryA(i8*) #1

declare dso_local i32 @FreeLibrary(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
