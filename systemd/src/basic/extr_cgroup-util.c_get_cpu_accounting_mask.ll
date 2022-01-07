; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_get_cpu_accounting_mask.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_get_cpu_accounting_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32 }

@get_cpu_accounting_mask.needed_mask = internal global i64 -1, align 8
@.str = private unnamed_addr constant [5 x i8] c"4.15\00", align 1
@CGROUP_MASK_CPU = common dso_local global i64 0, align 8
@CGROUP_MASK_CPUACCT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_cpu_accounting_mask() #0 {
  %1 = alloca %struct.utsname, align 4
  %2 = load i64, i64* @get_cpu_accounting_mask.needed_mask, align 8
  %3 = icmp eq i64 %2, -1
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = call i64 (...) @cg_all_unified()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = call i64 @uname(%struct.utsname* %1)
  %9 = icmp sge i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @str_verscmp(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = load i64, i64* @CGROUP_MASK_CPU, align 8
  store i64 %17, i64* @get_cpu_accounting_mask.needed_mask, align 8
  br label %19

18:                                               ; preds = %7
  store i64 0, i64* @get_cpu_accounting_mask.needed_mask, align 8
  br label %19

19:                                               ; preds = %18, %16
  br label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @CGROUP_MASK_CPUACCT, align 8
  store i64 %21, i64* @get_cpu_accounting_mask.needed_mask, align 8
  br label %22

22:                                               ; preds = %20, %19
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i64, i64* @get_cpu_accounting_mask.needed_mask, align 8
  ret i64 %24
}

declare dso_local i64 @cg_all_unified(...) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i64 @str_verscmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
