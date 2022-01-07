; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_QueryServiceConfig2.c_QueryConfig2W.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_QueryServiceConfig2.c_QueryConfig2W.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"(bError, GetLastError()) = (%u, 0x%08lx), expected (FALSE, 0x%08lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"dwRequiredSize is zero, expected non-zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Required size is null; cannot proceed with QueryConfig2W --> %lu test\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot allocate %lu bytes of memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"bError = %u, expected TRUE\0A\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"QueryServiceConfig2W returned an error; cannot proceed with QueryConfig2W --> %lu test\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 37, i32 115, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"RegOpenKeyExW failed with 0x%08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"No regkey; cannot proceed with QueryConfig2W --> %lu test\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i32] [i32 68, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"RegReadStringW returned 0x%08lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"lpszDescription is null, expected non-null\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Retrieved descriptions are different !\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i32] [i32 70, i32 97, i32 105, i32 108, i32 117, i32 114, i32 101, i32 65, i32 99, i32 116, i32 105, i32 111, i32 110, i32 115, i32 0], align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"RegQueryValueExW returned 0x%08lx\0A\00", align 1
@REG_BINARY = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [35 x i8] c"dwType = %lu, expected REG_BINARY\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i32] [i32 70, i32 97, i32 105, i32 108, i32 117, i32 114, i32 101, i32 67, i32 111, i32 109, i32 109, i32 97, i32 110, i32 100, i32 0], align 4
@.str.17 = private unnamed_addr constant [14 x i32] [i32 82, i32 101, i32 98, i32 111, i32 111, i32 116, i32 77, i32 101, i32 115, i32 115, i32 97, i32 103, i32 101, i32 0], align 4
@.str.18 = private unnamed_addr constant [70 x i8] c"lpFailureActions1->dwResetPeriod != lpFailureActions2->dwResetPeriod\0A\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"lpFailureActions1->cActions != lpFailureActions2->cActions\0A\00", align 1
@.str.20 = private unnamed_addr constant [87 x i8] c"lpFailureActions1->lpsaActions[%lu].Type  != lpFailureActions2->lpsaActions[%lu].Type\0A\00", align 1
@.str.21 = private unnamed_addr constant [88 x i8] c"lpFailureActions1->lpsaActions[%lu].Delay != lpFailureActions2->lpsaActions[%lu].Delay\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Retrieved reboot messages are different !\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Retrieved commands are different !\0A\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"Unknown dwInfoLevel %lu, cannot proceed with QueryConfig2W --> %lu test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @QueryConfig2W to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryConfig2W(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca [256 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  store i32* null, i32** %15, align 8
  store i64 0, i64* %16, align 8
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @QueryServiceConfig2W(i32 %26, i64 %27, %struct.TYPE_12__* null, i64 0, i64* %12)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %3
  %37 = phi i1 [ false, %3 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %11, align 4
  %40 = call i64 (...) @GetLastError()
  %41 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i64, i64* %7, align 8
  %51 = call i32 (i8*, i64, ...) @skip(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  store i32 1, i32* %4, align 4
  br label %351

52:                                               ; preds = %36
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %55 = load i64, i64* %12, align 8
  %56 = call %struct.TYPE_12__* @HeapAlloc(i32 %53, i32 %54, i64 %55)
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %13, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %58 = icmp eq %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i64, i64* %12, align 8
  %61 = call i32 (i8*, i64, ...) @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  store i32 2, i32* %4, align 4
  br label %351

62:                                               ; preds = %52
  %63 = call i32 @SetLastError(i32 -559038737)
  %64 = load i32, i32* %5, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @QueryServiceConfig2W(i32 %64, i64 %65, %struct.TYPE_12__* %66, i64 %67, i64* %12)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @FALSE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load i64, i64* %7, align 8
  %77 = call i32 (i8*, i64, ...) @skip(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0), i64 %76)
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = call i32 @HeapFree(i32 %78, i32 0, %struct.TYPE_12__* %79)
  store i32 3, i32* %4, align 4
  br label %351

81:                                               ; preds = %62
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 0
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @StringCbPrintfW(i32* %82, i32 1024, i8* bitcast ([37 x i32]* @.str.6 to i8*), i32 %83)
  %85 = call i32 @SetLastError(i32 -559038737)
  %86 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %87 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 0
  %88 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %89 = call i64 @RegOpenKeyExW(i32 %86, i32* %87, i32 0, i32 %88, i32** %15)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %9, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %94)
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %81
  %100 = load i64, i64* %7, align 8
  %101 = call i32 (i8*, i64, ...) @skip(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i64 %100)
  %102 = call i32 (...) @GetProcessHeap()
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %104 = call i32 @HeapFree(i32 %102, i32 0, %struct.TYPE_12__* %103)
  store i32 4, i32* %4, align 4
  br label %351

105:                                              ; preds = %81
  %106 = load i64, i64* %7, align 8
  switch i64 %106, label %341 [
    i64 129, label %107
    i64 128, label %139
  ]

107:                                              ; preds = %105
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %109 = bitcast %struct.TYPE_12__* %108 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %18, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = call i64 @RegReadStringW(i32* %110, i8* bitcast ([12 x i32]* @.str.9 to i8*), %struct.TYPE_12__** %18)
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @ERROR_SUCCESS, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %10, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %119 = icmp ne %struct.TYPE_12__* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %123 = icmp ne %struct.TYPE_12__* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %107
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %129 = call i32 @wcscmp(i32 %127, %struct.TYPE_12__* %128)
  store i32 %129, i32* %8, align 4
  br label %131

130:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %124
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %136 = call i32 (...) @GetProcessHeap()
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %138 = call i32 @HeapFree(i32 %136, i32 0, %struct.TYPE_12__* %137)
  br label %345

139:                                              ; preds = %105
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %22, align 8
  store i64 0, i64* %23, align 8
  %141 = load i32*, i32** %15, align 8
  %142 = call i64 @RegQueryValueExW(i32* %141, i8* bitcast ([15 x i32]* @.str.13 to i8*), i32* null, i64* %16, %struct.TYPE_12__* null, i64* %12)
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* @ERROR_SUCCESS, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %9, align 8
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i64 %147)
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* @REG_BINARY, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %16, align 8
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i64 %153)
  %155 = load i64, i64* %12, align 8
  %156 = icmp ne i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %159 = call i32 (...) @GetProcessHeap()
  %160 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %161 = load i64, i64* %12, align 8
  %162 = call %struct.TYPE_12__* @HeapAlloc(i32 %159, i32 %160, i64 %161)
  store %struct.TYPE_12__* %162, %struct.TYPE_12__** %20, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %164 = icmp eq %struct.TYPE_12__* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %139
  %166 = load i64, i64* %12, align 8
  %167 = call i32 (i8*, i64, ...) @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %166)
  br label %345

