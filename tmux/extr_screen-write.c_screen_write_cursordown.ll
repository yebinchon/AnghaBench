; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_cursordown.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_cursordown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_cursordown(%struct.screen_write_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.screen_write_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.screen*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %8, i32 0, i32 0
  %10 = load %struct.screen*, %struct.screen** %9, align 8
  store %struct.screen* %10, %struct.screen** %5, align 8
  %11 = load %struct.screen*, %struct.screen** %5, align 8
  %12 = getelementptr inbounds %struct.screen, %struct.screen* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.screen*, %struct.screen** %5, align 8
  %15 = getelementptr inbounds %struct.screen, %struct.screen* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i64 1, i64* %4, align 8
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.screen*, %struct.screen** %5, align 8
  %23 = getelementptr inbounds %struct.screen, %struct.screen* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.screen*, %struct.screen** %5, align 8
  %29 = call i32 @screen_size_y(%struct.screen* %28)
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %7, align 8
  %33 = sub nsw i64 %31, %32
  %34 = icmp sgt i64 %27, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.screen*, %struct.screen** %5, align 8
  %37 = call i32 @screen_size_y(%struct.screen* %36)
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %35, %26
  br label %58

43:                                               ; preds = %20
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.screen*, %struct.screen** %5, align 8
  %46 = getelementptr inbounds %struct.screen, %struct.screen* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub nsw i64 %47, %48
  %50 = icmp sgt i64 %44, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.screen*, %struct.screen** %5, align 8
  %53 = getelementptr inbounds %struct.screen, %struct.screen* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %51, %43
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.screen*, %struct.screen** %5, align 8
  %61 = call i64 @screen_size_x(%struct.screen* %60)
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %6, align 8
  br label %71

66:                                               ; preds = %58
  %67 = load i64, i64* %4, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %79

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %71, %69
  ret void
}

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
