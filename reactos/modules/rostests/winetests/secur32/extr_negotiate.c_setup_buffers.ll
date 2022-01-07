; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_setup_buffers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_negotiate.c_setup_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sspi_data = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__*, i8* }
%struct.TYPE_9__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__*, i8* }
%struct.TYPE_8__ = type { i32 }

@SECBUFFER_VERSION = common dso_local global i8* null, align 8
@SECBUFFER_TOKEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sspi_data*, %struct.TYPE_8__*)* @setup_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_buffers(%struct.sspi_data* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.sspi_data*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.sspi_data* %0, %struct.sspi_data** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = call i32 (...) @GetProcessHeap()
  %7 = call i8* @HeapAlloc(i32 %6, i32 0, i32 24)
  %8 = bitcast i8* %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = call i8* @HeapAlloc(i32 %9, i32 0, i32 4)
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  %12 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %13 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %12, i32 0, i32 2
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %13, align 8
  %14 = call i32 (...) @GetProcessHeap()
  %15 = call i8* @HeapAlloc(i32 %14, i32 0, i32 4)
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  %17 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %18 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %17, i32 0, i32 1
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %23 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @SECBUFFER_VERSION, align 8
  %25 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %26 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i8* %24, i8** %28, align 8
  %29 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %30 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %35 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @HeapAlloc(i32 %46, i32 0, i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = call i32 (...) @GetProcessHeap()
  %54 = call i8* @HeapAlloc(i32 %53, i32 0, i32 24)
  %55 = bitcast i8* %54 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %5, align 8
  %56 = load i8*, i8** @SECBUFFER_VERSION, align 8
  %57 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %58 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i8* %56, i8** %60, align 8
  %61 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %62 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = load %struct.sspi_data*, %struct.sspi_data** %3, align 8
  %67 = getelementptr inbounds %struct.sspi_data, %struct.sspi_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @HeapAlloc(i32 %78, i32 0, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  ret void
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
