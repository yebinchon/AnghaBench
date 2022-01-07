; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtQueryInformationProcess.c_Test_ProcessTimes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtQueryInformationProcess.c_Test_ProcessTimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@ProcessTimes = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@STATUS_INVALID_HANDLE = common dso_local global i32 0, align 4
@STATUS_DATATYPE_MISALIGNMENT = common dso_local global i32 0, align 4
@STATUS_ACCESS_VIOLATION = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NtQuerySystemTime failed with %lx\0A\00", align 1
@TestStartTime = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"CreateTime is %I64u, expected < %I64u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"CreateTime is %I64u, expected > %I64u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ExitTime is %I64u, expected 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"KernelTime is 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"UserTime is 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"CreateTimes not equal: %I64u != %I64u\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"KernelTime values inconsistent. Expected %I64u > %I64u\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"UserTime values inconsistent. Expected %I64u > %I64u\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"KernelTime values inconsistent. Expected %I64u - %I64u < %I64u\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"UserTime values inconsistent. Expected %I64u - %I64u < %I64u\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"KernelTime1 = %I64u\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"KernelTime2 = %I64u\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"UserTime1 = %I64u\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"UserTime2 = %I64u\0A\00", align 1
@SPIN_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_ProcessTimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_ProcessTimes() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_16__, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = load i32, i32* @ProcessTimes, align 4
  %8 = call i64 @NtQueryInformationProcess(i32* null, i32 %7, %struct.TYPE_16__* null, i32 0, i32* null)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %11 = call i32 @ok_hex(i64 %9, i32 %10)
  %12 = load i32, i32* @ProcessTimes, align 4
  %13 = call i64 @NtQueryInformationProcess(i32* null, i32 %12, %struct.TYPE_16__* null, i32 32, i32* null)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i32, i32* @STATUS_INVALID_HANDLE, align 4
  %16 = call i32 @ok_hex(i64 %14, i32 %15)
  %17 = call i32* (...) @NtCurrentProcess()
  %18 = load i32, i32* @ProcessTimes, align 4
  %19 = call i64 @NtQueryInformationProcess(i32* %17, i32 %18, %struct.TYPE_16__* null, i32 0, i32* null)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %22 = call i32 @ok_hex(i64 %20, i32 %21)
  %23 = call i32* (...) @NtCurrentProcess()
  %24 = load i32, i32* @ProcessTimes, align 4
  %25 = call i64 @NtQueryInformationProcess(i32* %23, i32 %24, %struct.TYPE_16__* inttoptr (i64 2 to %struct.TYPE_16__*), i32 0, i32* null)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %28 = call i32 @ok_hex(i64 %26, i32 %27)
  %29 = call i32* (...) @NtCurrentProcess()
  %30 = load i32, i32* @ProcessTimes, align 4
  %31 = call i64 @NtQueryInformationProcess(i32* %29, i32 %30, %struct.TYPE_16__* inttoptr (i64 2 to %struct.TYPE_16__*), i32 32, i32* null)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i32, i32* @STATUS_DATATYPE_MISALIGNMENT, align 4
  %34 = call i32 @ok_hex(i64 %32, i32 %33)
  %35 = call i32* (...) @NtCurrentProcess()
  %36 = load i32, i32* @ProcessTimes, align 4
  %37 = call i64 @NtQueryInformationProcess(i32* %35, i32 %36, %struct.TYPE_16__* null, i32 31, i32* null)
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %40 = call i32 @ok_hex(i64 %38, i32 %39)
  %41 = call i32* (...) @NtCurrentProcess()
  %42 = load i32, i32* @ProcessTimes, align 4
  %43 = call i64 @NtQueryInformationProcess(i32* %41, i32 %42, %struct.TYPE_16__* null, i32 32, i32* null)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %46 = call i32 @ok_hex(i64 %44, i32 %45)
  %47 = call i32* (...) @NtCurrentProcess()
  %48 = load i32, i32* @ProcessTimes, align 4
  %49 = call i64 @NtQueryInformationProcess(i32* %47, i32 %48, %struct.TYPE_16__* null, i32 33, i32* null)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %52 = call i32 @ok_hex(i64 %50, i32 %51)
  store i32 1431655765, i32* %4, align 4
  %53 = call i32* (...) @NtCurrentProcess()
  %54 = load i32, i32* @ProcessTimes, align 4
  %55 = call i64 @NtQueryInformationProcess(i32* %53, i32 %54, %struct.TYPE_16__* null, i32 31, i32* %4)
  store i64 %55, i64* %1, align 8
  %56 = load i64, i64* %1, align 8
  %57 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %58 = call i32 @ok_hex(i64 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ok_dec(i32 %59, i32 1431655765)
  %61 = call i64 @NtQuerySystemTime(%struct.TYPE_17__* %5)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  %64 = call i32 @ok_hex(i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %74, %0
  %66 = call i64 @NtQuerySystemTime(%struct.TYPE_17__* %6)
  store i64 %66, i64* %1, align 8
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @NT_SUCCESS(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %1, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %71)
  br label %81

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %76, %78
  %80 = icmp slt i64 %79, 1000000
  br i1 %80, label %65, label %81

81:                                               ; preds = %74, %70
  %82 = call i64 @NtQuerySystemTime(%struct.TYPE_17__* %5)
  store i64 %82, i64* %1, align 8
  %83 = load i64, i64* %1, align 8
  %84 = load i32, i32* @STATUS_SUCCESS, align 4
  %85 = call i32 @ok_hex(i64 %83, i32 %84)
  %86 = call i32 @RtlFillMemory(%struct.TYPE_16__* %2, i32 32, i32 85)
  %87 = call i32* (...) @NtCurrentProcess()
  %88 = load i32, i32* @ProcessTimes, align 4
  %89 = call i64 @NtQueryInformationProcess(i32* %87, i32 %88, %struct.TYPE_16__* %2, i32 32, i32* null)
  store i64 %89, i64* %1, align 8
  %90 = load i64, i64* %1, align 8
  %91 = load i32, i32* @STATUS_SUCCESS, align 4
  %92 = call i32 @ok_hex(i64 %90, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @TestStartTime, i32 0, i32 0), align 8
  %97 = icmp slt i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @TestStartTime, i32 0, i32 0), align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %102)
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @TestStartTime, i32 0, i32 0), align 8
  %108 = sub nsw i64 %107, 100000000
  %109 = icmp sgt i64 %106, %108
  %110 = zext i1 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @TestStartTime, i32 0, i32 0), align 8
  %115 = sub nsw i64 %114, 100000000
  %116 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %113, i64 %115)
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %124)
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %138

