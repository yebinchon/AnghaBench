; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_cursormove.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_cursormove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32, i32, i64 }

@MODE_ORIGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_cursormove(%struct.screen_write_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.screen_write_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.screen*, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %10, i32 0, i32 0
  %12 = load %struct.screen*, %struct.screen** %11, align 8
  store %struct.screen* %12, %struct.screen** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load %struct.screen*, %struct.screen** %9, align 8
  %20 = getelementptr inbounds %struct.screen, %struct.screen* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MODE_ORIGIN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.screen*, %struct.screen** %9, align 8
  %29 = getelementptr inbounds %struct.screen, %struct.screen* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.screen*, %struct.screen** %9, align 8
  %33 = getelementptr inbounds %struct.screen, %struct.screen* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = icmp sgt i64 %27, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load %struct.screen*, %struct.screen** %9, align 8
  %39 = getelementptr inbounds %struct.screen, %struct.screen* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %49

41:                                               ; preds = %25
  %42 = load %struct.screen*, %struct.screen** %9, align 8
  %43 = getelementptr inbounds %struct.screen, %struct.screen* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %41, %37
  br label %50

50:                                               ; preds = %49, %18, %15, %4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.screen*, %struct.screen** %9, align 8
  %57 = call i32 @screen_size_x(%struct.screen* %56)
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = icmp sgt i64 %55, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.screen*, %struct.screen** %9, align 8
  %63 = call i32 @screen_size_x(%struct.screen* %62)
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %53, %50
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.screen*, %struct.screen** %9, align 8
  %72 = call i32 @screen_size_y(%struct.screen* %71)
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = icmp sgt i64 %70, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.screen*, %struct.screen** %9, align 8
  %78 = call i32 @screen_size_y(%struct.screen* %77)
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %68, %65
  %81 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %81, i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
