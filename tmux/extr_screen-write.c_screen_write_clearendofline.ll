; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_clearendofline.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_clearendofline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.grid_line = type { i64 }
%struct.tty_ctx = type { i32 }

@tty_cmd_clearendofline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_clearendofline(%struct.screen_write_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.screen*, align 8
  %6 = alloca %struct.grid_line*, align 8
  %7 = alloca %struct.tty_ctx, align 4
  %8 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %9, i32 0, i32 0
  %11 = load %struct.screen*, %struct.screen** %10, align 8
  store %struct.screen* %11, %struct.screen** %5, align 8
  %12 = load %struct.screen*, %struct.screen** %5, align 8
  %13 = call i32 @screen_size_x(%struct.screen* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.screen*, %struct.screen** %5, align 8
  %15 = getelementptr inbounds %struct.screen, %struct.screen* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.screen*, %struct.screen** %5, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.screen*, %struct.screen** %5, align 8
  %23 = getelementptr inbounds %struct.screen, %struct.screen* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call %struct.grid_line* @grid_get_line(%struct.TYPE_3__* %16, i64 %25)
  store %struct.grid_line* %26, %struct.grid_line** %6, align 8
  %27 = load %struct.screen*, %struct.screen** %5, align 8
  %28 = getelementptr inbounds %struct.screen, %struct.screen* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %46, label %33

33:                                               ; preds = %2
  %34 = load %struct.screen*, %struct.screen** %5, align 8
  %35 = getelementptr inbounds %struct.screen, %struct.screen* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %39 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @COLOUR_DEFAULT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %2
  br label %85

47:                                               ; preds = %42, %33
  %48 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %49 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %48, %struct.tty_ctx* %7)
  %50 = load i32, i32* %4, align 4
  %51 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.screen*, %struct.screen** %5, align 8
  %53 = getelementptr inbounds %struct.screen, %struct.screen* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.screen*, %struct.screen** %5, align 8
  %56 = getelementptr inbounds %struct.screen, %struct.screen* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load %struct.screen*, %struct.screen** %5, align 8
  %60 = getelementptr inbounds %struct.screen, %struct.screen* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.screen*, %struct.screen** %5, align 8
  %64 = getelementptr inbounds %struct.screen, %struct.screen* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @grid_view_clear(%struct.TYPE_3__* %54, i64 %58, i64 %61, i64 %67, i32 1, i32 %68)
  %70 = load %struct.screen*, %struct.screen** %5, align 8
  %71 = getelementptr inbounds %struct.screen, %struct.screen* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %47
  %75 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %76 = load %struct.screen*, %struct.screen** %5, align 8
  %77 = getelementptr inbounds %struct.screen, %struct.screen* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @screen_write_collect_clear(%struct.screen_write_ctx* %75, i64 %78, i32 1)
  br label %80

80:                                               ; preds = %74, %47
  %81 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %82 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %81, i32 0)
  %83 = load i32, i32* @tty_cmd_clearendofline, align 4
  %84 = call i32 @tty_write(i32 %83, %struct.tty_ctx* %7)
  br label %85

85:                                               ; preds = %80, %46
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local %struct.grid_line* @grid_get_line(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @COLOUR_DEFAULT(i32) #1

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_clear(%struct.TYPE_3__*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @screen_write_collect_clear(%struct.screen_write_ctx*, i64, i32) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