138:                                              ; preds = %147, %81
  %139 = call i64 @NtQuerySystemTime(%struct.TYPE_17__* %6)
  store i64 %139, i64* %1, align 8
  %140 = load i64, i64* %1, align 8
  %141 = call i32 @NT_SUCCESS(i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, i64* %1, align 8
  %145 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %144)
  br label %154

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %149, %151
  %153 = icmp slt i64 %152, 1000000
  br i1 %153, label %138, label %154

154:                                              ; preds = %147, %143
  store i32 1431655765, i32* %4, align 4
  %155 = call i32 @RtlFillMemory(%struct.TYPE_16__* %3, i32 32, i32 85)
  %156 = call i32* (...) @NtCurrentProcess()
  %157 = load i32, i32* @ProcessTimes, align 4
  %158 = call i64 @NtQueryInformationProcess(i32* %156, i32 %157, %struct.TYPE_16__* %3, i32 32, i32* %4)
  store i64 %158, i64* %1, align 8
  %159 = load i64, i64* %1, align 8
  %160 = load i32, i32* @STATUS_SUCCESS, align 4
  %161 = call i32 @ok_hex(i64 %159, i32 %160)
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @ok_dec(i32 %162, i32 32)
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  %171 = zext i1 %170 to i32
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %174, i64 %177)
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  %183 = zext i1 %182 to i32
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %186)
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %200 = call i64 @NtQuerySystemTime(%struct.TYPE_17__* %6)
  store i64 %200, i64* %1, align 8
  %201 = load i64, i64* %1, align 8
  %202 = load i32, i32* @STATUS_SUCCESS, align 4
  %203 = call i32 @ok_hex(i64 %201, i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %206, %209
  %211 = zext i1 %210 to i32
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 %214, i64 %217)
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp sgt i64 %221, %224
  %226 = zext i1 %225 to i32
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i64 %229, i64 %232)
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %236, %239
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = sub nsw i64 %242, %244
  %246 = icmp slt i64 %240, %245
  %247 = zext i1 %246 to i32
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %255, %257
  %259 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i64 %250, i64 %253, i64 %258)
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = sub nsw i64 %262, %265
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = sub nsw i64 %268, %270
  %272 = icmp slt i64 %266, %271
  %273 = zext i1 %272 to i32
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = sub nsw i64 %281, %283
  %285 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i64 %276, i64 %279, i64 %284)
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i64 %288)
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i64 %292)
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i64 %296)
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i64 %300)
  ret void
}

declare dso_local i64 @NtQueryInformationProcess(i32*, i32, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @ok_hex(i64, i32) #1

declare dso_local i32* @NtCurrentProcess(...) #1

declare dso_local i32 @ok_dec(i32, i32) #1

declare dso_local i64 @NtQuerySystemTime(%struct.TYPE_17__*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @RtlFillMemory(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @trace(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
