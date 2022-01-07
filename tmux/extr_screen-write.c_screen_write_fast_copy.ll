; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_fast_copy.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_fast_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, %struct.grid* }
%struct.grid = type { i64, i64 }
%struct.grid_cell = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_fast_copy(%struct.screen_write_ctx* %0, %struct.screen* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.screen_write_ctx*, align 8
  %8 = alloca %struct.screen*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.screen*, align 8
  %14 = alloca %struct.grid*, align 8
  %15 = alloca %struct.grid_cell, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %7, align 8
  store %struct.screen* %1, %struct.screen** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %20, i32 0, i32 0
  %22 = load %struct.screen*, %struct.screen** %21, align 8
  store %struct.screen* %22, %struct.screen** %13, align 8
  %23 = load %struct.screen*, %struct.screen** %8, align 8
  %24 = getelementptr inbounds %struct.screen, %struct.screen* %23, i32 0, i32 2
  %25 = load %struct.grid*, %struct.grid** %24, align 8
  store %struct.grid* %25, %struct.grid** %14, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* %12, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %6
  br label %109

32:                                               ; preds = %28
  %33 = load %struct.screen*, %struct.screen** %13, align 8
  %34 = getelementptr inbounds %struct.screen, %struct.screen* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %17, align 8
  br label %37

37:                                               ; preds = %106, %32
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %12, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %109

43:                                               ; preds = %37
  %44 = load i64, i64* %17, align 8
  %45 = load %struct.grid*, %struct.grid** %14, align 8
  %46 = getelementptr inbounds %struct.grid, %struct.grid* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.grid*, %struct.grid** %14, align 8
  %49 = getelementptr inbounds %struct.grid, %struct.grid* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = icmp sge i64 %44, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %109

54:                                               ; preds = %43
  %55 = load %struct.screen*, %struct.screen** %13, align 8
  %56 = getelementptr inbounds %struct.screen, %struct.screen* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %18, align 8
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %16, align 8
  br label %59

59:                                               ; preds = %100, %54
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %59
  %66 = load i64, i64* %16, align 8
  %67 = load %struct.grid*, %struct.grid** %14, align 8
  %68 = load i64, i64* %17, align 8
  %69 = call %struct.TYPE_4__* @grid_get_line(%struct.grid* %67, i64 %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %66, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %103

74:                                               ; preds = %65
  %75 = load %struct.grid*, %struct.grid** %14, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %17, align 8
  %78 = call i32 @grid_get_cell(%struct.grid* %75, i64 %76, i64 %77, %struct.grid_cell* %15)
  %79 = load i64, i64* %16, align 8
  %80 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = add nsw i64 %84, %85
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %103

89:                                               ; preds = %74
  %90 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %7, align 8
  %91 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %90, i32 0, i32 0
  %92 = load %struct.screen*, %struct.screen** %91, align 8
  %93 = getelementptr inbounds %struct.screen, %struct.screen* %92, i32 0, i32 2
  %94 = load %struct.grid*, %struct.grid** %93, align 8
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %19, align 8
  %97 = call i32 @grid_view_set_cell(%struct.grid* %94, i64 %95, i64 %96, %struct.grid_cell* %15)
  %98 = load i64, i64* %18, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %18, align 8
  br label %100

100:                                              ; preds = %89
  %101 = load i64, i64* %16, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %16, align 8
  br label %59

103:                                              ; preds = %88, %73, %59
  %104 = load i64, i64* %19, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %19, align 8
  br label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %17, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %17, align 8
  br label %37

109:                                              ; preds = %31, %53, %37
  ret void
}

declare dso_local %struct.TYPE_4__* @grid_get_line(%struct.grid*, i64) #1

declare dso_local i32 @grid_get_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

declare dso_local i32 @grid_view_set_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
