; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_test_winmodule.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_test_winmodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"AtlWinModuleInit failed: %08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"winmod.m_pCreateWndList = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"winmod.m_csWindowCreate.LockCount = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"winmod.m_rgWindowClassAtoms.m_aT = %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"winmod.m_rgWindowClassAtoms.m_nSize = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"winmod.m_rgWindowClassAtoms.m_nAllocSize = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"winmod.m_pCreateWndList != create_data\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"unexpected create_data[0].m_pThis %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"unexpected create_data[0].m_dwThreadID %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unexpected create_data[0].m_pNext %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"unexpected create_data[1].m_pThis %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"unexpected create_data[1].m_dwThreadID %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"unexpected create_data[1].m_pNext %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"unexpected create_data[2].m_pThis %p\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"unexpected create_data[2].m_dwThreadID %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"unexpected create_data[2].m_pNext %p\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"unexpected AtlWinModuleExtractCreateWndData result %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_winmodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_winmodule() #0 {
  %1 = alloca [3 x %struct.TYPE_10__], align 16
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i32 -559038737, i32* %5, align 8
  %6 = call i64 @AtlWinModuleInit(%struct.TYPE_11__* %2)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @E_INVALIDARG, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  store i32 40, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store %struct.TYPE_10__* inttoptr (i64 3735928559 to %struct.TYPE_10__*), %struct.TYPE_10__** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 -559038737, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i8* inttoptr (i64 3735928559 to i8*), i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 -559038737, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 -559038737, i32* %22, align 4
  %23 = call i64 @AtlWinModuleInit(%struct.TYPE_11__* %2)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, -1
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %49, inttoptr (i64 3735928559 to i8*)
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, -559038737
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -559038737
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 2
  %75 = call i32 @InitializeCriticalSection(%struct.TYPE_12__* %74)
  %76 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %77 = call i32 @AtlWinModuleAddCreateWndData(%struct.TYPE_11__* %2, %struct.TYPE_10__* %76, i8* inttoptr (i64 3735879681 to i8*))
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %81 = icmp eq %struct.TYPE_10__* %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %84 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 16
  %87 = icmp eq i8* %86, inttoptr (i64 3735879681 to i8*)
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 16
  %92 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  %93 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 16
  %96 = call i32 (...) @GetCurrentThreadId()
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 16
  %102 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_10__* %111)
  %113 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 1
  %115 = call i32 @AtlWinModuleAddCreateWndData(%struct.TYPE_11__* %2, %struct.TYPE_10__* %114, i8* inttoptr (i64 3735879682 to i8*))
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 1
  %120 = icmp eq %struct.TYPE_10__* %117, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %123 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp eq i8* %125, inttoptr (i64 3735879682 to i8*)
  %127 = zext i1 %126 to i32
  %128 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %130)
  %132 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (...) @GetCurrentThreadId()
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %146 = icmp eq %struct.TYPE_10__* %144, %145
  %147 = zext i1 %146 to i32
  %148 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_10__* %150)
  %152 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 2
  %154 = call i32 @AtlWinModuleAddCreateWndData(%struct.TYPE_11__* %2, %struct.TYPE_10__* %153, i8* inttoptr (i64 3735879683 to i8*))
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i64 2
  %159 = icmp eq %struct.TYPE_10__* %156, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %162 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 16
  %165 = icmp eq i8* %164, inttoptr (i64 3735879683 to i8*)
  %166 = zext i1 %165 to i32
  %167 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 2
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 16
  %170 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %169)
  %171 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 2
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 16
  %174 = call i32 (...) @GetCurrentThreadId()
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 2
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 16
  %180 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 2
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 1
  %186 = icmp eq %struct.TYPE_10__* %183, %185
  %187 = zext i1 %186 to i32
  %188 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 2
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_10__* %190)
  %192 = call i8* @AtlWinModuleExtractCreateWndData(%struct.TYPE_11__* %2)
  store i8* %192, i8** %3, align 8
  %193 = load i8*, i8** %3, align 8
  %194 = icmp eq i8* %193, inttoptr (i64 3735879683 to i8*)
  %195 = zext i1 %194 to i32
  %196 = load i8*, i8** %3, align 8
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i8* %196)
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 1
  %202 = icmp eq %struct.TYPE_10__* %199, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %205 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 2
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 1
  %210 = icmp eq %struct.TYPE_10__* %207, %209
  %211 = zext i1 %210 to i32
  %212 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 2
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_10__* %214)
  %216 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  store i32 -559038737, i32* %217, align 8
  %218 = call i8* @AtlWinModuleExtractCreateWndData(%struct.TYPE_11__* %2)
  store i8* %218, i8** %3, align 8
  %219 = load i8*, i8** %3, align 8
  %220 = icmp eq i8* %219, inttoptr (i64 3735879681 to i8*)
  %221 = zext i1 %220 to i32
  %222 = load i8*, i8** %3, align 8
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i8* %222)
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i64 1
  %228 = icmp eq %struct.TYPE_10__* %225, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %231 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = icmp ne %struct.TYPE_10__* %233, null
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_10__* %239)
  %241 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = icmp ne %struct.TYPE_10__* %243, null
  %245 = xor i1 %244, true
  %246 = zext i1 %245 to i32
  %247 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 1
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_10__* %249)
  %251 = call i8* @AtlWinModuleExtractCreateWndData(%struct.TYPE_11__* %2)
  store i8* %251, i8** %3, align 8
  %252 = load i8*, i8** %3, align 8
  %253 = icmp ne i8* %252, null
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = load i8*, i8** %3, align 8
  %257 = call i32 (i32, i8*, ...) @ok(i32 %255, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i8* %256)
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %258, align 8
  %260 = getelementptr inbounds [3 x %struct.TYPE_10__], [3 x %struct.TYPE_10__]* %1, i64 0, i64 0
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i64 1
  %262 = icmp eq %struct.TYPE_10__* %259, %261
  %263 = zext i1 %262 to i32
  %264 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i64 @AtlWinModuleInit(%struct.TYPE_11__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @InitializeCriticalSection(%struct.TYPE_12__*) #1

declare dso_local i32 @AtlWinModuleAddCreateWndData(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i8* @AtlWinModuleExtractCreateWndData(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