168:                                              ; preds = %139
  %169 = load i32*, i32** %15, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %171 = call i64 @RegQueryValueExW(i32* %169, i8* bitcast ([15 x i32]* @.str.13 to i8*), i32* null, i64* null, %struct.TYPE_12__* %170, i64* %12)
  store i64 %171, i64* %9, align 8
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* @ERROR_SUCCESS, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %9, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i64 %176)
  %178 = load i64, i64* %12, align 8
  %179 = icmp ne i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %182 = load i32*, i32** %15, align 8
  %183 = call i64 @RegReadStringW(i32* %182, i8* bitcast ([15 x i32]* @.str.16 to i8*), %struct.TYPE_12__** %22)
  %184 = load i32*, i32** %15, align 8
  %185 = call i64 @RegReadStringW(i32* %184, i8* bitcast ([14 x i32]* @.str.17 to i8*), %struct.TYPE_12__** %21)
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %188, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.18, i64 0, i64 0))
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %197, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0))
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  br i1 %210, label %211, label %285

211:                                              ; preds = %168
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i64 1
  %219 = bitcast %struct.TYPE_12__* %218 to %struct.TYPE_14__*
  br label %221

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220, %216
  %222 = phi %struct.TYPE_14__* [ %219, %216 ], [ null, %220 ]
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 3
  store %struct.TYPE_14__* %222, %struct.TYPE_14__** %224, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %284

229:                                              ; preds = %221
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = icmp ne %struct.TYPE_14__* %232, null
  br i1 %233, label %234, label %284

234:                                              ; preds = %229
  store i64 0, i64* %23, align 8
  br label %235

