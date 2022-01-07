; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtApphelpCacheControl.c_RunApphelpCacheControlTests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtApphelpCacheControl.c_RunApphelpCacheControlTests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__ }

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"RtlDosPathNameToNtPathName_U\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"NtApphelpCacheControl expects a different structure layout\0A\00", align 1
@ApphelpCacheServiceLookup = common dso_local global i32 0, align 4
@STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @RunApphelpCacheControlTests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RunApphelpCacheControlTests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = mul nuw i64 4, %11
  %15 = udiv i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @GetModuleFileNameW(i32* null, i32* %13, i32 %16)
  %18 = call i64 @RtlDosPathNameToNtPathName_U(i32* %13, %struct.TYPE_8__* %5, i32* null, i32* null)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @InitEnv(%struct.TYPE_8__* %5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = call i32 @skip(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %121

28:                                               ; preds = %1
  %29 = call i32 @CheckValidation(%struct.TYPE_8__* %5)
  %30 = load i64, i64* @TRUE, align 8
  %31 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %32 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %35 = call i32 @ok_ntstatus(i32 %33, i32 %34)
  %36 = load i64, i64* @FALSE, align 8
  %37 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %38 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %41 = call i32 @ok_ntstatus(i32 %39, i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = load i64, i64* @FALSE, align 8
  %44 = call i32 @RequestAddition(i32 %42, i64 %43)
  %45 = load i64, i64* @FALSE, align 8
  %46 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %47 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @STATUS_SUCCESS, align 4
  %50 = call i32 @ok_ntstatus(i32 %48, i32 %49)
  %51 = load i64, i64* @TRUE, align 8
  %52 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %53 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %56 = call i32 @ok_ntstatus(i32 %54, i32 %55)
  %57 = load i64, i64* @FALSE, align 8
  %58 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %59 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %62 = call i32 @ok_ntstatus(i32 %60, i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = load i64, i64* @TRUE, align 8
  %65 = call i32 @RequestAddition(i32 %63, i64 %64)
  %66 = load i64, i64* @TRUE, align 8
  %67 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %68 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @STATUS_SUCCESS, align 4
  %71 = call i32 @ok_ntstatus(i32 %69, i32 %70)
  %72 = load i64, i64* @FALSE, align 8
  %73 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %74 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @STATUS_SUCCESS, align 4
  %77 = call i32 @ok_ntstatus(i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %79 = bitcast %struct.TYPE_8__* %78 to i8*
  %80 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 4 %80, i64 4, i1 false)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* null, i8** %81, align 8
  %82 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %83 = call i32 @pNtApphelpCacheControl(i32 %82, %struct.TYPE_9__* %8)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %86 = call i32 @ok_ntstatus(i32 %84, i32 %85)
  %87 = load i32, i32* %2, align 4
  %88 = load i64, i64* @TRUE, align 8
  %89 = call i32 @RequestAddition(i32 %87, i64 %88)
  %90 = load i64, i64* @TRUE, align 8
  %91 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %92 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  %95 = call i32 @ok_ntstatus(i32 %93, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %96, align 8
  %97 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %98 = call i32 @pNtApphelpCacheControl(i32 %97, %struct.TYPE_9__* %8)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %101 = call i32 @ok_ntstatus(i32 %99, i32 %100)
  %102 = load i32, i32* %2, align 4
  %103 = load i64, i64* @TRUE, align 8
  %104 = call i32 @RequestAddition(i32 %102, i64 %103)
  %105 = load i64, i64* @TRUE, align 8
  %106 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %107 = call i32 @CallCacheControl(%struct.TYPE_8__* %5, i64 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @STATUS_SUCCESS, align 4
  %110 = call i32 @ok_ntstatus(i32 %108, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* inttoptr (i64 2147483648 to i8*), i8** %111, align 8
  %112 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %113 = call i32 @pNtApphelpCacheControl(i32 %112, %struct.TYPE_9__* %8)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %116 = call i32 @ok_ntstatus(i32 %114, i32 %115)
  %117 = call i32 (...) @RtlGetProcessHeap()
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @RtlFreeHeap(i32 %117, i32 0, i32 %119)
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %28, %26
  %122 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %9, align 4
  switch i32 %123, label %125 [
    i32 0, label %124
    i32 1, label %124
  ]

124:                                              ; preds = %121, %121
  ret void

125:                                              ; preds = %121
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #2

declare dso_local i64 @RtlDosPathNameToNtPathName_U(i32*, %struct.TYPE_8__*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @InitEnv(%struct.TYPE_8__*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @CheckValidation(%struct.TYPE_8__*) #2

declare dso_local i32 @CallCacheControl(%struct.TYPE_8__*, i64, i32) #2

declare dso_local i32 @ok_ntstatus(i32, i32) #2

declare dso_local i32 @RequestAddition(i32, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @pNtApphelpCacheControl(i32, %struct.TYPE_9__*) #2

declare dso_local i32 @RtlFreeHeap(i32, i32, i32) #2

declare dso_local i32 @RtlGetProcessHeap(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
