; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_deleteline.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_deleteline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, i64, %struct.grid* }
%struct.grid = type { i32 }
%struct.tty_ctx = type { i64, i64 }

@tty_cmd_deleteline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_deleteline(%struct.screen_write_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.grid*, align 8
  %9 = alloca %struct.tty_ctx, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %10, i32 0, i32 0
  %12 = load %struct.screen*, %struct.screen** %11, align 8
  store %struct.screen* %12, %struct.screen** %7, align 8
  %13 = load %struct.screen*, %struct.screen** %7, align 8
  %14 = getelementptr inbounds %struct.screen, %struct.screen* %13, i32 0, i32 3
  %15 = load %struct.grid*, %struct.grid** %14, align 8
  store %struct.grid* %15, %struct.grid** %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 1, i64* %5, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.screen*, %struct.screen** %7, align 8
  %21 = getelementptr inbounds %struct.screen, %struct.screen* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.screen*, %struct.screen** %7, align 8
  %24 = getelementptr inbounds %struct.screen, %struct.screen* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.screen*, %struct.screen** %7, align 8
  %29 = getelementptr inbounds %struct.screen, %struct.screen* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.screen*, %struct.screen** %7, align 8
  %32 = getelementptr inbounds %struct.screen, %struct.screen* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %27, %19
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.screen*, %struct.screen** %7, align 8
  %38 = call i64 @screen_size_y(%struct.screen* %37)
  %39 = load %struct.screen*, %struct.screen** %7, align 8
  %40 = getelementptr inbounds %struct.screen, %struct.screen* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = icmp sgt i64 %36, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.screen*, %struct.screen** %7, align 8
  %46 = call i64 @screen_size_y(%struct.screen* %45)
  %47 = load %struct.screen*, %struct.screen** %7, align 8
  %48 = getelementptr inbounds %struct.screen, %struct.screen* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %44, %35
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %143

55:                                               ; preds = %51
  %56 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %57 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %56, %struct.tty_ctx* %9)
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load %struct.grid*, %struct.grid** %8, align 8
  %61 = load %struct.screen*, %struct.screen** %7, align 8
  %62 = getelementptr inbounds %struct.screen, %struct.screen* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @grid_view_delete_lines(%struct.grid* %60, i64 %63, i64 %64, i64 %65)
  %67 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %68 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %67, i32 0)
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* @tty_cmd_deleteline, align 4
  %72 = call i32 @tty_write(i32 %71, %struct.tty_ctx* %9)
  br label %143

73:                                               ; preds = %27
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.screen*, %struct.screen** %7, align 8
  %76 = getelementptr inbounds %struct.screen, %struct.screen* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  %79 = load %struct.screen*, %struct.screen** %7, align 8
  %80 = getelementptr inbounds %struct.screen, %struct.screen* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = icmp sgt i64 %74, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load %struct.screen*, %struct.screen** %7, align 8
  %86 = getelementptr inbounds %struct.screen, %struct.screen* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  %89 = load %struct.screen*, %struct.screen** %7, align 8
  %90 = getelementptr inbounds %struct.screen, %struct.screen* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %84, %73
  %94 = load i64, i64* %5, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %143

97:                                               ; preds = %93
  %98 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %99 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %98, %struct.tty_ctx* %9)
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 1
  store i64 %100, i64* %101, align 8
  %102 = load %struct.screen*, %struct.screen** %7, align 8
  %103 = getelementptr inbounds %struct.screen, %struct.screen* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.screen*, %struct.screen** %7, align 8
  %106 = getelementptr inbounds %struct.screen, %struct.screen* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %97
  %110 = load %struct.screen*, %struct.screen** %7, align 8
  %111 = getelementptr inbounds %struct.screen, %struct.screen* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.screen*, %struct.screen** %7, align 8
  %114 = getelementptr inbounds %struct.screen, %struct.screen* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %112, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %109, %97
  %118 = load %struct.grid*, %struct.grid** %8, align 8
  %119 = load %struct.screen*, %struct.screen** %7, align 8
  %120 = getelementptr inbounds %struct.screen, %struct.screen* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @grid_view_delete_lines(%struct.grid* %118, i64 %121, i64 %122, i64 %123)
  br label %136

125:                                              ; preds = %109
  %126 = load %struct.grid*, %struct.grid** %8, align 8
  %127 = load %struct.screen*, %struct.screen** %7, align 8
  %128 = getelementptr inbounds %struct.screen, %struct.screen* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.screen*, %struct.screen** %7, align 8
  %131 = getelementptr inbounds %struct.screen, %struct.screen* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @grid_view_delete_lines_region(%struct.grid* %126, i64 %129, i64 %132, i64 %133, i64 %134)
  br label %136

136:                                              ; preds = %125, %117
  %137 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %138 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %137, i32 0)
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 0
  store i64 %139, i64* %140, align 8
  %141 = load i32, i32* @tty_cmd_deleteline, align 4
  %142 = call i32 @tty_write(i32 %141, %struct.tty_ctx* %9)
  br label %143

143:                                              ; preds = %136, %96, %55, %54
  ret void
}

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_delete_lines(%struct.grid*, i64, i64, i64) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_delete_lines_region(%struct.grid*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
