; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_scroll_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_scroll_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@opt_mouse_scroll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot scroll beyond the first column\00", align 1
@opt_horizontal_scroll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot scroll beyond the last line\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot scroll beyond the first line\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"request %d not handled in switch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scroll_view(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.view*, %struct.view** %3, align 8
  %7 = call i32 @view_is_displayed(%struct.view* %6)
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 129
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @opt_mouse_scroll, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %144 [
    i32 136, label %18
    i32 135, label %25
    i32 130, label %63
    i32 132, label %77
    i32 129, label %81
    i32 134, label %81
    i32 131, label %120
    i32 133, label %124
    i32 128, label %124
  ]

18:                                               ; preds = %16
  %19 = load %struct.view*, %struct.view** %3, align 8
  %20 = getelementptr inbounds %struct.view, %struct.view* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.view*, %struct.view** %3, align 8
  %23 = call i32 @redraw_view_from(%struct.view* %22, i32 0)
  %24 = call i32 (...) @report_clear()
  br label %151

25:                                               ; preds = %16
  %26 = load %struct.view*, %struct.view** %3, align 8
  %27 = getelementptr inbounds %struct.view, %struct.view* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @report(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %151

33:                                               ; preds = %25
  %34 = load %struct.view*, %struct.view** %3, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @opt_horizontal_scroll, align 4
  %39 = load %struct.view*, %struct.view** %3, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @apply_step(i32 %38, i32 %41)
  %43 = icmp sle i32 %37, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.view*, %struct.view** %3, align 8
  %46 = getelementptr inbounds %struct.view, %struct.view* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  br label %59

48:                                               ; preds = %33
  %49 = load i32, i32* @opt_horizontal_scroll, align 4
  %50 = load %struct.view*, %struct.view** %3, align 8
  %51 = getelementptr inbounds %struct.view, %struct.view* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @apply_step(i32 %49, i32 %52)
  %54 = load %struct.view*, %struct.view** %3, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %48, %44
  %60 = load %struct.view*, %struct.view** %3, align 8
  %61 = call i32 @redraw_view_from(%struct.view* %60, i32 0)
  %62 = call i32 (...) @report_clear()
  br label %151

63:                                               ; preds = %16
  %64 = load i32, i32* @opt_horizontal_scroll, align 4
  %65 = load %struct.view*, %struct.view** %3, align 8
  %66 = getelementptr inbounds %struct.view, %struct.view* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @apply_step(i32 %64, i32 %67)
  %69 = load %struct.view*, %struct.view** %3, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load %struct.view*, %struct.view** %3, align 8
  %75 = call i32 @redraw_view(%struct.view* %74)
  %76 = call i32 (...) @report_clear()
  br label %151

77:                                               ; preds = %16
  %78 = load %struct.view*, %struct.view** %3, align 8
  %79 = getelementptr inbounds %struct.view, %struct.view* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %16, %16, %77
  %82 = load %struct.view*, %struct.view** %3, align 8
  %83 = getelementptr inbounds %struct.view, %struct.view* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %struct.view*, %struct.view** %3, align 8
  %89 = getelementptr inbounds %struct.view, %struct.view* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = load %struct.view*, %struct.view** %3, align 8
  %94 = getelementptr inbounds %struct.view, %struct.view* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.view*, %struct.view** %3, align 8
  %97 = getelementptr inbounds %struct.view, %struct.view* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %95, %99
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %92, %81
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %101
  %105 = load %struct.view*, %struct.view** %3, align 8
  %106 = getelementptr inbounds %struct.view, %struct.view* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.view*, %struct.view** %3, align 8
  %110 = getelementptr inbounds %struct.view, %struct.view* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  %113 = load %struct.view*, %struct.view** %3, align 8
  %114 = getelementptr inbounds %struct.view, %struct.view* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %104, %101
  %118 = call i32 @report(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %151

119:                                              ; preds = %104
  br label %147

120:                                              ; preds = %16
  %121 = load %struct.view*, %struct.view** %3, align 8
  %122 = getelementptr inbounds %struct.view, %struct.view* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %16, %16, %120
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.view*, %struct.view** %3, align 8
  %127 = getelementptr inbounds %struct.view, %struct.view* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %125, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.view*, %struct.view** %3, align 8
  %133 = getelementptr inbounds %struct.view, %struct.view* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %124
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @report(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %151

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %147

144:                                              ; preds = %16
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %144, %141, %119
  %148 = load %struct.view*, %struct.view** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @do_scroll_view(%struct.view* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %139, %117, %63, %59, %31, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @redraw_view_from(%struct.view*, i32) #1

declare dso_local i32 @report_clear(...) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @apply_step(i32, i32) #1

declare dso_local i32 @redraw_view(%struct.view*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @do_scroll_view(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
