; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_memfd-util.c_memfd_get_sealed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_memfd-util.c_memfd_get_sealed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GET_SEALS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@F_SEAL_GROW = common dso_local global i32 0, align 4
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memfd_get_sealed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @F_GET_SEALS, align 4
  %11 = call i32 @fcntl(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @errno, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @F_SEAL_SHRINK, align 4
  %20 = load i32, i32* @F_SEAL_GROW, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @F_SEAL_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @F_SEAL_SEAL, align 4
  %25 = or i32 %23, %24
  %26 = icmp eq i32 %18, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fcntl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
