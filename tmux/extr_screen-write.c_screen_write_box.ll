; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_box.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32, i32 }
%struct.grid_cell = type { i32 }

@grid_default_cell = common dso_local global i32 0, align 4
@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_box(%struct.screen_write_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.grid_cell, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %12, i32 0, i32 0
  %14 = load %struct.screen*, %struct.screen** %13, align 8
  store %struct.screen* %14, %struct.screen** %7, align 8
  %15 = load %struct.screen*, %struct.screen** %7, align 8
  %16 = getelementptr inbounds %struct.screen, %struct.screen* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.screen*, %struct.screen** %7, align 8
  %19 = getelementptr inbounds %struct.screen, %struct.screen* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = call i32 @memcpy(%struct.grid_cell* %8, i32* @grid_default_cell, i32 4)
  %22 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %23 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %27 = call i32 @screen_write_putc(%struct.screen_write_ctx* %26, %struct.grid_cell* %8, i8 signext 108)
  store i32 1, i32* %11, align 4
  br label %28

28:                                               ; preds = %36, %3
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %35 = call i32 @screen_write_putc(%struct.screen_write_ctx* %34, %struct.grid_cell* %8, i8 signext 113)
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %41 = call i32 @screen_write_putc(%struct.screen_write_ctx* %40, %struct.grid_cell* %8, i8 signext 107)
  %42 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %42, i32 %43, i32 %47)
  %49 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %50 = call i32 @screen_write_putc(%struct.screen_write_ctx* %49, %struct.grid_cell* %8, i8 signext 109)
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %59, %39
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %58 = call i32 @screen_write_putc(%struct.screen_write_ctx* %57, %struct.grid_cell* %8, i8 signext 113)
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %64 = call i32 @screen_write_putc(%struct.screen_write_ctx* %63, %struct.grid_cell* %8, i8 signext 106)
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %79, %62
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %71, i32 %72, i32 %75)
  %77 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %78 = call i32 @screen_write_putc(%struct.screen_write_ctx* %77, %struct.grid_cell* %8, i8 signext 120)
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %65

82:                                               ; preds = %65
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %100, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %90, %91
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %89, i32 %93, i32 %96)
  %98 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %99 = call i32 @screen_write_putc(%struct.screen_write_ctx* %98, %struct.grid_cell* %8, i8 signext 120)
  br label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %83

103:                                              ; preds = %83
  %104 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %104, i32 %105, i32 %106)
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
