; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_authport.c_LsapCheckLogonProcess.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_authport.c_LsapCheckLogonProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, i32*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"LsapCheckLogonProcess(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Client ID: %p %p\0A\00", align 1
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@PROCESS_VM_WRITE = common dso_local global i32 0, align 4
@PROCESS_VM_OPERATION = common dso_local global i32 0, align 4
@PROCESS_DUP_HANDLE = common dso_local global i32 0, align 4
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"NtOpenProcess() failed (Status %lx)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global %struct.TYPE_19__* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"New LogonContext: %p\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_19__*, %struct.TYPE_19__**)* @LsapCheckLogonProcess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @LsapCheckLogonProcess(%struct.TYPE_19__* %0, %struct.TYPE_19__** %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %5, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = call i32 (i8*, %struct.TYPE_19__*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %10)
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_19__*
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, %struct.TYPE_19__*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %18, i32 %23)
  %25 = call i32 @InitializeObjectAttributes(i32* %6, i32* null, i32 0, i32* null, i32* null)
  %26 = load i32, i32* @PROCESS_VM_READ, align 4
  %27 = load i32, i32* @PROCESS_VM_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PROCESS_VM_OPERATION, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PROCESS_DUP_HANDLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = call %struct.TYPE_19__* @NtOpenProcess(i32** %7, i32 %34, i32* %6, %struct.TYPE_16__* %37)
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %9, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %40 = call i32 @NT_SUCCESS(%struct.TYPE_19__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %2
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = call i32 (i8*, %struct.TYPE_19__*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %3, align 8
  br label %82

46:                                               ; preds = %2
  %47 = call i32 (...) @RtlGetProcessHeap()
  %48 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %49 = call %struct.TYPE_19__* @RtlAllocateHeap(i32 %47, i32 %48, i32 4)
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %8, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = icmp eq %struct.TYPE_19__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @NtClose(i32* %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** @STATUS_INSUFFICIENT_RESOURCES, align 8
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %3, align 8
  br label %82

56:                                               ; preds = %46
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %58 = call i32 (i8*, %struct.TYPE_19__*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_19__* %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FALSE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @LsapIsTrustedClient(i32* %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %56
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %5, align 8
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** @STATUS_SUCCESS, align 8
  store %struct.TYPE_19__* %81, %struct.TYPE_19__** %3, align 8
  br label %82

82:                                               ; preds = %78, %52, %42
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %83
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_19__*, ...) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @NtOpenProcess(i32**, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @NT_SUCCESS(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @NtClose(i32*) #1

declare dso_local i64 @LsapIsTrustedClient(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
