; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_open_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_open_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.view = type { i32, i64, %struct.view* }

@OPEN_RELOAD = common dso_local global i32 0, align 4
@OPEN_PREPARED = common dso_local global i32 0, align 4
@OPEN_REFRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Already in %s view\00", align 1
@VIEW_NO_GIT_DIR = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"The %s view is disabled in pager mode\00", align 1
@display = common dso_local global %struct.view** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_view(%struct.view* %0, %struct.view* %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.view* %1, %struct.view** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @OPEN_RELOAD, align 4
  %11 = load i32, i32* @OPEN_PREPARED, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = call i32 (...) @displayed_views()
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @OPEN_REFRESH, align 4
  %21 = xor i32 %19, %20
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.view*, %struct.view** %5, align 8
  %24 = load %struct.view*, %struct.view** %4, align 8
  %25 = icmp eq %struct.view* %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load %struct.view*, %struct.view** %5, align 8
  %34 = getelementptr inbounds %struct.view, %struct.view* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %98

37:                                               ; preds = %29, %26, %3
  %38 = load %struct.view*, %struct.view** %5, align 8
  %39 = load i32, i32* @VIEW_NO_GIT_DIR, align 4
  %40 = call i32 @view_has_flags(%struct.view* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.view*, %struct.view** %5, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @report(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %98

52:                                               ; preds = %42, %37
  %53 = load %struct.view*, %struct.view** %4, align 8
  %54 = icmp ne %struct.view* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.view*, %struct.view** %4, align 8
  %57 = getelementptr inbounds %struct.view, %struct.view* %56, i32 0, i32 2
  %58 = load %struct.view*, %struct.view** %57, align 8
  %59 = icmp ne %struct.view* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.view*, %struct.view** %4, align 8
  %62 = load %struct.view**, %struct.view*** @display, align 8
  %63 = getelementptr inbounds %struct.view*, %struct.view** %62, i64 1
  %64 = load %struct.view*, %struct.view** %63, align 8
  %65 = icmp eq %struct.view* %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.view*, %struct.view** %4, align 8
  %68 = getelementptr inbounds %struct.view, %struct.view* %67, i32 0, i32 2
  %69 = load %struct.view*, %struct.view** %68, align 8
  store %struct.view* %69, %struct.view** %4, align 8
  br label %70

70:                                               ; preds = %66, %60, %55, %52
  %71 = load %struct.view*, %struct.view** %5, align 8
  %72 = getelementptr inbounds %struct.view, %struct.view* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %70
  %76 = load %struct.view*, %struct.view** %5, align 8
  %77 = getelementptr inbounds %struct.view, %struct.view* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.view*, %struct.view** %5, align 8
  %80 = getelementptr inbounds %struct.view, %struct.view* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strlen(i32 %81)
  %83 = call i64 @get_keymap(i32 %78, i32 %82)
  %84 = load %struct.view*, %struct.view** %5, align 8
  %85 = getelementptr inbounds %struct.view, %struct.view* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %75, %70
  %87 = load %struct.view*, %struct.view** %5, align 8
  %88 = load %struct.view*, %struct.view** %4, align 8
  %89 = icmp ne %struct.view* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load %struct.view*, %struct.view** %4, align 8
  br label %94

92:                                               ; preds = %86
  %93 = load %struct.view*, %struct.view** %5, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi %struct.view* [ %91, %90 ], [ %93, %92 ]
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @load_view(%struct.view* %87, %struct.view* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %47, %32
  ret void
}

declare dso_local i32 @displayed_views(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @report(i8*, i32) #1

declare dso_local i32 @view_has_flags(%struct.view*, i32) #1

declare dso_local i64 @get_keymap(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @load_view(%struct.view*, %struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
