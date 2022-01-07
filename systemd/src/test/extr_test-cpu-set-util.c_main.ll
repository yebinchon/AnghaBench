; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cpu-set-util.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cpu-set-util.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"CPU_ALLOC_SIZE(1) = %zu\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"CPU_ALLOC_SIZE(9) = %zu\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"CPU_ALLOC_SIZE(64) = %zu\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"CPU_ALLOC_SIZE(65) = %zu\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"CPU_ALLOC_SIZE(1024) = %zu\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"CPU_ALLOC_SIZE(1025) = %zu\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"CPU_ALLOC_SIZE(8191) = %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @CPU_ALLOC_SIZE(i32 1)
  %7 = call i32 @log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @CPU_ALLOC_SIZE(i32 9)
  %9 = call i32 @log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = call i32 @CPU_ALLOC_SIZE(i32 64)
  %11 = call i32 @log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = call i32 @CPU_ALLOC_SIZE(i32 65)
  %13 = call i32 @log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = call i32 @CPU_ALLOC_SIZE(i32 1024)
  %15 = call i32 @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = call i32 @CPU_ALLOC_SIZE(i32 1025)
  %17 = call i32 @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = call i32 @CPU_ALLOC_SIZE(i32 8191)
  %19 = call i32 @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @test_parse_cpu_set()
  %21 = call i32 (...) @test_parse_cpu_set_extend()
  %22 = call i32 (...) @test_cpus_in_affinity_mask()
  %23 = call i32 (...) @test_cpu_set_to_from_dbus()
  ret i32 0
}

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @CPU_ALLOC_SIZE(i32) #1

declare dso_local i32 @test_parse_cpu_set(...) #1

declare dso_local i32 @test_parse_cpu_set_extend(...) #1

declare dso_local i32 @test_cpus_in_affinity_mask(...) #1

declare dso_local i32 @test_cpu_set_to_from_dbus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
