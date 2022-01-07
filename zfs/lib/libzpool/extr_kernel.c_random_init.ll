; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_random_init.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_random_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_path = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@random_fd = common dso_local global i32 0, align 4
@urandom_path = common dso_local global i32 0, align 4
@urandom_fd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_init() #0 {
  %1 = load i32, i32* @random_path, align 4
  %2 = load i32, i32* @O_RDONLY, align 4
  %3 = call i32 @open(i32 %1, i32 %2)
  store i32 %3, i32* @random_fd, align 4
  %4 = icmp ne i32 %3, -1
  %5 = zext i1 %4 to i32
  %6 = call i32 @VERIFY(i32 %5)
  %7 = load i32, i32* @urandom_path, align 4
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i32 %7, i32 %8)
  store i32 %9, i32* @urandom_fd, align 4
  %10 = icmp ne i32 %9, -1
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @open(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
