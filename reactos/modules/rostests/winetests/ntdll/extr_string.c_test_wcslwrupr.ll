; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_wcslwrupr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_wcslwrupr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_wcslwrupr.teststringW = internal global [12 x i8] c"abracadabra\00", align 1
@test_wcslwrupr.emptyW = internal global [1 x i8] zeroinitializer, align 1
@test_wcslwrupr.constemptyW = internal constant [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [36 x i8] c"p_wcslwr returned different string\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"p_wcsupr returned different string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wcslwrupr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wcslwrupr() #0 {
  %1 = call i8* @p_wcslwr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcslwrupr.teststringW, i64 0, i64 0))
  %2 = icmp eq i8* %1, getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcslwrupr.teststringW, i64 0, i64 0)
  %3 = zext i1 %2 to i32
  %4 = call i32 @ok(i32 %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %5 = call i8* @p_wcsupr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcslwrupr.teststringW, i64 0, i64 0))
  %6 = icmp eq i8* %5, getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcslwrupr.teststringW, i64 0, i64 0)
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i8* @p_wcslwr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_wcslwrupr.emptyW, i64 0, i64 0))
  %10 = icmp eq i8* %9, getelementptr inbounds ([1 x i8], [1 x i8]* @test_wcslwrupr.emptyW, i64 0, i64 0)
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = call i8* @p_wcsupr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_wcslwrupr.emptyW, i64 0, i64 0))
  %14 = icmp eq i8* %13, getelementptr inbounds ([1 x i8], [1 x i8]* @test_wcslwrupr.emptyW, i64 0, i64 0)
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i8* @p_wcslwr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_wcslwrupr.constemptyW, i64 0, i64 0))
  %18 = icmp eq i8* %17, getelementptr inbounds ([1 x i8], [1 x i8]* @test_wcslwrupr.constemptyW, i64 0, i64 0)
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = call i8* @p_wcsupr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_wcslwrupr.constemptyW, i64 0, i64 0))
  %22 = icmp eq i8* %21, getelementptr inbounds ([1 x i8], [1 x i8]* @test_wcslwrupr.constemptyW, i64 0, i64 0)
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i8* @p_wcslwr(i8*) #1

declare dso_local i8* @p_wcsupr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
