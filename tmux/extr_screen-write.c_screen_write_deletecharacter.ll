; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_deletecharacter.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_deletecharacter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i32, i32 }
%struct.tty_ctx = type { i64, i64 }

@tty_cmd_deletecharacter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_deletecharacter(%struct.screen_write_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.screen*, align 8
  %8 = alloca %struct.tty_ctx, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %9, i32 0, i32 0
  %11 = load %struct.screen*, %struct.screen** %10, align 8
  store %struct.screen* %11, %struct.screen** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 1, i64* %5, align 8
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.screen*, %struct.screen** %7, align 8
  %18 = call i32 @screen_size_x(%struct.screen* %17)
  %19 = sext i32 %18 to i64
  %20 = load %struct.screen*, %struct.screen** %7, align 8
  %21 = getelementptr inbounds %struct.screen, %struct.screen* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = icmp sgt i64 %16, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load %struct.screen*, %struct.screen** %7, align 8
  %27 = call i32 @screen_size_x(%struct.screen* %26)
  %28 = sext i32 %27 to i64
  %29 = load %struct.screen*, %struct.screen** %7, align 8
  %30 = getelementptr inbounds %struct.screen, %struct.screen* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %25, %15
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %71

37:                                               ; preds = %33
  %38 = load %struct.screen*, %struct.screen** %7, align 8
  %39 = getelementptr inbounds %struct.screen, %struct.screen* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.screen*, %struct.screen** %7, align 8
  %42 = call i32 @screen_size_x(%struct.screen* %41)
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = icmp sgt i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %71

47:                                               ; preds = %37
  %48 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %49 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %48, %struct.tty_ctx* %8)
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %8, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load %struct.screen*, %struct.screen** %7, align 8
  %53 = getelementptr inbounds %struct.screen, %struct.screen* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.screen*, %struct.screen** %7, align 8
  %56 = getelementptr inbounds %struct.screen, %struct.screen* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.screen*, %struct.screen** %7, align 8
  %60 = getelementptr inbounds %struct.screen, %struct.screen* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @grid_view_delete_cells(i32 %54, i32 %58, i32 %61, i64 %62, i64 %63)
  %65 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %66 = call i32 @screen_write_collect_flush(%struct.screen_write_ctx* %65, i32 0)
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %8, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* @tty_cmd_deletecharacter, align 4
  %70 = call i32 @tty_write(i32 %69, %struct.tty_ctx* %8)
  br label %71

71:                                               ; preds = %47, %46, %36
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @grid_view_delete_cells(i32, i32, i32, i64, i64) #1

declare dso_local i32 @screen_write_collect_flush(%struct.screen_write_ctx*, i32) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
