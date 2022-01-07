; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlComputePrivatizedDllName_U.c_test_allocations.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlComputePrivatizedDllName_U.c_test_allocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [13 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Expected a changed buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_allocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_allocations() #0 {
  %1 = alloca [10 x i32], align 16
  %2 = alloca [10 x i32], align 16
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %8 = call i32 @RtlInitEmptyUnicodeString(%struct.TYPE_10__* %3, i32* %7, i32 40)
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %10 = call i32 @RtlInitEmptyUnicodeString(%struct.TYPE_10__* %4, i32* %9, i32 40)
  %11 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %5, i8* bitcast ([13 x i32]* @.str to i8*))
  %12 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %5, %struct.TYPE_10__* %3, %struct.TYPE_10__* %4)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @STATUS_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %6, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = call i32 @ok_strings(%struct.TYPE_10__* %3, %struct.TYPE_10__* %4, i8* bitcast ([13 x i32]* @.str to i8*))
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %23 = icmp ne i32* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %29 = icmp ne i32* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0, i64 0
  %33 = call i32 @cleanup(%struct.TYPE_10__* %3, i32* %32, i32 40)
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %35 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %34, i32 40)
  ret void
}

declare dso_local i32 @RtlInitEmptyUnicodeString(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ok_strings(%struct.TYPE_10__*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @cleanup(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
