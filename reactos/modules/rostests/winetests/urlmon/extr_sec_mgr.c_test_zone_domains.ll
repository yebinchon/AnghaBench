; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_zone_domains.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_zone_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"IE running in Enhanced Security Configuration\0A\00", align 1
@pCreateUri = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Skipping zone domain tests, IE too old\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"testing zone domains...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_zone_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_zone_domains() #0 {
  %1 = call i64 (...) @is_ie_hardened()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %20

5:                                                ; preds = %0
  %6 = load i32, i32* @pCreateUri, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i32 @win_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %20

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = call i32 @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 (...) @test_zone_domain_cache()
  %14 = call i32 (...) @register_zone_domains()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %20

17:                                               ; preds = %11
  %18 = call i32 (...) @run_child_process()
  %19 = call i32 (...) @unregister_zone_domains()
  br label %20

20:                                               ; preds = %17, %16, %8, %3
  ret void
}

declare dso_local i64 @is_ie_hardened(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @test_zone_domain_cache(...) #1

declare dso_local i32 @register_zone_domains(...) #1

declare dso_local i32 @run_child_process(...) #1

declare dso_local i32 @unregister_zone_domains(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
