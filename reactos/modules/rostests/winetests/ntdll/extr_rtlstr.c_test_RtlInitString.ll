; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlInitString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlInitString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@test_RtlInitString.teststring = internal constant [17 x i8] c"Some Wild String\00", align 16
@.str = private unnamed_addr constant [22 x i8] c"Length uninitialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"MaximumLength uninitialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Buffer not equal to teststring\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Some Wild String\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Buffer written to\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Buffer not equal to NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlInitString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlInitString() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* inttoptr (i64 3735928559 to i8*), i8** %4, align 8
  %5 = call i32 @pRtlInitString(%struct.TYPE_3__* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_RtlInitString.teststring, i64 0, i64 0))
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = icmp eq i64 %8, 16
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 %14, 17
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, getelementptr inbounds ([17 x i8], [17 x i8]* @test_RtlInitString.teststring, i64 0, i64 0)
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @pRtlInitString(%struct.TYPE_3__* %1, i8* null)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pRtlInitString(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
