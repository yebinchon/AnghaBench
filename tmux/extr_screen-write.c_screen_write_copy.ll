; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_copy.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, %struct.grid* }
%struct.grid = type { i32 }
%struct.grid_cell = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_copy(%struct.screen_write_ctx* %0, %struct.screen* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32* %6, %struct.grid_cell* %7) #0 {
  %9 = alloca %struct.screen_write_ctx*, align 8
  %10 = alloca %struct.screen*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.grid_cell*, align 8
  %17 = alloca %struct.screen*, align 8
  %18 = alloca %struct.grid*, align 8
  %19 = alloca %struct.grid_cell, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %9, align 8
  store %struct.screen* %1, %struct.screen** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.grid_cell* %7, %struct.grid_cell** %16, align 8
  %25 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %9, align 8
  %26 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %25, i32 0, i32 0
  %27 = load %struct.screen*, %struct.screen** %26, align 8
  store %struct.screen* %27, %struct.screen** %17, align 8
  %28 = load %struct.screen*, %struct.screen** %10, align 8
  %29 = getelementptr inbounds %struct.screen, %struct.screen* %28, i32 0, i32 2
  %30 = load %struct.grid*, %struct.grid** %29, align 8
  store %struct.grid* %30, %struct.grid** %18, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %8
  %34 = load i64, i64* %14, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %8
  br label %118

37:                                               ; preds = %33
  %38 = load %struct.screen*, %struct.screen** %17, align 8
  %39 = getelementptr inbounds %struct.screen, %struct.screen* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %22, align 8
  %41 = load %struct.screen*, %struct.screen** %17, align 8
  %42 = getelementptr inbounds %struct.screen, %struct.screen* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %23, align 8
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %21, align 8
  br label %45

45:                                               ; preds = %115, %37
  %46 = load i64, i64* %21, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %14, align 8
  %49 = add nsw i64 %47, %48
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %118

51:                                               ; preds = %45
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %20, align 8
  br label %53

53:                                               ; preds = %105, %51
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = add nsw i64 %55, %56
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %108

59:                                               ; preds = %53
  %60 = load %struct.grid*, %struct.grid** %18, align 8
  %61 = load i64, i64* %20, align 8
  %62 = load i64, i64* %21, align 8
  %63 = call i32 @grid_get_cell(%struct.grid* %60, i64 %61, i64 %62, %struct.grid_cell* %19)
  %64 = load i32*, i32** %15, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %59
  %67 = load i64, i64* %21, align 8
  %68 = load %struct.screen*, %struct.screen** %10, align 8
  %69 = call i64 @screen_size_x(%struct.screen* %68)
  %70 = mul nsw i64 %67, %69
  %71 = load i64, i64* %20, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %24, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = load i64, i64* %24, align 8
  %75 = call i64 @bit_test(i32* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %66
  %78 = load %struct.grid_cell*, %struct.grid_cell** %16, align 8
  %79 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %19, i32 0, i32 3
  store i32 %80, i32* %81, align 8
  %82 = load %struct.grid_cell*, %struct.grid_cell** %16, align 8
  %83 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %19, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load %struct.grid_cell*, %struct.grid_cell** %16, align 8
  %87 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %19, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  br label %90

90:                                               ; preds = %77, %66
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i64, i64* %20, align 8
  %93 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %19, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %13, align 8
  %99 = add nsw i64 %97, %98
  %100 = icmp sle i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %9, align 8
  %103 = call i32 @screen_write_cell(%struct.screen_write_ctx* %102, %struct.grid_cell* %19)
  br label %104

104:                                              ; preds = %101, %91
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %20, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %20, align 8
  br label %53

108:                                              ; preds = %53
  %109 = load i64, i64* %23, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %23, align 8
  %111 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %9, align 8
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* %23, align 8
  %114 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %111, i64 %112, i64 %113)
  br label %115

115:                                              ; preds = %108
  %116 = load i64, i64* %21, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %21, align 8
  br label %45

118:                                              ; preds = %36, %45
  ret void
}

declare dso_local i32 @grid_get_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i64 @bit_test(i32*, i64) #1

declare dso_local i32 @screen_write_cell(%struct.screen_write_ctx*, %struct.grid_cell*) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
