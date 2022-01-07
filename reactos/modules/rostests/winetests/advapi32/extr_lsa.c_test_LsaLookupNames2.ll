; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_lsa.c_test_LsaLookupNames2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_lsa.c_test_LsaLookupNames2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i8* }

@test_LsaLookupNames2.n1 = internal constant [13 x i8] c"LOCAL SERVICE", align 1
@test_LsaLookupNames2.n2 = internal constant [25 x i8] c"NT AUTHORITY\\LocalService", align 16
@LANG_ENGLISH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Non-English locale (skipping LsaLookupNames2 tests)\0A\00", align 1
@POLICY_ALL_ACCESS = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"LsaOpenPolicy(POLICY_ALL_ACCESS) returned 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"LsaOpenPolicy(POLICY_ALL_ACCESS) failed, trying POLICY_VIEW_LOCAL_INFORMATION\0A\00", align 1
@POLICY_LOOKUP_NAMES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"LsaOpenPolicy(POLICY_VIEW_LOCAL_INFORMATION) returned 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot acquire policy handle\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"expected STATUS_SUCCESS, got %x)\0A\00", align 1
@SidTypeWellKnownGroup = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"expected SidTypeWellKnownGroup, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"expected 0, got 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"expected 1, got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"LOCAL SERVICE\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"expected \22LOCAL SERVICE\22, got \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"NT AUTHORITY\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"expected \22NT AUTHORITY\22, got \22%s\22\0A\00", align 1
@STATUS_NONE_MAPPED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"expected STATUS_NONE_MAPPED, got %x)\0A\00", align 1
@SidTypeUnknown = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"expected SidTypeUnknown, got %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"expected 0, got %u\0A\00", align 1
@STATUS_SOME_NOT_MAPPED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [42 x i8] c"expected STATUS_SOME_NOT_MAPPED, got %x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"LsaClose() failed, returned 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LsaLookupNames2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LsaLookupNames2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca [3 x %struct.TYPE_12__], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 (...) @GetSystemDefaultLCID()
  %10 = call i32 @LANGIDFROMLCID(i32 %9)
  %11 = call i64 @PRIMARYLANGID(i32 %10)
  %12 = load i64, i64* @LANG_ENGLISH, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %0
  %15 = call i32 (...) @GetThreadLocale()
  %16 = call i32 @LANGIDFROMLCID(i32 %15)
  %17 = call i64 @PRIMARYLANGID(i32 %16)
  %18 = load i64, i64* @LANG_ENGLISH, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %0
  %21 = call i32 @skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %360

