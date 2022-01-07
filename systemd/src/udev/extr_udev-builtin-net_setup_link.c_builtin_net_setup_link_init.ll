; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_setup_link.c_builtin_net_setup_link_init.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_setup_link.c_builtin_net_setup_link_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Created link configuration context.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @builtin_net_setup_link_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_net_setup_link_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @ctx, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

6:                                                ; preds = %0
  %7 = call i32 @link_config_ctx_new(i64* @ctx)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %21

12:                                               ; preds = %6
  %13 = load i64, i64* @ctx, align 8
  %14 = call i32 @link_config_load(i64 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %21

19:                                               ; preds = %12
  %20 = call i32 @log_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %17, %10, %5
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @link_config_ctx_new(i64*) #1

declare dso_local i32 @link_config_load(i64) #1

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
