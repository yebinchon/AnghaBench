; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_module.c_test_winmodule.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_module.c_test_winmodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"AtlModuleInit failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"winmod.m_pCreateWndList = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"winmod.m_csWindowCreate.LockCount = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"winmod.m_pCreateWndList != create_data\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"unexpected create_data[0].m_pThis %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"unexpected create_data[0].m_dwThreadID %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"unexpected create_data[0].m_pNext %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"unexpected create_data[1].m_pThis %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"unexpected create_data[1].m_dwThreadID %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unexpected create_data[1].m_pNext %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"unexpected create_data[2].m_pThis %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"unexpected create_data[2].m_dwThreadID %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"unexpected create_data[2].m_pNext %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"unexpected AtlModuleExtractCreateWndData result %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_winmodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_winmodule() #0 {
  %1 = alloca [3 x %struct.TYPE_9__], align 16
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 24, i32* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store %struct.TYPE_9__* inttoptr (i64 3735928559 to %struct.TYPE_9__*), %struct.TYPE_9__** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 -559038737, i32* %8, align 8
  %9 = call i64 @AtlModuleInit(%struct.TYPE_10__* %2, i32* null, i32* null)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %4, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %34 = call i32 @AtlModuleAddCreateWndData(%struct.TYPE_10__* %2, %struct.TYPE_9__* %33, i8* inttoptr (i64 3735879681 to i8*))
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %38 = icmp eq %struct.TYPE_9__* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %41 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 16
  %44 = icmp eq i8* %43, inttoptr (i64 3735879681 to i8*)
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 16
  %49 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 16
  %53 = call i32 (...) @GetCurrentThreadId()
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 16
  %59 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_9__* %68)
  %70 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 1
  %72 = call i32 @AtlModuleAddCreateWndData(%struct.TYPE_10__* %2, %struct.TYPE_9__* %71, i8* inttoptr (i64 3735879682 to i8*))
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 1
  %77 = icmp eq %struct.TYPE_9__* %74, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %80 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp eq i8* %82, inttoptr (i64 3735879682 to i8*)
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  %89 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (...) @GetCurrentThreadId()
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %103 = icmp eq %struct.TYPE_9__* %101, %102
  %104 = zext i1 %103 to i32
  %105 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_9__* %107)
  %109 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 2
  %111 = call i32 @AtlModuleAddCreateWndData(%struct.TYPE_10__* %2, %struct.TYPE_9__* %110, i8* inttoptr (i64 3735879683 to i8*))
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 2
  %116 = icmp eq %struct.TYPE_9__* %113, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %119 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 16
  %122 = icmp eq i8* %121, inttoptr (i64 3735879683 to i8*)
  %123 = zext i1 %122 to i32
  %124 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 16
  %127 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %126)
  %128 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 16
  %131 = call i32 (...) @GetCurrentThreadId()
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 16
  %137 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 1
  %143 = icmp eq %struct.TYPE_9__* %140, %142
  %144 = zext i1 %143 to i32
  %145 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 2
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_9__* %147)
  %149 = call i8* @AtlModuleExtractCreateWndData(%struct.TYPE_10__* %2)
  store i8* %149, i8** %3, align 8
  %150 = load i8*, i8** %3, align 8
  %151 = icmp eq i8* %150, inttoptr (i64 3735879683 to i8*)
  %152 = zext i1 %151 to i32
  %153 = load i8*, i8** %3, align 8
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i8* %153)
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 1
  %159 = icmp eq %struct.TYPE_9__* %156, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %162 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 2
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 1
  %167 = icmp eq %struct.TYPE_9__* %164, %166
  %168 = zext i1 %167 to i32
  %169 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 2
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_9__* %171)
  %173 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  store i32 -559038737, i32* %174, align 8
  %175 = call i8* @AtlModuleExtractCreateWndData(%struct.TYPE_10__* %2)
  store i8* %175, i8** %3, align 8
  %176 = load i8*, i8** %3, align 8
  %177 = icmp eq i8* %176, inttoptr (i64 3735879681 to i8*)
  %178 = zext i1 %177 to i32
  %179 = load i8*, i8** %3, align 8
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i8* %179)
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 1
  %185 = icmp eq %struct.TYPE_9__* %182, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %188 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = icmp ne %struct.TYPE_9__* %190, null
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_9__* %196)
  %198 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = icmp ne %struct.TYPE_9__* %200, null
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_9__* %206)
  %208 = call i8* @AtlModuleExtractCreateWndData(%struct.TYPE_10__* %2)
  store i8* %208, i8** %3, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = icmp ne i8* %209, null
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = load i8*, i8** %3, align 8
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i8* %213)
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %1, i64 0, i64 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 1
  %219 = icmp eq %struct.TYPE_9__* %216, %218
  %220 = zext i1 %219 to i32
  %221 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @AtlModuleInit(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @AtlModuleAddCreateWndData(%struct.TYPE_10__*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i8* @AtlModuleExtractCreateWndData(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
