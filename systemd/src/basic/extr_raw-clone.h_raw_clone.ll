; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_raw-clone.h_raw_clone.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_raw-clone.h_raw_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_VM = common dso_local global i64 0, align 8
@CLONE_PARENT_SETTID = common dso_local global i64 0, align 8
@CLONE_CHILD_SETTID = common dso_local global i64 0, align 8
@CLONE_CHILD_CLEARTID = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8
@__NR_clone = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @raw_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_clone(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @CLONE_VM, align 8
  %6 = load i64, i64* @CLONE_PARENT_SETTID, align 8
  %7 = or i64 %5, %6
  %8 = load i64, i64* @CLONE_CHILD_SETTID, align 8
  %9 = or i64 %7, %8
  %10 = load i64, i64* @CLONE_CHILD_CLEARTID, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* @CLONE_SETTLS, align 8
  %13 = or i64 %11, %12
  %14 = and i64 %4, %13
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @__NR_clone, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @syscall(i32 %18, i64 %19, i64 0)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (...) @reset_cached_pid()
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @syscall(i32, i64, i64) #1

declare dso_local i32 @reset_cached_pid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
