; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtApphelpCacheControl.c_CallCacheControl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtApphelpCacheControl.c_CallCacheControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_EXECUTE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@FILE_NON_DIRECTORY_FILE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CallCacheControl(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %20 = call i32 @InitializeObjectAttributes(i32* %9, i32* %18, i32 %19, i32* null, i32* null)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %22 = load i32, i32* @SYNCHRONIZE, align 4
  %23 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FILE_READ_DATA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FILE_EXECUTE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FILE_SHARE_READ, align 4
  %30 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %33 = load i32, i32* @FILE_NON_DIRECTORY_FILE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @NtOpenFile(i64* %21, i32 %28, i32* %9, i32* %10, i32 %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @STATUS_SUCCESS, align 4
  %38 = call i32 @ok_ntstatus(i32 %36, i32 %37)
  br label %42

39:                                               ; preds = %3
  %40 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %17
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pNtApphelpCacheControl(i32 %43, %struct.TYPE_5__* %7)
  store i32 %44, i32* %8, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @NtClose(i64 %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @NtOpenFile(i64*, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @ok_ntstatus(i32, i32) #2

declare dso_local i32 @pNtApphelpCacheControl(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @NtClose(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