22:                                               ; preds = %14
  %23 = call i32 @memset(%struct.TYPE_13__* %3, i32 0, i32 4)
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  store i32 4, i32* %24, align 4
  %25 = load i32, i32* @POLICY_ALL_ACCESS, align 4
  %26 = call i32 @LsaOpenPolicy(i32* null, %struct.TYPE_13__* %3, i32 %25, i32* %2)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi i1 [ true, %22 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = call i32 @trace(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @POLICY_LOOKUP_NAMES, align 4
  %45 = call i32 @LsaOpenPolicy(i32* null, %struct.TYPE_13__* %3, i32 %44, i32* %2)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @STATUS_SUCCESS, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %42, %34
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @STATUS_SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %360

58:                                               ; preds = %52
  %59 = call i32 (...) @GetProcessHeap()
  %60 = call i8* @HeapAlloc(i32 %59, i32 0, i32 13)
  %61 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 13, i32* %64, align 4
  %65 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 13, i32* %66, align 16
  %67 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @memcpy(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_LsaLookupNames2.n1, i64 0, i64 0), i32 13)
  %71 = call i32 (...) @GetProcessHeap()
  %72 = call i8* @HeapAlloc(i32 %71, i32 0, i32 13)
  %73 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i32 12, i32* %76, align 4
  %77 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 12, i32* %78, align 16
  %79 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @memcpy(i8* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_LsaLookupNames2.n1, i64 0, i64 0), i32 12)
  %83 = call i32 (...) @GetProcessHeap()
  %84 = call i8* @HeapAlloc(i32 %83, i32 0, i32 25)
  %85 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 2
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 2
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i32 25, i32* %88, align 4
  %89 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 25, i32* %90, align 16
  %91 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 2
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @memcpy(i8* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @test_LsaLookupNames2.n2, i64 0, i64 0), i32 25)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %95 = load i32, i32* %2, align 4
  %96 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %97 = call i32 @LsaLookupNames2(i32 %95, i32 0, i32 1, %struct.TYPE_12__* %96, %struct.TYPE_11__** %4, %struct.TYPE_11__** %5)
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* %1, align 4
  %99 = load i32, i32* @STATUS_SUCCESS, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SidTypeWellKnownGroup, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 1
  %131 = zext i1 %130 to i32
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @get_sid_info(i32 %139, i32* %7, i32* %8)
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @strcmp(i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @strcmp(i32 %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = call i32 @LsaFreeMemory(%struct.TYPE_11__* %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = call i32 @LsaFreeMemory(%struct.TYPE_11__* %157)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %159 = load i32, i32* %2, align 4
  %160 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %161 = call i32 @LsaLookupNames2(i32 %159, i32 0, i32 1, %struct.TYPE_12__* %160, %struct.TYPE_11__** %4, %struct.TYPE_11__** %5)
  store i32 %161, i32* %1, align 4
  %162 = load i32, i32* %1, align 4
  %163 = load i32, i32* @STATUS_NONE_MAPPED, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %1, align 4
  %167 = call i32 @ok(i32 %165, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %166)
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @SidTypeUnknown, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ok(i32 %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %178)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ok(i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ok(i32 %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %198)
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %201 = call i32 @LsaFreeMemory(%struct.TYPE_11__* %200)
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %203 = call i32 @LsaFreeMemory(%struct.TYPE_11__* %202)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %204 = load i32, i32* %2, align 4
  %205 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 2
  %206 = call i32 @LsaLookupNames2(i32 %204, i32 0, i32 1, %struct.TYPE_12__* %205, %struct.TYPE_11__** %4, %struct.TYPE_11__** %5)
  store i32 %206, i32* %1, align 4
  %207 = load i32, i32* %1, align 4
  %208 = load i32, i32* @STATUS_SUCCESS, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = load i32, i32* %1, align 4
  %212 = call i32 @ok(i32 %210, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SidTypeWellKnownGroup, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ok(i32 %219, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %223)
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 0
  %230 = zext i1 %229 to i32
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @ok(i32 %230, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %234)
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 1
  %240 = zext i1 %239 to i32
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @ok(i32 %240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %243)
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @get_sid_info(i32 %248, i32* %7, i32* %8)
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @strcmp(i32 %250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %7, align 4
  %256 = call i32 @ok(i32 %254, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @strcmp(i32 %257, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %8, align 4
  %263 = call i32 @ok(i32 %261, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %262)
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %265 = call i32 @LsaFreeMemory(%struct.TYPE_11__* %264)
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %267 = call i32 @LsaFreeMemory(%struct.TYPE_11__* %266)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %268 = load i32, i32* %2, align 4
  %269 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %270 = call i32 @LsaLookupNames2(i32 %268, i32 0, i32 3, %struct.TYPE_12__* %269, %struct.TYPE_11__** %4, %struct.TYPE_11__** %5)
  store i32 %270, i32* %1, align 4
  %271 = load i32, i32* %1, align 4
  %272 = load i32, i32* @STATUS_SOME_NOT_MAPPED, align 4
  %273 = icmp eq i32 %271, %272
  %274 = zext i1 %273 to i32
  %275 = load i32, i32* %1, align 4
  %276 = call i32 @ok(i32 %274, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i32 %275)
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @SidTypeWellKnownGroup, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i64 0
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @ok(i32 %283, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %287)
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i64 1
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @SidTypeUnknown, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i64 1
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @ok(i32 %295, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %299)
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i64 2
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @SidTypeWellKnownGroup, align 4
  %306 = icmp eq i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i64 2
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ok(i32 %307, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %311)
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 0
  %318 = zext i1 %317 to i32
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @ok(i32 %318, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %322)
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %326, 1
  %328 = zext i1 %327 to i32
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @ok(i32 %328, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %331)
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %334 = call i32 @LsaFreeMemory(%struct.TYPE_11__* %333)
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %336 = call i32 @LsaFreeMemory(%struct.TYPE_11__* %335)
  %337 = call i32 (...) @GetProcessHeap()
  %338 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 2
  %340 = load i8*, i8** %339, align 8
  %341 = call i32 @HeapFree(i32 %337, i32 0, i8* %340)
  %342 = call i32 (...) @GetProcessHeap()
  %343 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 @HeapFree(i32 %342, i32 0, i8* %345)
  %347 = call i32 (...) @GetProcessHeap()
  %348 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %6, i64 0, i64 2
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @HeapFree(i32 %347, i32 0, i8* %350)
  %352 = load i32, i32* %2, align 4
  %353 = call i32 @LsaClose(i32 %352)
  store i32 %353, i32* %1, align 4
  %354 = load i32, i32* %1, align 4
  %355 = load i32, i32* @STATUS_SUCCESS, align 4
  %356 = icmp eq i32 %354, %355
  %357 = zext i1 %356 to i32
  %358 = load i32, i32* %1, align 4
  %359 = call i32 @ok(i32 %357, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %58, %56, %20
  ret void
}

declare dso_local i64 @PRIMARYLANGID(i32) #1

declare dso_local i32 @LANGIDFROMLCID(i32) #1

declare dso_local i32 @GetSystemDefaultLCID(...) #1

declare dso_local i32 @GetThreadLocale(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @LsaOpenPolicy(i32*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @LsaLookupNames2(i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__**, %struct.TYPE_11__**) #1

declare dso_local i32 @get_sid_info(i32, i32*, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @LsaFreeMemory(%struct.TYPE_11__*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @LsaClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
