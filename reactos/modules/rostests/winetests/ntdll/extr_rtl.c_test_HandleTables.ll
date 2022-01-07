; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_HandleTables.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_HandleTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"RtlAllocateHandle failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Handle %p wasn't valid\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Couldn't free handle %p\0A\00", align 1
@STATUS_SUCCESS = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"RtlDestroyHandleTable failed with error 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HandleTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HandleTables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @pRtlInitializeHandleTable(i32 16383, i32 4, i32* %5)
  %7 = call i64 @pRtlAllocateHandle(i32* %5, i32* %3)
  %8 = inttoptr i64 %7 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @RtlpMakeHandleAllocated(i32* %14)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = bitcast %struct.TYPE_5__** %4 to i32**
  %18 = call i32 @pRtlIsValidIndexHandle(i32* %5, i32 %16, i32** %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @pRtlFreeHandle(i32* %5, i32* %23)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_5__* %26)
  %28 = call %struct.TYPE_5__* @pRtlDestroyHandleTable(i32* %5)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %2, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @STATUS_SUCCESS, align 8
  %31 = icmp eq %struct.TYPE_5__* %29, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_5__* %33)
  ret void
}

declare dso_local i32 @pRtlInitializeHandleTable(i32, i32, i32*) #1

declare dso_local i64 @pRtlAllocateHandle(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @RtlpMakeHandleAllocated(i32*) #1

declare dso_local i32 @pRtlIsValidIndexHandle(i32*, i32, i32**) #1

declare dso_local i32 @pRtlFreeHandle(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @pRtlDestroyHandleTable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
