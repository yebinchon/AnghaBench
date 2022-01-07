; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_update_title.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_update_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [32 x i8] c"Unable to allocate title string\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_update_title(%struct.sway_view* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %9 = call i8* @view_get_title(%struct.sway_view* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %17 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %25 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %23, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %107

32:                                               ; preds = %22, %15, %12
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %37 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %107

43:                                               ; preds = %35, %32
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %46 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %52 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %44
  %60 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %61 = call i64 @parse_title_format(%struct.sway_view* %60, i8* null)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  %64 = call i8* @calloc(i64 %63, i32 1)
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @sway_assert(i8* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %107

69:                                               ; preds = %59
  %70 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @parse_title_format(%struct.sway_view* %70, i8* %71)
  %73 = load i8*, i8** %5, align 8
  %74 = call i8* @strdup(i8* %73)
  %75 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %76 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i8* %74, i8** %78, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %81 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i8* %79, i8** %83, align 8
  br label %93

84:                                               ; preds = %44
  %85 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %86 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i8* null, i8** %88, align 8
  %89 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %90 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i8* null, i8** %92, align 8
  br label %93

93:                                               ; preds = %84, %69
  %94 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %95 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = call i32 @container_calculate_title_height(%struct.TYPE_4__* %96)
  %98 = call i32 @config_update_font_height(i32 0)
  %99 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %100 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = call i32 @container_update_title_textures(%struct.TYPE_4__* %101)
  %103 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %104 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = call i32 @ipc_event_window(%struct.TYPE_4__* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %93, %68, %42, %31
  ret void
}

declare dso_local i8* @view_get_title(%struct.sway_view*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @parse_title_format(%struct.sway_view*, i8*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @sway_assert(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @container_calculate_title_height(%struct.TYPE_4__*) #1

declare dso_local i32 @config_update_font_height(i32) #1

declare dso_local i32 @container_update_title_textures(%struct.TYPE_4__*) #1

declare dso_local i32 @ipc_event_window(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
