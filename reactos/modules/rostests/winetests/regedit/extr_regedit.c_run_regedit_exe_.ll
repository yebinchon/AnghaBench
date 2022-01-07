; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/regedit/extr_regedit.c_run_regedit_exe_.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/regedit/extr_regedit.c_run_regedit_exe_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @run_regedit_exe_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_regedit_exe_(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i64, align 8
  %9 = alloca [256 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 40, i32* %12, align 8
  %13 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcpy(i8* %21, i8* %22)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @CreateProcessA(i32* null, i8* %24, i32* null, i32* null, i32 %25, i32 0, i32* null, i32* null, %struct.TYPE_5__* %6, %struct.TYPE_6__* %7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @WaitForSingleObject(i32 %32, i32 10000)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @WAIT_TIMEOUT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TerminateProcess(i32 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %30
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CloseHandle(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CloseHandle(i32 %46)
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @WAIT_TIMEOUT, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %41, %28
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #2

declare dso_local i64 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @TerminateProcess(i32, i32) #2

declare dso_local i32 @CloseHandle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
