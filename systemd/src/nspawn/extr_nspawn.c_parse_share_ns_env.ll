; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_parse_share_ns_env.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_parse_share_ns_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to parse $%s: %m\00", align 1
@arg_clone_ns_flags = common dso_local global i64 0, align 8
@SETTING_CLONE_NS_FLAGS = common dso_local global i32 0, align 4
@arg_settings_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @parse_share_ns_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_share_ns_env(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @getenv_bool(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ENXIO, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @log_error_errno(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %14
  %22 = load i64, i64* @arg_clone_ns_flags, align 8
  %23 = load i64, i64* %5, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %31

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i64 [ 0, %28 ], [ %30, %29 ]
  %33 = or i64 %25, %32
  store i64 %33, i64* @arg_clone_ns_flags, align 8
  %34 = load i32, i32* @SETTING_CLONE_NS_FLAGS, align 4
  %35 = load i32, i32* @arg_settings_mask, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @arg_settings_mask, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %17, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
