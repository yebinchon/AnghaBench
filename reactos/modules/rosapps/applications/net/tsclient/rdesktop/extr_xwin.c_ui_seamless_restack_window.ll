; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_seamless_restack_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_seamless_restack_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"ui_seamless_restack_window: No information for window 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_seamless_restack_window(%struct.TYPE_11__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca [2 x i32], align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %66

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.TYPE_10__* @sw_get_window_by_id(%struct.TYPE_11__* %19, i64 %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %66

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call %struct.TYPE_10__* @sw_get_window_by_id(%struct.TYPE_11__* %31, i64 %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %10, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %66

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %52 = call i32 @XRestackWindows(i32 %50, i32* %51, i32 2)
  br label %61

53:                                               ; preds = %27
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @XRaiseWindow(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %53, %39
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @sw_restack_window(%struct.TYPE_11__* %62, %struct.TYPE_10__* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %36, %24, %17
  ret void
}

declare dso_local %struct.TYPE_10__* @sw_get_window_by_id(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @warning(i8*, i64) #1

declare dso_local i32 @XRestackWindows(i32, i32*, i32) #1

declare dso_local i32 @XRaiseWindow(i32, i32) #1

declare dso_local i32 @sw_restack_window(%struct.TYPE_11__*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
