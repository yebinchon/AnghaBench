; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_is_visible.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i64, i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.tty_ctx*, i64, i64, i64, i64)* @tty_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_is_visible(%struct.tty* %0, %struct.tty_ctx* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty*, align 8
  %9 = alloca %struct.tty_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %8, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %14, align 8
  %22 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %11, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %15, align 8
  %27 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %84

32:                                               ; preds = %6
  %33 = load %struct.tty*, %struct.tty** %8, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @status_at_line(i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.tty*, %struct.tty** %8, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @status_line_size(i32 %41)
  store i64 %42, i64* %16, align 8
  br label %44

43:                                               ; preds = %32
  store i64 0, i64* %16, align 8
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %49 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %82, label %52

52:                                               ; preds = %44
  %53 = load i64, i64* %14, align 8
  %54 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %58 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = icmp sge i64 %53, %60
  br i1 %61, label %82, label %62

62:                                               ; preds = %52
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %67 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %65, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %74 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.tty_ctx*, %struct.tty_ctx** %9, align 8
  %78 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = icmp sge i64 %71, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70, %62, %52, %44
  store i32 0, i32* %7, align 4
  br label %84

83:                                               ; preds = %70
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %82, %31
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i64 @status_at_line(i32) #1

declare dso_local i64 @status_line_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
