; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_name_collisions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_name_collisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@DIRECTORY_QUERY = common dso_local global i32 0, align 4
@STATUS_OBJECT_NAME_COLLISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"NtCreateDirectoryObject got %08x\0A\00", align 1
@OBJ_OPENIF = common dso_local global i32 0, align 4
@STATUS_OBJECT_NAME_EXISTS = common dso_local global i32 0, align 4
@GENERIC_ALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_OBJECT_TYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"NtCreateMutant should have failed with STATUS_OBJECT_TYPE_MISMATCH got(%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\\??\\PIPE\\om.c-mutant\00", align 1
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"couldn't find the BaseNamedObjects dir\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"om.c-test\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"CreateMutexA failed got ret=%p (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"NtCreateMutant should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\0A\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [78 x i8] c"CreateMutexA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"CreateEventA failed got ret=%p (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"NtCreateEvent should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"CreateEventA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"CreateSemaphoreA failed got ret=%p (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [82 x i8] c"NtCreateSemaphore should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [82 x i8] c"CreateSemaphoreA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"CreateWaitableTimerA failed got ret=%p (%d)\0A\00", align 1
@NotificationTimer = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [78 x i8] c"NtCreateTimer should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [86 x i8] c"CreateWaitableTimerA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"CreateFileMappingA failed got ret=%p (%d)\0A\00", align 1
@SECTION_MAP_WRITE = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [80 x i8] c"NtCreateSection should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [84 x i8] c"CreateFileMappingA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_name_collisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_name_collisions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = call i32 @InitializeObjectAttributes(i32* %3, i32* %2, i32 0, i32* null, i32* null)
  %11 = call i32 @pRtlCreateUnicodeStringFromAsciiz(i32* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @DIRECTORY_QUERY, align 4
  %13 = call i32 @pNtCreateDirectoryObject(i32** %5, i32 %12, i32* %3)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @STATUS_OBJECT_NAME_COLLISION, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 (i32, i8*, i32*, ...) @ok(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %20)
  %22 = load i32, i32* @OBJ_OPENIF, align 4
  %23 = call i32 @InitializeObjectAttributes(i32* %3, i32* %2, i32 %22, i32* null, i32* null)
  %24 = load i32, i32* @DIRECTORY_QUERY, align 4
  %25 = call i32 @pNtCreateDirectoryObject(i32** %5, i32 %24, i32* %3)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @STATUS_OBJECT_NAME_EXISTS, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 (i32, i8*, i32*, ...) @ok(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @pNtClose(i32* %34)
  %36 = load i32, i32* @GENERIC_ALL, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @pNtCreateMutant(i32** %5, i32 %36, i32* %3, i32 %37)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @STATUS_OBJECT_TYPE_MISMATCH, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 (i32, i8*, i32*, ...) @ok(i32 %42, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  %47 = call i32 @pRtlFreeUnicodeString(i32* %2)
  %48 = call i32 @pRtlCreateUnicodeStringFromAsciiz(i32* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @GENERIC_ALL, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @pNtCreateMutant(i32** %5, i32 %49, i32* %3, i32 %50)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @STATUS_OBJECT_TYPE_MISMATCH, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %0
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @STATUS_OBJECT_PATH_NOT_FOUND, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %0
  %60 = phi i1 [ true, %0 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i32*
  %65 = call i32 (i32, i8*, i32*, ...) @ok(i32 %61, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32* %64)
  %66 = call i32 @pRtlFreeUnicodeString(i32* %2)
  %67 = call i32* (...) @get_base_dir()
  store i32* %67, i32** %4, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %59
  %70 = call i32 @win_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %311

71:                                               ; preds = %59
  %72 = call i32 @pRtlCreateUnicodeStringFromAsciiz(i32* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @OBJ_OPENIF, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @InitializeObjectAttributes(i32* %3, i32* %2, i32 %73, i32* %74, i32* null)
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32* @CreateMutexA(i32* null, i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %77, i32** %5, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 (...) @GetLastError()
  %83 = call i32 (i32, i8*, i32*, ...) @ok(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32* %81, i64 %82)
  %84 = load i32, i32* @GENERIC_ALL, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = call i32 @pNtCreateMutant(i32** %6, i32 %84, i32* %3, i32 %85)
  store i32 %86, i32* %1, align 4
  %87 = load i32, i32* %1, align 4
  %88 = load i32, i32* @STATUS_OBJECT_NAME_EXISTS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %71
  %91 = load i32*, i32** %6, align 8
  %92 = icmp ne i32* %91, null
  br label %93

93:                                               ; preds = %90, %71
  %94 = phi i1 [ false, %71 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 (i32, i8*, i32*, ...) @ok(i32 %95, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0), i32* %98)
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32* @CreateMutexA(i32* null, i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %101, i32** %7, align 8
  %102 = call i64 (...) @GetLastError()
  store i64 %102, i64* %8, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %108 = icmp eq i64 %106, %107
  br label %109

109:                                              ; preds = %105, %93
  %110 = phi i1 [ false, %93 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  %112 = load i32*, i32** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i32 (i32, i8*, i32*, ...) @ok(i32 %111, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0), i32* %112, i64 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @pNtClose(i32* %115)
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @pNtClose(i32* %117)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @pNtClose(i32* %119)
  %121 = load i32, i32* @FALSE, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = call i32* @CreateEventA(i32* null, i32 %121, i32 %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %123, i32** %5, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = icmp ne i32* %124, null
  %126 = zext i1 %125 to i32
  %127 = load i32*, i32** %5, align 8
  %128 = call i64 (...) @GetLastError()
  %129 = call i32 (i32, i8*, i32*, ...) @ok(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32* %127, i64 %128)
  %130 = load i32, i32* @GENERIC_ALL, align 4
  %131 = load i32, i32* @FALSE, align 4
  %132 = load i32, i32* @FALSE, align 4
  %133 = call i32 @pNtCreateEvent(i32** %6, i32 %130, i32* %3, i32 %131, i32 %132)
  store i32 %133, i32* %1, align 4
  %134 = load i32, i32* %1, align 4
  %135 = load i32, i32* @STATUS_OBJECT_NAME_EXISTS, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %109
  %138 = load i32*, i32** %6, align 8
  %139 = icmp ne i32* %138, null
  br label %140

140:                                              ; preds = %137, %109
  %141 = phi i1 [ false, %109 ], [ %139, %137 ]
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %1, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i32*
  %146 = call i32 (i32, i8*, i32*, ...) @ok(i32 %142, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0), i32* %145)
  %147 = load i32, i32* @FALSE, align 4
  %148 = load i32, i32* @FALSE, align 4
  %149 = call i32* @CreateEventA(i32* null, i32 %147, i32 %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %149, i32** %7, align 8
  %150 = call i64 (...) @GetLastError()
  store i64 %150, i64* %8, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %140
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %153, %140
  %158 = phi i1 [ false, %140 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = load i32*, i32** %7, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 (i32, i8*, i32*, ...) @ok(i32 %159, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0), i32* %160, i64 %161)
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @pNtClose(i32* %163)
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @pNtClose(i32* %165)
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @pNtClose(i32* %167)
  %169 = call i32* @CreateSemaphoreA(i32* null, i32 1, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %169, i32** %5, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = icmp ne i32* %170, null
  %172 = zext i1 %171 to i32
  %173 = load i32*, i32** %5, align 8
  %174 = call i64 (...) @GetLastError()
  %175 = call i32 (i32, i8*, i32*, ...) @ok(i32 %172, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32* %173, i64 %174)
  %176 = load i32, i32* @GENERIC_ALL, align 4
  %177 = call i32 @pNtCreateSemaphore(i32** %6, i32 %176, i32* %3, i32 1, i32 2)
  store i32 %177, i32* %1, align 4
  %178 = load i32, i32* %1, align 4
  %179 = load i32, i32* @STATUS_OBJECT_NAME_EXISTS, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %157
  %182 = load i32*, i32** %6, align 8
  %183 = icmp ne i32* %182, null
  br label %184

184:                                              ; preds = %181, %157
  %185 = phi i1 [ false, %157 ], [ %183, %181 ]
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i32*
  %190 = call i32 (i32, i8*, i32*, ...) @ok(i32 %186, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.13, i64 0, i64 0), i32* %189)
  %191 = call i32* @CreateSemaphoreA(i32* null, i32 1, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %191, i32** %7, align 8
  %192 = call i64 (...) @GetLastError()
  store i64 %192, i64* %8, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %184
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %198 = icmp eq i64 %196, %197
  br label %199

199:                                              ; preds = %195, %184
  %200 = phi i1 [ false, %184 ], [ %198, %195 ]
  %201 = zext i1 %200 to i32
  %202 = load i32*, i32** %7, align 8
  %203 = load i64, i64* %8, align 8
  %204 = call i32 (i32, i8*, i32*, ...) @ok(i32 %201, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.14, i64 0, i64 0), i32* %202, i64 %203)
  %205 = load i32*, i32** %5, align 8
  %206 = call i32 @pNtClose(i32* %205)
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @pNtClose(i32* %207)
  %209 = load i32*, i32** %7, align 8
  %210 = call i32 @pNtClose(i32* %209)
  %211 = load i32, i32* @TRUE, align 4
  %212 = call i32* @pCreateWaitableTimerA(i32* null, i32 %211, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %212, i32** %5, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = icmp ne i32* %213, null
  %215 = zext i1 %214 to i32
  %216 = load i32*, i32** %5, align 8
  %217 = call i64 (...) @GetLastError()
  %218 = call i32 (i32, i8*, i32*, ...) @ok(i32 %215, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32* %216, i64 %217)
  %219 = load i32, i32* @GENERIC_ALL, align 4
  %220 = load i32, i32* @NotificationTimer, align 4
  %221 = call i32 @pNtCreateTimer(i32** %6, i32 %219, i32* %3, i32 %220)
  store i32 %221, i32* %1, align 4
  %222 = load i32, i32* %1, align 4
  %223 = load i32, i32* @STATUS_OBJECT_NAME_EXISTS, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %199
  %226 = load i32*, i32** %6, align 8
  %227 = icmp ne i32* %226, null
  br label %228

228:                                              ; preds = %225, %199
  %229 = phi i1 [ false, %199 ], [ %227, %225 ]
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* %1, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i32*
  %234 = call i32 (i32, i8*, i32*, ...) @ok(i32 %230, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i64 0, i64 0), i32* %233)
  %235 = load i32, i32* @TRUE, align 4
  %236 = call i32* @pCreateWaitableTimerA(i32* null, i32 %235, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %236, i32** %7, align 8
  %237 = call i64 (...) @GetLastError()
  store i64 %237, i64* %8, align 8
  %238 = load i32*, i32** %7, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %228
  %241 = load i64, i64* %8, align 8
  %242 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %243 = icmp eq i64 %241, %242
  br label %244

244:                                              ; preds = %240, %228
  %245 = phi i1 [ false, %228 ], [ %243, %240 ]
  %246 = zext i1 %245 to i32
  %247 = load i32*, i32** %7, align 8
  %248 = load i64, i64* %8, align 8
  %249 = call i32 (i32, i8*, i32*, ...) @ok(i32 %246, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.17, i64 0, i64 0), i32* %247, i64 %248)
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @pNtClose(i32* %250)
  %252 = load i32*, i32** %6, align 8
  %253 = call i32 @pNtClose(i32* %252)
  %254 = load i32*, i32** %7, align 8
  %255 = call i32 @pNtClose(i32* %254)
  %256 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %257 = load i32, i32* @PAGE_READWRITE, align 4
  %258 = call i32* @CreateFileMappingA(i32 %256, i32* null, i32 %257, i32 0, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %258, i32** %5, align 8
  %259 = load i32*, i32** %5, align 8
  %260 = icmp ne i32* %259, null
  %261 = zext i1 %260 to i32
  %262 = load i32*, i32** %5, align 8
  %263 = call i64 (...) @GetLastError()
  %264 = call i32 (i32, i8*, i32*, ...) @ok(i32 %261, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i32* %262, i64 %263)
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  store i32 256, i32* %266, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  store i64 0, i64* %268, align 8
  %269 = load i32, i32* @SECTION_MAP_WRITE, align 4
  %270 = load i32, i32* @PAGE_READWRITE, align 4
  %271 = load i32, i32* @SEC_COMMIT, align 4
  %272 = call i32 @pNtCreateSection(i32** %6, i32 %269, i32* %3, %struct.TYPE_5__* %9, i32 %270, i32 %271, i32 0)
  store i32 %272, i32* %1, align 4
  %273 = load i32, i32* %1, align 4
  %274 = load i32, i32* @STATUS_OBJECT_NAME_EXISTS, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %244
  %277 = load i32*, i32** %6, align 8
  %278 = icmp ne i32* %277, null
  br label %279

279:                                              ; preds = %276, %244
  %280 = phi i1 [ false, %244 ], [ %278, %276 ]
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %1, align 4
  %283 = sext i32 %282 to i64
  %284 = inttoptr i64 %283 to i32*
  %285 = call i32 (i32, i8*, i32*, ...) @ok(i32 %281, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.19, i64 0, i64 0), i32* %284)
  %286 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %287 = load i32, i32* @PAGE_READWRITE, align 4
  %288 = call i32* @CreateFileMappingA(i32 %286, i32* null, i32 %287, i32 0, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %288, i32** %7, align 8
  %289 = call i64 (...) @GetLastError()
  store i64 %289, i64* %8, align 8
  %290 = load i32*, i32** %7, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %296

292:                                              ; preds = %279
  %293 = load i64, i64* %8, align 8
  %294 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %295 = icmp eq i64 %293, %294
  br label %296

296:                                              ; preds = %292, %279
  %297 = phi i1 [ false, %279 ], [ %295, %292 ]
  %298 = zext i1 %297 to i32
  %299 = load i32*, i32** %7, align 8
  %300 = load i64, i64* %8, align 8
  %301 = call i32 (i32, i8*, i32*, ...) @ok(i32 %298, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.20, i64 0, i64 0), i32* %299, i64 %300)
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @pNtClose(i32* %302)
  %304 = load i32*, i32** %6, align 8
  %305 = call i32 @pNtClose(i32* %304)
  %306 = load i32*, i32** %7, align 8
  %307 = call i32 @pNtClose(i32* %306)
  %308 = call i32 @pRtlFreeUnicodeString(i32* %2)
  %309 = load i32*, i32** %4, align 8
  %310 = call i32 @pNtClose(i32* %309)
  br label %311

311:                                              ; preds = %296, %69
  ret void
}

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @pRtlCreateUnicodeStringFromAsciiz(i32*, i8*) #1

declare dso_local i32 @pNtCreateDirectoryObject(i32**, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32*, ...) #1

declare dso_local i32 @pNtClose(i32*) #1

declare dso_local i32 @pNtCreateMutant(i32**, i32, i32*, i32) #1

declare dso_local i32 @pRtlFreeUnicodeString(i32*) #1

declare dso_local i32* @get_base_dir(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32* @CreateMutexA(i32*, i32, i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @CreateEventA(i32*, i32, i32, i8*) #1

declare dso_local i32 @pNtCreateEvent(i32**, i32, i32*, i32, i32) #1

declare dso_local i32* @CreateSemaphoreA(i32*, i32, i32, i8*) #1

declare dso_local i32 @pNtCreateSemaphore(i32**, i32, i32*, i32, i32) #1

declare dso_local i32* @pCreateWaitableTimerA(i32*, i32, i8*) #1

declare dso_local i32 @pNtCreateTimer(i32**, i32, i32*, i32) #1

declare dso_local i32* @CreateFileMappingA(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @pNtCreateSection(i32**, i32, i32*, %struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
