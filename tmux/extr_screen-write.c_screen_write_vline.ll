; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_vline.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_vline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32, i32 }
%struct.grid_cell = type { i32 }

@grid_default_cell = common dso_local global i32 0, align 4
@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_vline(%struct.screen_write_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.screen_write_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.screen*, align 8
  %10 = alloca %struct.grid_cell, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %14, i32 0, i32 0
  %16 = load %struct.screen*, %struct.screen** %15, align 8
  store %struct.screen* %16, %struct.screen** %9, align 8
  %17 = load %struct.screen*, %struct.screen** %9, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.screen*, %struct.screen** %9, align 8
  %21 = getelementptr inbounds %struct.screen, %struct.screen* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = call i32 @memcpy(%struct.grid_cell* %10, i32* @grid_default_cell, i32 4)
  %24 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %25 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 119, i32 120
  %33 = trunc i32 %32 to i8
  %34 = call i32 @screen_write_putc(%struct.screen_write_ctx* %28, %struct.grid_cell* %10, i8 signext %33)
  store i32 1, i32* %13, align 4
  br label %35

35:                                               ; preds = %49, %4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %41, i32 %42, i32 %45)
  %47 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %48 = call i32 @screen_write_putc(%struct.screen_write_ctx* %47, %struct.grid_cell* %10, i8 signext 120)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %35

52:                                               ; preds = %35
  %53 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %53, i32 %54, i32 %58)
  %60 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 118, i32 120
  %65 = trunc i32 %64 to i8
  %66 = call i32 @screen_write_putc(%struct.screen_write_ctx* %60, %struct.grid_cell* %10, i8 signext %65)
  %67 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %67, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @screen_write_putc(%struct.screen_write_ctx*, %struct.grid_cell*, i8 signext) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
