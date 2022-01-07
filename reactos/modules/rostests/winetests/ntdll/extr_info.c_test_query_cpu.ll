; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_cpu.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SystemCpuInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Inconsistent length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Processor FeatureSet : %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Expected some features for this processor, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_cpu() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = load i32, i32* @SystemCpuInformation, align 4
  %5 = call i64 @pNtQuerySystemInformation(i32 %4, %struct.TYPE_3__* %3, i32 4, i32* %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @STATUS_SUCCESS, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 4, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local i64 @pNtQuerySystemInformation(i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
