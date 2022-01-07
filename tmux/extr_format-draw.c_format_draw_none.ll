; ModuleID = '/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_none.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format-draw.c_format_draw_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.screen = type { i64 }
%struct.format_ranges = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_write_ctx*, i64, i64, i64, %struct.screen*, %struct.screen*, %struct.screen*, %struct.format_ranges*)* @format_draw_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_draw_none(%struct.screen_write_ctx* %0, i64 %1, i64 %2, i64 %3, %struct.screen* %4, %struct.screen* %5, %struct.screen* %6, %struct.format_ranges* %7) #0 {
  %9 = alloca %struct.screen_write_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.screen*, align 8
  %14 = alloca %struct.screen*, align 8
  %15 = alloca %struct.screen*, align 8
  %16 = alloca %struct.format_ranges*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.screen* %4, %struct.screen** %13, align 8
  store %struct.screen* %5, %struct.screen** %14, align 8
  store %struct.screen* %6, %struct.screen** %15, align 8
  store %struct.format_ranges* %7, %struct.format_ranges** %16, align 8
  %20 = load %struct.screen*, %struct.screen** %13, align 8
  %21 = getelementptr inbounds %struct.screen, %struct.screen* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %17, align 8
  %23 = load %struct.screen*, %struct.screen** %14, align 8
  %24 = getelementptr inbounds %struct.screen, %struct.screen* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %18, align 8
  %26 = load %struct.screen*, %struct.screen** %15, align 8
  %27 = getelementptr inbounds %struct.screen, %struct.screen* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %19, align 8
  br label %29

29:                                               ; preds = %53, %8
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* %18, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* %19, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* %10, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load i64, i64* %18, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %18, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %18, align 8
  br label %53

43:                                               ; preds = %37
  %44 = load i64, i64* %19, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %19, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %19, align 8
  br label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %17, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %17, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %40
  br label %29

54:                                               ; preds = %29
  %55 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.screen*, %struct.screen** %13, align 8
  %59 = load %struct.format_ranges*, %struct.format_ranges** %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call i32 @format_draw_put(%struct.screen_write_ctx* %55, i64 %56, i64 %57, %struct.screen* %58, %struct.format_ranges* %59, i64 0, i32 0, i64 %60)
  %62 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.screen*, %struct.screen** %15, align 8
  %66 = load %struct.format_ranges*, %struct.format_ranges** %16, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %19, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load %struct.screen*, %struct.screen** %15, align 8
  %71 = getelementptr inbounds %struct.screen, %struct.screen* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %19, align 8
  %74 = sub nsw i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %19, align 8
  %77 = call i32 @format_draw_put(%struct.screen_write_ctx* %62, i64 %63, i64 %64, %struct.screen* %65, %struct.format_ranges* %66, i64 %69, i32 %75, i64 %76)
  %78 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.screen*, %struct.screen** %14, align 8
  %82 = load %struct.format_ranges*, %struct.format_ranges** %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %19, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load i64, i64* %17, align 8
  %88 = sub nsw i64 %86, %87
  %89 = sdiv i64 %88, 2
  %90 = add nsw i64 %83, %89
  %91 = load i64, i64* %18, align 8
  %92 = sdiv i64 %91, 2
  %93 = sub nsw i64 %90, %92
  %94 = load %struct.screen*, %struct.screen** %14, align 8
  %95 = getelementptr inbounds %struct.screen, %struct.screen* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sdiv i64 %96, 2
  %98 = load i64, i64* %18, align 8
  %99 = sdiv i64 %98, 2
  %100 = sub nsw i64 %97, %99
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* %18, align 8
  %103 = call i32 @format_draw_put(%struct.screen_write_ctx* %78, i64 %79, i64 %80, %struct.screen* %81, %struct.format_ranges* %82, i64 %93, i32 %101, i64 %102)
  ret void
}

declare dso_local i32 @format_draw_put(%struct.screen_write_ctx*, i64, i64, %struct.screen*, %struct.format_ranges*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
