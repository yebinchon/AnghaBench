; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-acd.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-acd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"This program takes two arguments.\0A\09 %s <ifname> <IPv4 address>\00", align 1
@program_invocation_short_name = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @LOG_DEBUG, align 4
  %7 = call i32 @test_setup_logging(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 2
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @test_acd(i8* %13, i8* %16)
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @program_invocation_short_name, align 4
  %20 = call i32 @log_error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @test_acd(i8*, i8*) #1

declare dso_local i32 @log_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
