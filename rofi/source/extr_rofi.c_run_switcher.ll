; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_run_switcher.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_run_switcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@num_modi = common dso_local global i32 0, align 4
@modi = common dso_local global %struct.TYPE_10__** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to initialize the mode: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_MSG_MARKUP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@curr_switcher = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@process_result = common dso_local global i32 0, align 4
@main_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @run_switcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_switcher(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @num_modi, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @modi, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %11, i64 %13
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = call i32 @mode_init(%struct.TYPE_10__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %10
  %19 = call %struct.TYPE_9__* @g_string_new(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @modi, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %21, i64 %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @g_string_append(%struct.TYPE_9__* %20, i8* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i32 @g_string_append(%struct.TYPE_9__* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ERROR_MSG_MARKUP, align 4
  %35 = call i32 @rofi_view_error_dialog(i32 %33, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @g_string_free(%struct.TYPE_9__* %36, i32 %37)
  br label %43

39:                                               ; preds = %10
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %6

43:                                               ; preds = %18, %6
  %44 = call i32* (...) @rofi_view_get_active()
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %67

47:                                               ; preds = %43
  %48 = load i64, i64* %2, align 8
  store i64 %48, i64* @curr_switcher, align 8
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @modi, align 8
  %50 = load i64, i64* %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 4
  %54 = load i32, i32* @process_result, align 4
  %55 = call i32* @rofi_view_create(%struct.TYPE_10__* %52, i32 %53, i32 0, i32 %54)
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @rofi_view_set_active(i32* %59)
  br label %61

61:                                               ; preds = %58, %47
  %62 = call i32* (...) @rofi_view_get_active()
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @main_loop, align 4
  %66 = call i32 @g_main_loop_quit(i32 %65)
  br label %67

67:                                               ; preds = %46, %64, %61
  ret void
}

declare dso_local i32 @mode_init(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @g_string_new(i8*) #1

declare dso_local i32 @g_string_append(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @rofi_view_error_dialog(i32, i32) #1

declare dso_local i32 @g_string_free(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @rofi_view_get_active(...) #1

declare dso_local i32* @rofi_view_create(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @rofi_view_set_active(i32*) #1

declare dso_local i32 @g_main_loop_quit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
