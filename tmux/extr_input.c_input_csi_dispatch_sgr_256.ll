; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_csi_dispatch_sgr_256.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_csi_dispatch_sgr_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*, i32, i64*)* @input_csi_dispatch_sgr_256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_csi_dispatch_sgr_256(%struct.input_ctx* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.input_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %8 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = call i32 @input_get(%struct.input_ctx* %8, i64 %11, i32 0, i32 -1)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @input_csi_dispatch_sgr_256_do(%struct.input_ctx* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %18, %3
  ret void
}

declare dso_local i32 @input_get(%struct.input_ctx*, i64, i32, i32) #1

declare dso_local i64 @input_csi_dispatch_sgr_256_do(%struct.input_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