235:                                              ; preds = %280, %234
  %236 = load i64, i64* %23, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp slt i64 %236, %239
  br i1 %240, label %241, label %283

241:                                              ; preds = %235
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = load i64, i64* %23, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %250, align 8
  %252 = load i64, i64* %23, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %248, %255
  %257 = zext i1 %256 to i32
  %258 = load i64, i64* %23, align 8
  %259 = load i64, i64* %23, align 8
  %260 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.20, i64 0, i64 0), i64 %258, i64 %259)
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %262, align 8
  %264 = load i64, i64* %23, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %269, align 8
  %271 = load i64, i64* %23, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %267, %274
  %276 = zext i1 %275 to i32
  %277 = load i64, i64* %23, align 8
  %278 = load i64, i64* %23, align 8
  %279 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.21, i64 0, i64 0), i64 %277, i64 %278)
  br label %280

280:                                              ; preds = %241
  %281 = load i64, i64* %23, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %23, align 8
  br label %235

283:                                              ; preds = %235
  br label %284

284:                                              ; preds = %283, %229, %221
  br label %285

285:                                              ; preds = %284, %168
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %285
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %292 = icmp ne %struct.TYPE_12__* %291, null
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %298 = call i32 @wcscmp(i32 %296, %struct.TYPE_12__* %297)
  store i32 %298, i32* %8, align 4
  br label %300

299:                                              ; preds = %290, %285
  store i32 0, i32* %8, align 4
  br label %300

300:                                              ; preds = %299, %293
  %301 = load i32, i32* %8, align 4
  %302 = icmp eq i32 %301, 0
  %303 = zext i1 %302 to i32
  %304 = call i32 (i32, i8*, ...) @ok(i32 %303, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %300
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %311 = icmp ne %struct.TYPE_12__* %310, null
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %317 = call i32 @wcscmp(i32 %315, %struct.TYPE_12__* %316)
  store i32 %317, i32* %8, align 4
  br label %319

318:                                              ; preds = %309, %300
  store i32 0, i32* %8, align 4
  br label %319

319:                                              ; preds = %318, %312
  %320 = load i32, i32* %8, align 4
  %321 = icmp eq i32 %320, 0
  %322 = zext i1 %321 to i32
  %323 = call i32 (i32, i8*, ...) @ok(i32 %322, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %325 = icmp ne %struct.TYPE_12__* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %319
  %327 = call i32 (...) @GetProcessHeap()
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %329 = call i32 @HeapFree(i32 %327, i32 0, %struct.TYPE_12__* %328)
  br label %330

330:                                              ; preds = %326, %319
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %332 = icmp ne %struct.TYPE_12__* %331, null
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = call i32 (...) @GetProcessHeap()
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %336 = call i32 @HeapFree(i32 %334, i32 0, %struct.TYPE_12__* %335)
  br label %337

337:                                              ; preds = %333, %330
  %338 = call i32 (...) @GetProcessHeap()
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %340 = call i32 @HeapFree(i32 %338, i32 0, %struct.TYPE_12__* %339)
  br label %345

341:                                              ; preds = %105
  %342 = load i64, i64* %7, align 8
  %343 = load i64, i64* %7, align 8
  %344 = call i32 (i8*, i64, ...) @skip(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.24, i64 0, i64 0), i64 %342, i64 %343)
  br label %345

345:                                              ; preds = %341, %337, %165, %131
  %346 = load i32*, i32** %15, align 8
  %347 = call i32 @RegCloseKey(i32* %346)
  %348 = call i32 (...) @GetProcessHeap()
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %350 = call i32 @HeapFree(i32 %348, i32 0, %struct.TYPE_12__* %349)
  store i32 0, i32* %4, align 4
  br label %351

351:                                              ; preds = %345, %99, %75, %59, %49
  %352 = load i32, i32* %4, align 4
  ret i32 %352
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @QueryServiceConfig2W(i32, i64, %struct.TYPE_12__*, i64, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @skip(i8*, i64, ...) #1

declare dso_local %struct.TYPE_12__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @StringCbPrintfW(i32*, i32, i8*, i32) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32**) #1

declare dso_local i64 @RegReadStringW(i32*, i8*, %struct.TYPE_12__**) #1

declare dso_local i32 @wcscmp(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i64*, %struct.TYPE_12__*, i64*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
