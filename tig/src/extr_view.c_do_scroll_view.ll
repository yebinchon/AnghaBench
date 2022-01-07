; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_do_scroll_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_do_scroll_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_scroll_view(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = load %struct.view*, %struct.view** %3, align 8
  %11 = getelementptr inbounds %struct.view, %struct.view* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, %9
  store i64 %14, i64* %12, align 8
  %15 = load %struct.view*, %struct.view** %3, align 8
  %16 = getelementptr inbounds %struct.view, %struct.view* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 0, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.view*, %struct.view** %3, align 8
  %22 = getelementptr inbounds %struct.view, %struct.view* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.view*, %struct.view** %3, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br label %29

29:                                               ; preds = %20, %2
  %30 = phi i1 [ false, %2 ], [ %28, %20 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.view*, %struct.view** %3, align 8
  %36 = getelementptr inbounds %struct.view, %struct.view* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.view*, %struct.view** %3, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load %struct.view*, %struct.view** %3, align 8
  %46 = getelementptr inbounds %struct.view, %struct.view* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.view*, %struct.view** %3, align 8
  %50 = getelementptr inbounds %struct.view, %struct.view* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  store i32 1, i32* %5, align 4
  br label %82

52:                                               ; preds = %29
  %53 = load %struct.view*, %struct.view** %3, align 8
  %54 = getelementptr inbounds %struct.view, %struct.view* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.view*, %struct.view** %3, align 8
  %58 = getelementptr inbounds %struct.view, %struct.view* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.view*, %struct.view** %3, align 8
  %62 = getelementptr inbounds %struct.view, %struct.view* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = icmp sge i64 %56, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %52
  %68 = load %struct.view*, %struct.view** %3, align 8
  %69 = getelementptr inbounds %struct.view, %struct.view* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.view*, %struct.view** %3, align 8
  %73 = getelementptr inbounds %struct.view, %struct.view* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  %77 = sub nsw i64 %76, 1
  %78 = load %struct.view*, %struct.view** %3, align 8
  %79 = getelementptr inbounds %struct.view, %struct.view* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  store i32 1, i32* %5, align 4
  br label %81

81:                                               ; preds = %67, %52
  br label %82

82:                                               ; preds = %81, %44
  %83 = load %struct.view*, %struct.view** %3, align 8
  %84 = getelementptr inbounds %struct.view, %struct.view* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.view*, %struct.view** %3, align 8
  %88 = getelementptr inbounds %struct.view, %struct.view* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %86, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %82
  %93 = load %struct.view*, %struct.view** %3, align 8
  %94 = getelementptr inbounds %struct.view, %struct.view* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.view*, %struct.view** %3, align 8
  %98 = getelementptr inbounds %struct.view, %struct.view* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br label %101

101:                                              ; preds = %92, %82
  %102 = phi i1 [ false, %82 ], [ %100, %92 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.view*, %struct.view** %3, align 8
  %106 = getelementptr inbounds %struct.view, %struct.view* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @ABS(i32 %108)
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load %struct.view*, %struct.view** %3, align 8
  %113 = call i32 @redraw_view(%struct.view* %112)
  br label %178

114:                                              ; preds = %101
  %115 = load i32, i32* %4, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.view*, %struct.view** %3, align 8
  %119 = getelementptr inbounds %struct.view, %struct.view* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sub nsw i32 %120, %121
  br label %124

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %117
  %125 = phi i32 [ %122, %117 ], [ 0, %123 ]
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @ABS(i32 %127)
  %129 = add nsw i32 %126, %128
  store i32 %129, i32* %7, align 4
  %130 = load %struct.view*, %struct.view** %3, align 8
  %131 = getelementptr inbounds %struct.view, %struct.view* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @scrollok(i32 %132, i32 1)
  %134 = load %struct.view*, %struct.view** %3, align 8
  %135 = getelementptr inbounds %struct.view, %struct.view* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @wscrl(i32 %136, i32 %137)
  %139 = load %struct.view*, %struct.view** %3, align 8
  %140 = getelementptr inbounds %struct.view, %struct.view* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @scrollok(i32 %141, i32 0)
  br label %143

143:                                              ; preds = %154, %124
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.view*, %struct.view** %3, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i64 @draw_view_line(%struct.view* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br label %152

152:                                              ; preds = %147, %143
  %153 = phi i1 [ false, %143 ], [ %151, %147 ]
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %143

157:                                              ; preds = %152
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load %struct.view*, %struct.view** %3, align 8
  %162 = load %struct.view*, %struct.view** %3, align 8
  %163 = getelementptr inbounds %struct.view, %struct.view* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.view*, %struct.view** %3, align 8
  %167 = getelementptr inbounds %struct.view, %struct.view* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %165, %169
  %171 = trunc i64 %170 to i32
  %172 = call i64 @draw_view_line(%struct.view* %161, i32 %171)
  br label %173

173:                                              ; preds = %160, %157
  %174 = load %struct.view*, %struct.view** %3, align 8
  %175 = getelementptr inbounds %struct.view, %struct.view* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @wnoutrefresh(i32 %176)
  br label %178

178:                                              ; preds = %173, %111
  %179 = load %struct.view*, %struct.view** %3, align 8
  %180 = getelementptr inbounds %struct.view, %struct.view* %179, i32 0, i32 2
  store i32 1, i32* %180, align 4
  %181 = call i32 (...) @report_clear()
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ABS(i32) #1

declare dso_local i32 @redraw_view(%struct.view*) #1

declare dso_local i32 @scrollok(i32, i32) #1

declare dso_local i32 @wscrl(i32, i32) #1

declare dso_local i64 @draw_view_line(%struct.view*, i32) #1

declare dso_local i32 @wnoutrefresh(i32) #1

declare dso_local i32 @report_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
