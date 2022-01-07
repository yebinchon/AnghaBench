; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-kmod.c_builtin_kmod_init.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-kmod.c_builtin_kmod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Load module index\00", align 1
@udev_kmod_log = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @builtin_kmod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_kmod_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @ctx, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

5:                                                ; preds = %0
  %6 = call i64 @kmod_new(i32* null, i32* null)
  store i64 %6, i64* @ctx, align 8
  %7 = load i64, i64* @ctx, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %19

12:                                               ; preds = %5
  %13 = call i32 @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @ctx, align 8
  %15 = load i32, i32* @udev_kmod_log, align 4
  %16 = call i32 @kmod_set_log_fn(i64 %14, i32 %15, i32* null)
  %17 = load i64, i64* @ctx, align 8
  %18 = call i32 @kmod_load_resources(i64 %17)
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %12, %9, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @kmod_new(i32*, i32*) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @kmod_set_log_fn(i64, i32, i32*) #1

declare dso_local i32 @kmod_load_resources(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
