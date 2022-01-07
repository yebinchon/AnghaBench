; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_timestamp_shall_serialize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_timestamp_shall_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MANAGER_TIMESTAMP_USERSPACE = common dso_local global i32 0, align 4
@MANAGER_TIMESTAMP_FINISH = common dso_local global i32 0, align 4
@MANAGER_TIMESTAMP_SECURITY_START = common dso_local global i32 0, align 4
@MANAGER_TIMESTAMP_SECURITY_FINISH = common dso_local global i32 0, align 4
@MANAGER_TIMESTAMP_GENERATORS_START = common dso_local global i32 0, align 4
@MANAGER_TIMESTAMP_GENERATORS_FINISH = common dso_local global i32 0, align 4
@MANAGER_TIMESTAMP_UNITS_LOAD_START = common dso_local global i32 0, align 4
@MANAGER_TIMESTAMP_UNITS_LOAD_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @manager_timestamp_shall_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_timestamp_shall_serialize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @in_initrd()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MANAGER_TIMESTAMP_USERSPACE, align 4
  %10 = load i32, i32* @MANAGER_TIMESTAMP_FINISH, align 4
  %11 = load i32, i32* @MANAGER_TIMESTAMP_SECURITY_START, align 4
  %12 = load i32, i32* @MANAGER_TIMESTAMP_SECURITY_FINISH, align 4
  %13 = load i32, i32* @MANAGER_TIMESTAMP_GENERATORS_START, align 4
  %14 = load i32, i32* @MANAGER_TIMESTAMP_GENERATORS_FINISH, align 4
  %15 = load i32, i32* @MANAGER_TIMESTAMP_UNITS_LOAD_START, align 4
  %16 = load i32, i32* @MANAGER_TIMESTAMP_UNITS_LOAD_FINISH, align 4
  %17 = call i32 @IN_SET(i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %7, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @in_initrd(...) #1

declare dso_local i32 @IN_SET(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
