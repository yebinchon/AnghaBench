; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_printable_flags.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_printable_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.winlink* }
%struct.winlink = type { i32, %struct.TYPE_3__*, %struct.session* }
%struct.TYPE_3__ = type { i32 }
%struct.session = type { i32, %struct.winlink* }

@window_printable_flags.flags = internal global [32 x i8] zeroinitializer, align 16
@WINLINK_ACTIVITY = common dso_local global i32 0, align 4
@WINLINK_BELL = common dso_local global i32 0, align 4
@WINLINK_SILENCE = common dso_local global i32 0, align 4
@marked_pane = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@WINDOW_ZOOMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @window_printable_flags(%struct.winlink* %0) #0 {
  %2 = alloca %struct.winlink*, align 8
  %3 = alloca %struct.session*, align 8
  %4 = alloca i32, align 4
  store %struct.winlink* %0, %struct.winlink** %2, align 8
  %5 = load %struct.winlink*, %struct.winlink** %2, align 8
  %6 = getelementptr inbounds %struct.winlink, %struct.winlink* %5, i32 0, i32 2
  %7 = load %struct.session*, %struct.session** %6, align 8
  store %struct.session* %7, %struct.session** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.winlink*, %struct.winlink** %2, align 8
  %9 = getelementptr inbounds %struct.winlink, %struct.winlink* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @WINLINK_ACTIVITY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 %17
  store i8 35, i8* %18, align 1
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.winlink*, %struct.winlink** %2, align 8
  %21 = getelementptr inbounds %struct.winlink, %struct.winlink* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WINLINK_BELL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 %29
  store i8 33, i8* %30, align 1
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.winlink*, %struct.winlink** %2, align 8
  %33 = getelementptr inbounds %struct.winlink, %struct.winlink* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WINLINK_SILENCE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 %41
  store i8 126, i8* %42, align 1
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.winlink*, %struct.winlink** %2, align 8
  %45 = load %struct.session*, %struct.session** %3, align 8
  %46 = getelementptr inbounds %struct.session, %struct.session* %45, i32 0, i32 1
  %47 = load %struct.winlink*, %struct.winlink** %46, align 8
  %48 = icmp eq %struct.winlink* %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 %52
  store i8 42, i8* %53, align 1
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.winlink*, %struct.winlink** %2, align 8
  %56 = load %struct.session*, %struct.session** %3, align 8
  %57 = getelementptr inbounds %struct.session, %struct.session* %56, i32 0, i32 0
  %58 = call %struct.winlink* @TAILQ_FIRST(i32* %57)
  %59 = icmp eq %struct.winlink* %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 %63
  store i8 45, i8* %64, align 1
  br label %65

65:                                               ; preds = %60, %54
  %66 = call i64 (...) @server_check_marked()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.winlink*, %struct.winlink** %2, align 8
  %70 = load %struct.winlink*, %struct.winlink** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @marked_pane, i32 0, i32 0), align 8
  %71 = icmp eq %struct.winlink* %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 %75
  store i8 77, i8* %76, align 1
  br label %77

77:                                               ; preds = %72, %68, %65
  %78 = load %struct.winlink*, %struct.winlink** %2, align 8
  %79 = getelementptr inbounds %struct.winlink, %struct.winlink* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WINDOW_ZOOMED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 %89
  store i8 90, i8* %90, align 1
  br label %91

91:                                               ; preds = %86, %77
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 %93
  store i8 0, i8* %94, align 1
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @window_printable_flags.flags, i64 0, i64 0)
}

declare dso_local %struct.winlink* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @server_check_marked(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
