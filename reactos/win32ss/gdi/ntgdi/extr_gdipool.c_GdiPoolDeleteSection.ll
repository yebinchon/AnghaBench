; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_gdipool.c_GdiPoolDeleteSection.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_gdipool.c_GdiPoolDeleteSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [53 x i8] c"There are %lu allocations left, section=%p, pool=%p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MEM_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @GdiPoolDeleteSection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GdiPoolDeleteSection(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i32 @DPRINT1(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %15, %struct.TYPE_8__* %16, %struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = call i32 @DBG_DUMP_EVENT_LIST(i32* %20)
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @ASSERT(i32 %22)
  br label %24

24:                                               ; preds = %12, %2
  %25 = call i32 (...) @NtCurrentProcess()
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* @MEM_RELEASE, align 4
  %29 = call i32 @ZwFreeVirtualMemory(i32 %25, i32* %27, i32* %7, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @NT_SUCCESS(i32 %30)
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = call i32 @EngFreeMem(%struct.TYPE_8__* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @DPRINT1(i8*, i64, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @DBG_DUMP_EVENT_LIST(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ZwFreeVirtualMemory(i32, i32*, i32*, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @EngFreeMem(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
