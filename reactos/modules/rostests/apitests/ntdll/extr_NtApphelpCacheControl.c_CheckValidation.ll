; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtApphelpCacheControl.c_CheckValidation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtApphelpCacheControl.c_CheckValidation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ApphelpCacheServiceRemove = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ApphelpCacheServiceLookup = common dso_local global i32 0, align 4
@ApphelpCacheServiceDump = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckValidation(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = load i32, i32* @ApphelpCacheServiceRemove, align 4
  %7 = call i32 @pNtApphelpCacheControl(i32 %6, %struct.TYPE_5__* null)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %10 = call i32 @ok_ntstatus(i32 %8, i32 %9)
  %11 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %12 = call i32 @pNtApphelpCacheControl(i32 %11, %struct.TYPE_5__* null)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %15 = call i32 @ok_ntstatus(i32 %13, i32 %14)
  %16 = load i32, i32* @ApphelpCacheServiceRemove, align 4
  %17 = call i32 @pNtApphelpCacheControl(i32 %16, %struct.TYPE_5__* %3)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %20 = call i32 @ok_ntstatus(i32 %18, i32 %19)
  %21 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %22 = call i32 @pNtApphelpCacheControl(i32 %21, %struct.TYPE_5__* %3)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %25 = call i32 @ok_ntstatus(i32 %23, i32 %24)
  %26 = load i32, i32* @ApphelpCacheServiceDump, align 4
  %27 = call i32 @pNtApphelpCacheControl(i32 %26, %struct.TYPE_5__* null)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @STATUS_SUCCESS, align 4
  %30 = call i32 @ok_ntstatus(i32 %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 2, i64* %34, align 8
  %35 = load i32, i32* @ApphelpCacheServiceLookup, align 4
  %36 = call i32 @pNtApphelpCacheControl(i32 %35, %struct.TYPE_5__* %3)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %39 = call i32 @ok_ntstatus(i32 %37, i32 %38)
  %40 = call i32 @pNtApphelpCacheControl(i32 999, %struct.TYPE_5__* null)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %43 = call i32 @ok_ntstatus(i32 %41, i32 %42)
  %44 = call i32 @pNtApphelpCacheControl(i32 999, %struct.TYPE_5__* %3)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %47 = call i32 @ok_ntstatus(i32 %45, i32 %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pNtApphelpCacheControl(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @ok_ntstatus(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
