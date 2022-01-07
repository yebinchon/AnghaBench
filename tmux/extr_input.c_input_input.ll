; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_input.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i64, i32, i8*, i8, i32 }

@INPUT_BUF_LIMIT = common dso_local global i64 0, align 8
@INPUT_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_ctx*)* @input_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_input(%struct.input_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i64, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  %5 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %4, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %8
  %17 = load i64, i64* %4, align 8
  %18 = mul i64 %17, 2
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @INPUT_BUF_LIMIT, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* @INPUT_DISCARD, align 4
  %24 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %2, align 4
  br label %60

28:                                               ; preds = %16
  %29 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i8* @xrealloc(i8* %31, i64 %32)
  %34 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %8

39:                                               ; preds = %8
  %40 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %40, i32 0, i32 3
  %42 = load i8, i8* %41, align 8
  %43 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  store i8 %42, i8* %51, align 1
  %52 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8 0, i8* %59, align 1
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %39, %22
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @xrealloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
