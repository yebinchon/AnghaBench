; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_StackOverflow.c_infinite_recursive.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_StackOverflow.c_infinite_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Iteration %d.\0A\00", align 1
@iteration = common dso_local global i32 0, align 4
@MemoryBasicInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@StackAllocationBase = common dso_local global i64 0, align 8
@PAGE_READWRITE = common dso_local global i64 0, align 8
@MEM_COMMIT = common dso_local global i64 0, align 8
@MEM_PRIVATE = common dso_local global i64 0, align 8
@LastStackAllocation = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@StackSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @infinite_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infinite_recursive() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1280 x i8], align 16
  %4 = getelementptr inbounds [1280 x i8], [1280 x i8]* %3, i64 0, i64 0
  %5 = load i32, i32* @iteration, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @iteration, align 4
  %7 = call i32 @sprintf(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %5)
  %8 = call i32 (...) @NtCurrentProcess()
  %9 = getelementptr inbounds [1280 x i8], [1280 x i8]* %3, i64 0, i64 0
  %10 = load i32, i32* @MemoryBasicInformation, align 4
  %11 = call i32 @NtQueryVirtualMemory(i32 %8, i8* %9, i32 %10, %struct.TYPE_3__* %1, i32 28, i32* null)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  %14 = call i32 @ok_ntstatus(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @StackAllocationBase, align 8
  %18 = call i32 @ok_ptr(i32 %16, i64 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [1280 x i8], [1280 x i8]* %3, i64 0, i64 0
  %22 = call i64 @PAGE_ROUND_DOWN(i8* %21)
  %23 = call i32 @ok_ptr(i32 %20, i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @PAGE_READWRITE, align 8
  %27 = call i32 @ok_long(i32 %25, i64 %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @MEM_COMMIT, align 8
  %31 = call i32 @ok_long(i32 %29, i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @PAGE_READWRITE, align 8
  %35 = call i32 @ok_long(i32 %33, i64 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @MEM_PRIVATE, align 8
  %39 = call i32 @ok_long(i32 %37, i64 %38)
  %40 = getelementptr inbounds [1280 x i8], [1280 x i8]* %3, i64 0, i64 -1280
  store i8* %40, i8** @LastStackAllocation, align 8
  call void @infinite_recursive()
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @NtQueryVirtualMemory(i32, i8*, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @ok_ntstatus(i32, i32) #1

declare dso_local i32 @ok_ptr(i32, i64) #1

declare dso_local i64 @PAGE_ROUND_DOWN(i8*) #1

declare dso_local i32 @ok_long(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
