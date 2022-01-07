; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-unaligned.c_test_ne.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-unaligned.c_test_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ne() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 4711, i32* %1, align 4
  store i32 123456, i32* %2, align 4
  store i32 1286608618, i32* %3, align 4
  %4 = call i32 @unaligned_read_ne16(i32* %1)
  %5 = icmp eq i32 %4, 4711
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = call i32 @unaligned_read_ne32(i32* %2)
  %9 = icmp eq i32 %8, 123456
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = call i32 @unaligned_read_ne64(i32* %3)
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 9876543210
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = call i32 @unaligned_write_ne16(i32* %1, i32 1)
  %18 = call i32 @unaligned_write_ne32(i32* %2, i32 2)
  %19 = call i32 @unaligned_write_ne64(i32* %3, i32 3)
  %20 = load i32, i32* %1, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 2
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 3
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @unaligned_read_ne16(i32*) #1

declare dso_local i32 @unaligned_read_ne32(i32*) #1

declare dso_local i32 @unaligned_read_ne64(i32*) #1

declare dso_local i32 @unaligned_write_ne16(i32*, i32) #1

declare dso_local i32 @unaligned_write_ne32(i32*, i32) #1

declare dso_local i32 @unaligned_write_ne64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
