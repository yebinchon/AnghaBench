; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_bpf-firewall.c_emit_bpf_firewall_warning.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_bpf-firewall.c_emit_bpf_firewall_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@emit_bpf_firewall_warning.warned = internal global i32 0, align 4
@bpf_firewall_unsupported_reason = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"unit configures an IP firewall, but %s.\0A(This warning is only shown for the first unit using IP firewalling.)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"not running as root\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"the local system does not support BPF/cgroup firewalling\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bpf_firewall_warning(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @emit_bpf_firewall_warning.warned, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @bpf_firewall_unsupported_reason, align 4
  %8 = load i32, i32* @EPERM, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = call i64 (...) @detect_container()
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i1 [ false, %6 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @LOG_DEBUG, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @LOG_WARNING, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load i32, i32* @bpf_firewall_unsupported_reason, align 4
  %27 = call i64 (...) @getuid()
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @log_unit_full(i32* %17, i32 %25, i32 %26, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 1, i32* @emit_bpf_firewall_warning.warned, align 4
  br label %32

32:                                               ; preds = %24, %1
  ret void
}

declare dso_local i64 @detect_container(...) #1

declare dso_local i32 @log_unit_full(i32*, i32, i32, i8*, i8*) #1

declare dso_local i64 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
