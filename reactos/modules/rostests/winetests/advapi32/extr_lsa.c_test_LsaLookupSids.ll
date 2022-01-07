; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_lsa.c_test_LsaLookupSids.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_lsa.c_test_LsaLookupSids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32*, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@POLICY_LOOKUP_NAMES = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@TokenUser = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got %d, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"S-1-1-0\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"ConvertStringSidToSidA returned false\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"domain[0] name buffer is null\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LsaLookupSids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LsaLookupSids() #0 {
  %1 = alloca %struct.TYPE_20__*, align 8
  %2 = alloca %struct.TYPE_21__, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 @memset(%struct.TYPE_21__* %2, i32 0, i32 4)
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %2, i32 0, i32 0
  store i32 4, i32* %12, align 4
  %13 = load i32, i32* @POLICY_LOOKUP_NAMES, align 4
  %14 = call i32 @LsaOpenPolicy(i32* null, %struct.TYPE_21__* %2, i32 %13, i32* %4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @STATUS_SUCCESS, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 (...) @GetCurrentProcess()
  %22 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %23 = call i32 @OpenProcessToken(i32 %21, i32 %22, i32* %7)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @TokenUser, align 4
  %29 = call i32 @GetTokenInformation(i32 %27, i32 %28, %struct.TYPE_19__* null, i32 0, i32* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.TYPE_19__* @HeapAlloc(i32 %36, i32 0, i32 %37)
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TokenUser, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @GetTokenInformation(i32 %39, i32 %40, %struct.TYPE_19__* %41, i32 %42, i32* %8)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = call i32 @LsaLookupSids(i32 %47, i32 1, i32* %50, %struct.TYPE_20__** %1, %struct.TYPE_20__** %3)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @STATUS_SUCCESS, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %145

71:                                               ; preds = %0
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = bitcast %struct.TYPE_18__* %74 to i8*
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %77 = bitcast %struct.TYPE_20__* %76 to i8*
  %78 = ptrtoint i8* %75 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = icmp sgt i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %83, %struct.TYPE_18__* %86)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = bitcast %struct.TYPE_18__* %97 to i8*
  %99 = ptrtoint i8* %94 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = icmp sgt i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %106, i64 %112)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %120, %127
  %129 = zext i1 %128 to i32
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %143)
  br label %145

145:                                              ; preds = %71, %0
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = call i32 @LsaFreeMemory(%struct.TYPE_20__* %146)
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %149 = call i32 @LsaFreeMemory(%struct.TYPE_20__* %148)
  %150 = call i32 (...) @GetProcessHeap()
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = call i32 @HeapFree(i32 %150, i32 0, %struct.TYPE_19__* %151)
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @CloseHandle(i32 %153)
  %155 = call i32 @ConvertStringSidToSidA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @TRUE, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @LsaLookupSids(i32 %161, i32 1, i32* %10, %struct.TYPE_20__** %1, %struct.TYPE_20__** %3)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @STATUS_SUCCESS, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %6, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %266

182:                                              ; preds = %145
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = bitcast %struct.TYPE_18__* %185 to i8*
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %188 = bitcast %struct.TYPE_20__* %187 to i8*
  %189 = ptrtoint i8* %186 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = icmp sgt i64 %191, 0
  %193 = zext i1 %192 to i32
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %194, %struct.TYPE_18__* %197)
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i8*
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = bitcast %struct.TYPE_18__* %208 to i8*
  %210 = ptrtoint i8* %205 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = icmp sgt i64 %212, 0
  %214 = zext i1 %213 to i32
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %217, i64 %223)
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = icmp sgt i32 %231, %238
  %240 = zext i1 %239 to i32
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i64 0
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i64 0
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %247, i32 %254)
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = icmp ne i32* %262, null
  %264 = zext i1 %263 to i32
  %265 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %266

266:                                              ; preds = %182, %145
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %268 = call i32 @LsaFreeMemory(%struct.TYPE_20__* %267)
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %270 = call i32 @LsaFreeMemory(%struct.TYPE_20__* %269)
  %271 = load i32, i32* %10, align 4
  %272 = call i32 @FreeSid(i32 %271)
  %273 = load i32, i32* %4, align 4
  %274 = call i32 @LsaClose(i32 %273)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @STATUS_SUCCESS, align 4
  %277 = icmp eq i32 %275, %276
  %278 = zext i1 %277 to i32
  %279 = load i32, i32* %6, align 4
  %280 = call i32 (i32, i8*, ...) @ok(i32 %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %279)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @LsaOpenPolicy(i32*, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetTokenInformation(i32, i32, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @LsaLookupSids(i32, i32, i32*, %struct.TYPE_20__**, %struct.TYPE_20__**) #1

declare dso_local i32 @LsaFreeMemory(%struct.TYPE_20__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @ConvertStringSidToSidA(i8*, i32*) #1

declare dso_local i32 @FreeSid(i32) #1

declare dso_local i32 @LsaClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
