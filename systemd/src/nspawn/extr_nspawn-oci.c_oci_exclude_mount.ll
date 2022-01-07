; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_exclude_mount.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_exclude_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/mqueue\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/dev/pts\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/dev/shm\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"/proc/acpi\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"/proc/apm\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/proc/asound\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"/proc/bus\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"/proc/fs\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"/proc/irq\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"/proc/kcore\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"/proc/keys\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"/proc/scsi\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/proc/sys\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"/proc/sys/net\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"/proc/sysrq-trigger\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"/proc/timer_list\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"/run\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"/sys\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"/sys/fs/selinux\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @oci_exclude_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_exclude_mount(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @PATH_IN_SET(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %14

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @path_startswith(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %12, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @PATH_IN_SET(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @path_startswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
