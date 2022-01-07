; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/reg/extr_reg.c_run_reg_exe_.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/reg/extr_reg.c_run_reg_exe_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GetExitCodeProcess failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64*)* @run_reg_exe_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_reg_exe_(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 40, i32* %15, align 8
  %16 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcpy(i8* %24, i8* %25)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @CreateProcessA(i32* null, i8* %27, i32* null, i32* null, i32 %28, i32 0, i32* null, i32* null, %struct.TYPE_5__* %8, %struct.TYPE_6__* %9)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %59

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @WaitForSingleObject(i32 %35, i32 10000)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @WAIT_TIMEOUT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TerminateProcess(i32 %42, i32 1)
  br label %44

44:                                               ; preds = %40, %33
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64*, i64** %7, align 8
  %48 = call i32 @GetExitCodeProcess(i32 %46, i64* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 @lok(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CloseHandle(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CloseHandle(i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %44, %31
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #2

declare dso_local i64 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @TerminateProcess(i32, i32) #2

declare dso_local i32 @GetExitCodeProcess(i32, i64*) #2

declare dso_local i32 @lok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CloseHandle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
