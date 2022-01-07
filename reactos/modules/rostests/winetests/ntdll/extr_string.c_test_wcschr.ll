; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_wcschr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test_wcschr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_wcschr.teststringW = internal constant [12 x i8] c"abracadabra\00", align 1
@.str = private unnamed_addr constant [66 x i8] c"wcschr should have returned a pointer to the first 'a' character\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"wcschr should have returned a pointer to the null terminator\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"wcschr should have returned NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wcschr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wcschr() #0 {
  %1 = call i8* @p_wcschr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcschr.teststringW, i64 0, i64 0), i8 signext 97)
  %2 = icmp eq i8* %1, getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcschr.teststringW, i64 0, i64 0)
  %3 = zext i1 %2 to i32
  %4 = call i32 @ok(i32 %3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %5 = call i8* @p_wcschr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcschr.teststringW, i64 0, i64 0), i8 signext 0)
  %6 = icmp eq i8* %5, getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcschr.teststringW, i64 0, i64 11)
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i8* @p_wcschr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_wcschr.teststringW, i64 0, i64 0), i8 signext 120)
  %10 = icmp eq i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i8* @p_wcschr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
