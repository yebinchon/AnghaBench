; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_HKEY_CLASSES_ROOT.c_GetKeyName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/advapi32/extr_HKEY_CLASSES_ROOT.c_GetKeyName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@KeyNameInformation = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @GetKeyName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetKeyName(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @KeyNameInformation, align 4
  %11 = call i32 @NtQueryKey(i32 %9, i32 %10, %struct.TYPE_8__* null, i64 0, i64* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %14 = call i32 @ok_ntstatus(i32 %12, i32 %13)
  %15 = call i32 (...) @RtlGetProcessHeap()
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.TYPE_8__* @RtlAllocateHeap(i32 %15, i32 0, i64 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @KeyNameInformation, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @NtQueryKey(i32 %22, i32 %23, %struct.TYPE_8__* %24, i64 %25, i64* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  %29 = call i32 @ok_ntstatus(i32 %27, i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @RTL_DUPLICATE_UNICODE_STRING_NULL_TERMINATE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @RtlDuplicateUnicodeString(i32 %41, %struct.TYPE_7__* %5, i32 %42)
  %44 = call i32 (...) @RtlGetProcessHeap()
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = call i32 @RtlFreeHeap(i32 %44, i32 0, %struct.TYPE_8__* %45)
  ret void
}

declare dso_local i32 @NtQueryKey(i32, i32, %struct.TYPE_8__*, i64, i64*) #1

declare dso_local i32 @ok_ntstatus(i32, i32) #1

declare dso_local %struct.TYPE_8__* @RtlAllocateHeap(i32, i32, i64) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @RtlDuplicateUnicodeString(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
