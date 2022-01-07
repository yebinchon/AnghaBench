; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtMapViewOfSection.c_Test_ImageSection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtMapViewOfSection.c_Test_ImageSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i32] [i32 116, i32 101, i32 115, i32 116, i32 100, i32 97, i32 116, i32 97, i32 92, i32 116, i32 101, i32 115, i32 116, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RtlDosPathNameToNtPathName_U failed\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to open file\0A\00", align 1
@SECTION_ALL_ACCESS = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to create data section\0A\00", align 1
@ViewShare = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to map view of data section\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Header not ok\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Data in .data section invalid: 0x%lx!\0A\00", align 1
@SEC_IMAGE = common dso_local global i32 0, align 4
@STATUS_INVALID_IMAGE_NOT_MZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to create image section\0A\00", align 1
@PAGE_READONLY = common dso_local global i32 0, align 4
@STATUS_IMAGE_MACHINE_TYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to map view of image section\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Wrong value in data section: 0x%lx!\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Data should not be synced!\0A\00", align 1
@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_NOACCESS = common dso_local global i32 0, align 4
@STATUS_CONFLICTING_ADDRESSES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_ImageSection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = call i32 @RTL_NUMBER_OF(i32* %17)
  %19 = call i32 @GetModuleFileNameW(i32* null, i32* %17, i32 %18)
  %20 = load i32, i32* @UNICODE_NULL, align 4
  %21 = call i32* @wcsrchr(i32* %17, i32 92)
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = mul nuw i64 4, %15
  %24 = trunc i64 %23 to i32
  %25 = call i32 @StringCbCatW(i32* %17, i32 %24, i8* bitcast ([18 x i32]* @.str to i8*))
  %26 = call i32 @RtlDosPathNameToNtPathName_U(i32* %17, i32* %1, i32* null, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %0
  %29 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %318

30:                                               ; preds = %0
  %31 = call i32 @InitializeObjectAttributes(i32* %3, i32* %1, i32 0, i32* null, i32* null)
  %32 = load i32, i32* @GENERIC_READ, align 4
  %33 = load i32, i32* @GENERIC_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SYNCHRONIZE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @FILE_SHARE_READ, align 4
  %38 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %39 = call i32 @NtOpenFile(i32* %7, i32 %36, i32* %3, i32* %4, i32 %37, i32 %38)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @STATUS_SUCCESS, align 4
  %42 = call i32 @ok_ntstatus(i32 %40, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @NT_SUCCESS(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %30
  %47 = call i32 @skip(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %318

48:                                               ; preds = %30
  %49 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %50 = load i32, i32* @PAGE_READWRITE, align 4
  %51 = load i32, i32* @SEC_COMMIT, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @NtCreateSection(i32* %8, i32 %49, i32* null, i32* null, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  %56 = call i32 @ok_ntstatus(i32 %54, i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i64 @NT_SUCCESS(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %48
  %61 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @NtClose(i32 %62)
  store i32 1, i32* %13, align 4
  br label %318

64:                                               ; preds = %48
  store i32* null, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (...) @NtCurrentProcess()
  %67 = load i32, i32* @ViewShare, align 4
  %68 = load i32, i32* @PAGE_READWRITE, align 4
  %69 = call i32 @NtMapViewOfSection(i32 %65, i32 %66, i32** %10, i32 0, i32 0, i32* null, i32* %12, i32 %67, i32 0, i32 %68)
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @STATUS_SUCCESS, align 4
  %72 = call i32 @ok_ntstatus(i32 %70, i32 %71)
  %73 = load i32, i32* %2, align 4
  %74 = call i64 @NT_SUCCESS(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %64
  %77 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @NtClose(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @NtClose(i32 %80)
  store i32 1, i32* %13, align 4
  br label %318

82:                                               ; preds = %64
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 9460301
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32*, i32** %10, align 8
  store i32 -559039810, i32* %88, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, -559039810
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2048
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 305419896
  %98 = zext i1 %97 to i32
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2048
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2048
  store i32 -2023406815, i32* %104, align 4
  %105 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %106 = load i32, i32* @PAGE_READWRITE, align 4
  %107 = load i32, i32* @SEC_IMAGE, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @NtCreateSection(i32* %9, i32 %105, i32* null, i32* null, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %2, align 4
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @STATUS_INVALID_IMAGE_NOT_MZ, align 4
  %112 = call i32 @ok_ntstatus(i32 %110, i32 %111)
  %113 = load i32, i32* %2, align 4
  %114 = call i64 @NT_SUCCESS(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %82
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @NtClose(i32 %117)
  br label %119

119:                                              ; preds = %116, %82
  %120 = load i32*, i32** %10, align 8
  store i32 9460301, i32* %120, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2048
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ok_hex(i32 %123, i32 -2023406815)
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2048
  store i32 -559039810, i32* %126, align 4
  %127 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %128 = load i32, i32* @PAGE_READWRITE, align 4
  %129 = load i32, i32* @SEC_IMAGE, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @NtCreateSection(i32* %9, i32 %127, i32* null, i32* null, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %2, align 4
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* @STATUS_SUCCESS, align 4
  %134 = call i32 @ok_ntstatus(i32 %132, i32 %133)
  %135 = load i32, i32* %2, align 4
  %136 = call i64 @NT_SUCCESS(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %119
  %139 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @NtClose(i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @NtClose(i32 %142)
  store i32 1, i32* %13, align 4
  br label %318

144:                                              ; preds = %119
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (...) @NtCurrentProcess()
  %147 = load i32, i32* @ViewShare, align 4
  %148 = load i32, i32* @PAGE_READONLY, align 4
  %149 = call i32 @NtMapViewOfSection(i32 %145, i32 %146, i32** %11, i32 0, i32 0, i32* null, i32* %12, i32 %147, i32 0, i32 %148)
  store i32 %149, i32* %2, align 4
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* @STATUS_IMAGE_MACHINE_TYPE_MISMATCH, align 4
  %152 = call i32 @ok_ntstatus(i32 %150, i32 %151)
  %153 = load i32, i32* %2, align 4
  %154 = call i64 @NT_SUCCESS(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %144
  %157 = call i32 @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @NtClose(i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @NtClose(i32 %160)
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @NtClose(i32 %162)
  store i32 1, i32* %13, align 4
  br label %318

164:                                              ; preds = %144
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 9460301
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 9460301
  %173 = zext i1 %172 to i32
  %174 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %175 = load i32*, i32** %11, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 524288
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, -2023406815
  br i1 %178, label %184, label %179

179:                                              ; preds = %164
  %180 = load i32*, i32** %11, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 524288
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 305419896
  br label %184

184:                                              ; preds = %179, %164
  %185 = phi i1 [ true, %164 ], [ %183, %179 ]
  %186 = zext i1 %185 to i32
  %187 = load i32*, i32** %11, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 524288
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %189)
  %191 = load i32*, i32** %10, align 8
  store i32 -559039810, i32* %191, align 4
  %192 = load i32*, i32** %10, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2048
  store i32 251714266, i32* %193, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, -559039810
  %197 = zext i1 %196 to i32
  %198 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %199 = load i32*, i32** %11, align 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 9460301
  %202 = zext i1 %201 to i32
  %203 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %204 = load i32*, i32** %11, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 524288
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, -2023406815
  br i1 %207, label %213, label %208

208:                                              ; preds = %184
  %209 = load i32*, i32** %11, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 524288
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 305419896
  br label %213

213:                                              ; preds = %208, %184
  %214 = phi i1 [ true, %184 ], [ %212, %208 ]
  %215 = zext i1 %214 to i32
  %216 = load i32*, i32** %11, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 524288
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %218)
  store i32 4096, i32* %12, align 4
  %220 = call i32 (...) @NtCurrentProcess()
  %221 = call i32 @NtFlushVirtualMemory(i32 %220, i32** %10, i32* %12, i32* %4)
  store i32 %221, i32* %2, align 4
  %222 = load i32, i32* %2, align 4
  %223 = load i32, i32* @STATUS_SUCCESS, align 4
  %224 = call i32 @ok_ntstatus(i32 %222, i32 %223)
  %225 = load i32*, i32** %11, align 8
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 9460301
  %228 = zext i1 %227 to i32
  %229 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %230 = load i32*, i32** %11, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 524288
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, -2023406815
  br i1 %233, label %239, label %234

234:                                              ; preds = %213
  %235 = load i32*, i32** %11, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 524288
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 305419896
  br label %239

239:                                              ; preds = %234, %213
  %240 = phi i1 [ true, %213 ], [ %238, %234 ]
  %241 = zext i1 %240 to i32
  %242 = load i32*, i32** %11, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 524288
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %244)
  %246 = load i32*, i32** %10, align 8
  store i32 9460301, i32* %246, align 4
  %247 = load i32*, i32** %10, align 8
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 9460301
  %250 = zext i1 %249 to i32
  %251 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %252 = call i32 (...) @NtCurrentProcess()
  %253 = load i32*, i32** %11, align 8
  %254 = call i32 @NtUnmapViewOfSection(i32 %252, i32* %253)
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @NtClose(i32 %255)
  %257 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %258 = load i32, i32* @PAGE_READWRITE, align 4
  %259 = load i32, i32* @SEC_IMAGE, align 4
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @NtCreateSection(i32* %9, i32 %257, i32* null, i32* null, i32 %258, i32 %259, i32 %260)
  store i32 %261, i32* %2, align 4
  %262 = load i32, i32* %2, align 4
  %263 = load i32, i32* @STATUS_SUCCESS, align 4
  %264 = call i32 @ok_ntstatus(i32 %262, i32 %263)
  %265 = load i32, i32* %2, align 4
  %266 = call i64 @NT_SUCCESS(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %239
  %269 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @NtClose(i32 %270)
  %272 = load i32, i32* %7, align 4
  %273 = call i32 @NtClose(i32 %272)
  store i32 1, i32* %13, align 4
  br label %318

274:                                              ; preds = %239
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %275 = load i32, i32* %9, align 4
  %276 = call i32 (...) @NtCurrentProcess()
  %277 = load i32, i32* @ViewShare, align 4
  %278 = load i32, i32* @PAGE_READONLY, align 4
  %279 = call i32 @NtMapViewOfSection(i32 %275, i32 %276, i32** %11, i32 0, i32 0, i32* null, i32* %12, i32 %277, i32 0, i32 %278)
  store i32 %279, i32* %2, align 4
  %280 = load i32, i32* %2, align 4
  %281 = load i32, i32* @STATUS_IMAGE_MACHINE_TYPE_MISMATCH, align 4
  %282 = call i32 @ok_ntstatus(i32 %280, i32 %281)
  %283 = load i32, i32* %2, align 4
  %284 = call i64 @NT_SUCCESS(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %294, label %286

286:                                              ; preds = %274
  %287 = call i32 @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @NtClose(i32 %288)
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @NtClose(i32 %290)
  %292 = load i32, i32* %7, align 4
  %293 = call i32 @NtClose(i32 %292)
  store i32 1, i32* %13, align 4
  br label %318

294:                                              ; preds = %274
  %295 = load i32*, i32** %10, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 2048
  store i32 305419896, i32* %296, align 4
  %297 = call i32 (...) @NtCurrentProcess()
  %298 = load i32*, i32** %10, align 8
  %299 = call i32 @NtUnmapViewOfSection(i32 %297, i32* %298)
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @NtClose(i32 %300)
  %302 = load i32*, i32** %11, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 131072
  store i32* %303, i32** %10, align 8
  store i32 4096, i32* %12, align 4
  %304 = call i32 (...) @NtCurrentProcess()
  %305 = load i32, i32* @MEM_RESERVE, align 4
  %306 = load i32, i32* @PAGE_NOACCESS, align 4
  %307 = call i32 @NtAllocateVirtualMemory(i32 %304, i32** %10, i32 0, i32* %12, i32 %305, i32 %306)
  store i32 %307, i32* %2, align 4
  %308 = load i32, i32* %2, align 4
  %309 = load i32, i32* @STATUS_CONFLICTING_ADDRESSES, align 4
  %310 = call i32 @ok_ntstatus(i32 %308, i32 %309)
  %311 = load i32, i32* %7, align 4
  %312 = call i32 @NtClose(i32 %311)
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @NtClose(i32 %313)
  %315 = call i32 (...) @NtCurrentProcess()
  %316 = load i32*, i32** %11, align 8
  %317 = call i32 @NtUnmapViewOfSection(i32 %315, i32* %316)
  store i32 0, i32* %13, align 4
  br label %318

318:                                              ; preds = %294, %286, %268, %156, %138, %76, %60, %46, %28
  %319 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %319)
  %320 = load i32, i32* %13, align 4
  switch i32 %320, label %322 [
    i32 0, label %321
    i32 1, label %321
  ]

321:                                              ; preds = %318, %318
  ret void

322:                                              ; preds = %318
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #2

declare dso_local i32 @RTL_NUMBER_OF(i32*) #2

declare dso_local i32* @wcsrchr(i32*, i32) #2

declare dso_local i32 @StringCbCatW(i32*, i32, i8*) #2

declare dso_local i32 @RtlDosPathNameToNtPathName_U(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @NtOpenFile(i32*, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @ok_ntstatus(i32, i32) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @NtCreateSection(i32*, i32, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @NtClose(i32) #2

declare dso_local i32 @NtMapViewOfSection(i32, i32, i32**, i32, i32, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @NtCurrentProcess(...) #2

declare dso_local i32 @ok_hex(i32, i32) #2

declare dso_local i32 @NtFlushVirtualMemory(i32, i32**, i32*, i32*) #2

declare dso_local i32 @NtUnmapViewOfSection(i32, i32*) #2

declare dso_local i32 @NtAllocateVirtualMemory(i32, i32**, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
