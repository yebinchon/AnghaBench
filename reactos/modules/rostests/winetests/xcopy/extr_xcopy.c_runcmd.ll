; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xcopy/extr_xcopy.c_runcmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xcopy/extr_xcopy.c_runcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@__const.runcmd.si = private unnamed_addr constant %struct.TYPE_5__ { i32 4 }, align 4
@FALSE = common dso_local global i32 0, align 4
@CREATE_NEW_CONSOLE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @runcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runcmd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_5__* @__const.runcmd.si to i8*), i64 4, i1 false)
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add nsw i64 %11, 1
  %13 = call i8* @HeapAlloc(i32 %9, i32 0, i64 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcpy(i8* %14, i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32, i32* @CREATE_NEW_CONSOLE, align 4
  %20 = call i32 @CreateProcessA(i32* null, i8* %17, i32* null, i32* null, i32 %18, i32 %19, i32* null, i32* null, %struct.TYPE_5__* %4, %struct.TYPE_6__* %5)
  store i32 %20, i32* %7, align 4
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @HeapFree(i32 %21, i32 0, i8* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 260, i32* %2, align 4
  br label %50

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WaitForSingleObject(i32 %29, i32 5000)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @WAIT_OBJECT_0, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GetExitCodeProcess(i32 %36, i32* %7)
  br label %42

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @TerminateProcess(i32 %40, i32 1)
  br label %42

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CloseHandle(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CloseHandle(i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %26
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @GetExitCodeProcess(i32, i32*) #2

declare dso_local i32 @TerminateProcess(i32, i32) #2

declare dso_local i32 @CloseHandle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
