; ModuleID = '/home/carl/AnghaBench/scrcpy/app/tests/extr_test_cbuf.c_test_cbuf_empty.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/tests/extr_test_cbuf.c_test_cbuf_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cbuf_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cbuf_empty() #0 {
  %1 = alloca %struct.int_queue, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @cbuf_init(%struct.int_queue* %1)
  %7 = call i32 @cbuf_is_empty(%struct.int_queue* %1)
  %8 = call i32 @assert(i32 %7)
  %9 = call i32 @cbuf_push(%struct.int_queue* %1, i32 42)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 @cbuf_is_empty(%struct.int_queue* %1)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @cbuf_take(%struct.int_queue* %1, i32* %3)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @assert(i32 %18)
  %20 = call i32 @cbuf_is_empty(%struct.int_queue* %1)
  %21 = call i32 @assert(i32 %20)
  %22 = call i32 @cbuf_take(%struct.int_queue* %1, i32* %3)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  ret void
}

declare dso_local i32 @cbuf_init(%struct.int_queue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cbuf_is_empty(%struct.int_queue*) #1

declare dso_local i32 @cbuf_push(%struct.int_queue*, i32) #1

declare dso_local i32 @cbuf_take(%struct.int_queue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
