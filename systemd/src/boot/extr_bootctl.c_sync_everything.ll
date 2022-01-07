; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/extr_bootctl.c_sync_everything.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/extr_bootctl.c_sync_everything.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_esp_path = common dso_local global i64 0, align 8
@AT_FDCWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to synchronize the ESP '%s': %m\00", align 1
@arg_xbootldr_path = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to synchronize $BOOT '%s': %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sync_everything to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_everything() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* @arg_esp_path, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i32, i32* @AT_FDCWD, align 4
  %7 = load i64, i64* @arg_esp_path, align 8
  %8 = call i32 @syncfs_path(i32 %6, i64 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load i32, i32* %2, align 4
  %13 = load i64, i64* @arg_esp_path, align 8
  %14 = call i32 @log_error_errno(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %5
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i64, i64* @arg_xbootldr_path, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* @AT_FDCWD, align 4
  %21 = load i64, i64* @arg_xbootldr_path, align 8
  %22 = call i32 @syncfs_path(i32 %20, i64 %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = load i64, i64* @arg_xbootldr_path, align 8
  %28 = call i32 @log_error_errno(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @syncfs_path(i32, i64) #1

declare dso_local i32 @log_error_errno(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
