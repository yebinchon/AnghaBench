; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_display_startup_notification.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_display_startup_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32*, i32, i32 }

@xcb = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"rofi\00", align 1
@sn_launcher_context_setup_child_process = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_startup_notification(%struct.TYPE_4__* %0, i64* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %103

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @sn_launcher_context_new(i32 %16, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sn_launcher_context_set_name(i32* %21, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sn_launcher_context_set_description(i32* %26, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %13
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @sn_launcher_context_set_binary_name(i32* %36, i32* %39)
  br label %41

41:                                               ; preds = %35, %13
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @sn_launcher_context_set_icon_name(i32* %47, i32* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @sn_launcher_context_set_application_id(i32* %58, i32* %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @sn_launcher_context_set_wmclass(i32* %69, i32* %72)
  br label %74

74:                                               ; preds = %68, %63
  store i32 0, i32* %9, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @xcb_ewmh_get_current_desktop(i32* %76, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @xcb_ewmh_get_current_desktop_reply(i32* %82, i32 %83, i32* %9, i32* null)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @sn_launcher_context_set_workspace(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %74
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sn_launcher_context_initiate(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load i64, i64* @sn_launcher_context_setup_child_process, align 8
  %100 = load i64*, i64** %5, align 8
  store i64 %99, i64* %100, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i32**, i32*** %6, align 8
  store i32* %101, i32** %102, align 8
  br label %103

103:                                              ; preds = %90, %12
  ret void
}

declare dso_local i32* @sn_launcher_context_new(i32, i32) #1

declare dso_local i32 @sn_launcher_context_set_name(i32*, i32) #1

declare dso_local i32 @sn_launcher_context_set_description(i32*, i32) #1

declare dso_local i32 @sn_launcher_context_set_binary_name(i32*, i32*) #1

declare dso_local i32 @sn_launcher_context_set_icon_name(i32*, i32*) #1

declare dso_local i32 @sn_launcher_context_set_application_id(i32*, i32*) #1

declare dso_local i32 @sn_launcher_context_set_wmclass(i32*, i32*) #1

declare dso_local i32 @xcb_ewmh_get_current_desktop(i32*, i32) #1

declare dso_local i64 @xcb_ewmh_get_current_desktop_reply(i32*, i32, i32*, i32*) #1

declare dso_local i32 @sn_launcher_context_set_workspace(i32*, i32) #1

declare dso_local i32 @sn_launcher_context_initiate(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
