; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_region.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i64, i64, i64, i64, i32 }

@TTYC_CSR = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i64, i64)* @tty_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_region(%struct.tty* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.tty*, %struct.tty** %4, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.tty*, %struct.tty** %4, align 8
  %14 = getelementptr inbounds %struct.tty, %struct.tty* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %62

19:                                               ; preds = %12, %3
  %20 = load %struct.tty*, %struct.tty** %4, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TTYC_CSR, align 4
  %24 = call i32 @tty_term_has(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %62

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.tty*, %struct.tty** %4, align 8
  %30 = getelementptr inbounds %struct.tty, %struct.tty* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.tty*, %struct.tty** %4, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.tty*, %struct.tty** %4, align 8
  %35 = getelementptr inbounds %struct.tty, %struct.tty* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tty*, %struct.tty** %4, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load %struct.tty*, %struct.tty** %4, align 8
  %43 = load %struct.tty*, %struct.tty** %4, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @tty_cursor(%struct.tty* %42, i32 0, i64 %45)
  br label %47

47:                                               ; preds = %41, %27
  %48 = load %struct.tty*, %struct.tty** %4, align 8
  %49 = load i32, i32* @TTYC_CSR, align 4
  %50 = load %struct.tty*, %struct.tty** %4, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tty*, %struct.tty** %4, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @tty_putcode2(%struct.tty* %48, i32 %49, i64 %52, i64 %55)
  %57 = load i64, i64* @UINT_MAX, align 8
  %58 = load %struct.tty*, %struct.tty** %4, align 8
  %59 = getelementptr inbounds %struct.tty, %struct.tty* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load %struct.tty*, %struct.tty** %4, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 2
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %47, %26, %18
  ret void
}

declare dso_local i32 @tty_term_has(i32, i32) #1

declare dso_local i32 @tty_cursor(%struct.tty*, i32, i64) #1

declare dso_local i32 @tty_putcode2(%struct.tty*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
