; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_add_wheel_mapping.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_add_wheel_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACTIONID_NONE = common dso_local global i64 0, align 8
@ACTIONID_COMBO_VOL_FOV_UP = common dso_local global i64 0, align 8
@ACTIONID_COMBO_VOL_FOV_DOWN = common dso_local global i64 0, align 8
@ACTIONID_JUMP_FORWARD_EXTRASHORT = common dso_local global i64 0, align 8
@ACTIONID_JUMP_BACKWARD_EXTRASHORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32, i32)* @add_wheel_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_wheel_mapping(i8** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @ACTIONID_NONE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* @ACTIONID_NONE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %23 [
    i32 0, label %14
    i32 2, label %17
    i32 3, label %20
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* @ACTIONID_COMBO_VOL_FOV_UP, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* @ACTIONID_COMBO_VOL_FOV_DOWN, align 8
  store i64 %16, i64* %10, align 8
  br label %23

17:                                               ; preds = %4
  %18 = load i64, i64* @ACTIONID_JUMP_FORWARD_EXTRASHORT, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* @ACTIONID_JUMP_BACKWARD_EXTRASHORT, align 8
  store i64 %19, i64* %10, align 8
  br label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @ACTIONID_JUMP_BACKWARD_EXTRASHORT, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* @ACTIONID_JUMP_FORWARD_EXTRASHORT, align 8
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %4, %20, %17, %14
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @ACTIONID_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @add_mapping(i8** %28, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @ACTIONID_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @add_mapping(i8** %37, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @add_mapping(i8**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
