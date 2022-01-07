; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_GetModemStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_GetModemStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"GetCommModemStatus failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"GetCommModemStatus returned 0x%08x->%s%s%s%s\0A\00", align 1
@MS_RLSD_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"MS_RLSD_ON \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MS_RING_ON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"MS_RING_ON \00", align 1
@MS_DSR_ON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"MS_DSR_ON \00", align 1
@MS_CTS_ON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"MS_CTS_ON \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_GetModemStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetModemStatus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @GetCommModemStatus(i32 %4, i32* %3)
  %6 = call i32 @ok(i32 %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MS_RLSD_ON, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MS_RING_ON, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MS_DSR_ON, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MS_CTS_ON, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %32 = call i32 @trace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %7, i8* %13, i8* %19, i8* %25, i8* %31)
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GetCommModemStatus(i32, i32*) #1

declare dso_local i32 @trace(i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
