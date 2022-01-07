; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_margin.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_margin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i64, i32, i32, i32, i32, i32 }

@TTYC_CSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\1B[s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\1B[%u;%us\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i64, i64)* @tty_margin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_margin(%struct.tty* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = call i32 @tty_use_margin(%struct.tty* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %70

12:                                               ; preds = %3
  %13 = load %struct.tty*, %struct.tty** %4, align 8
  %14 = getelementptr inbounds %struct.tty, %struct.tty* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.tty*, %struct.tty** %4, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %70

25:                                               ; preds = %18, %12
  %26 = load %struct.tty*, %struct.tty** %4, align 8
  %27 = load i32, i32* @TTYC_CSR, align 4
  %28 = load %struct.tty*, %struct.tty** %4, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tty*, %struct.tty** %4, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @tty_putcode2(%struct.tty* %26, i32 %27, i32 %30, i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.tty*, %struct.tty** %4, align 8
  %37 = getelementptr inbounds %struct.tty, %struct.tty* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.tty*, %struct.tty** %4, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %25
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.tty*, %struct.tty** %4, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %52, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %61

54:                                               ; preds = %43, %25
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, 1
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load %struct.tty*, %struct.tty** %4, align 8
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %64 = call i32 @tty_puts(%struct.tty* %62, i8* %63)
  %65 = load i32, i32* @UINT_MAX, align 4
  %66 = load %struct.tty*, %struct.tty** %4, align 8
  %67 = getelementptr inbounds %struct.tty, %struct.tty* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.tty*, %struct.tty** %4, align 8
  %69 = getelementptr inbounds %struct.tty, %struct.tty* %68, i32 0, i32 4
  store i32 %65, i32* %69, align 8
  br label %70

70:                                               ; preds = %61, %24, %11
  ret void
}

declare dso_local i32 @tty_use_margin(%struct.tty*) #1

declare dso_local i32 @tty_putcode2(%struct.tty*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @tty_puts(%struct.tty*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
