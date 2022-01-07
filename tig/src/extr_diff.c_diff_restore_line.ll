; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_restore_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_restore_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.line* }
%struct.line = type { i64 }
%struct.diff_state = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i64 }

@LINE_DIFF_HEADER = common dso_local global i32 0, align 4
@LINE_DIFF_CHUNK = common dso_local global i64 0, align 8
@LINE_DIFF_DEL = common dso_local global i64 0, align 8
@LINE_DIFF_DEL2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_restore_line(%struct.view* %0, %struct.diff_state* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.diff_state*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.diff_state* %1, %struct.diff_state** %4, align 8
  %10 = load %struct.view*, %struct.view** %3, align 8
  %11 = getelementptr inbounds %struct.view, %struct.view* %10, i32 0, i32 1
  %12 = load %struct.line*, %struct.line** %11, align 8
  %13 = load %struct.view*, %struct.view** %3, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.line, %struct.line* %12, i64 %17
  store %struct.line* %18, %struct.line** %5, align 8
  %19 = load %struct.diff_state*, %struct.diff_state** %4, align 8
  %20 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %132

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %45, %24
  %26 = load %struct.view*, %struct.view** %3, align 8
  %27 = load %struct.line*, %struct.line** %5, align 8
  %28 = load i32, i32* @LINE_DIFF_HEADER, align 4
  %29 = call %struct.line* @find_prev_line_by_type(%struct.view* %26, %struct.line* %27, i32 %28)
  store %struct.line* %29, %struct.line** %5, align 8
  %30 = icmp ne %struct.line* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.view*, %struct.view** %3, align 8
  %33 = load %struct.line*, %struct.line** %5, align 8
  %34 = call i8* @diff_get_pathname(%struct.view* %32, %struct.line* %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.diff_state*, %struct.diff_state** %4, align 8
  %40 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @strcmp(i8* %38, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %48

45:                                               ; preds = %37, %31
  %46 = load %struct.line*, %struct.line** %5, align 8
  %47 = getelementptr inbounds %struct.line, %struct.line* %46, i32 -1
  store %struct.line* %47, %struct.line** %5, align 8
  br label %25

48:                                               ; preds = %44, %25
  %49 = load %struct.diff_state*, %struct.diff_state** %4, align 8
  %50 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.line*, %struct.line** %5, align 8
  %52 = icmp ne %struct.line* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %132

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %131, %54
  %56 = load %struct.view*, %struct.view** %3, align 8
  %57 = load %struct.line*, %struct.line** %5, align 8
  %58 = load i64, i64* @LINE_DIFF_CHUNK, align 8
  %59 = call %struct.line* @find_next_line_by_type(%struct.view* %56, %struct.line* %57, i64 %58)
  store %struct.line* %59, %struct.line** %5, align 8
  %60 = icmp ne %struct.line* %59, null
  br i1 %60, label %61, label %132

61:                                               ; preds = %55
  %62 = load %struct.view*, %struct.view** %3, align 8
  %63 = load %struct.line*, %struct.line** %5, align 8
  %64 = call i32 @diff_get_lineno(%struct.view* %62, %struct.line* %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.line*, %struct.line** %5, align 8
  %66 = getelementptr inbounds %struct.line, %struct.line* %65, i32 1
  store %struct.line* %66, %struct.line** %5, align 8
  br label %67

67:                                               ; preds = %128, %61
  %68 = load %struct.view*, %struct.view** %3, align 8
  %69 = load %struct.line*, %struct.line** %5, align 8
  %70 = call i64 @view_has_line(%struct.view* %68, %struct.line* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.line*, %struct.line** %5, align 8
  %74 = getelementptr inbounds %struct.line, %struct.line* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LINE_DIFF_CHUNK, align 8
  %77 = icmp ne i64 %75, %76
  br label %78

78:                                               ; preds = %72, %67
  %79 = phi i1 [ false, %67 ], [ %77, %72 ]
  br i1 %79, label %80, label %131

80:                                               ; preds = %78
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.diff_state*, %struct.diff_state** %4, align 8
  %83 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load %struct.line*, %struct.line** %5, align 8
  %88 = load %struct.view*, %struct.view** %3, align 8
  %89 = getelementptr inbounds %struct.view, %struct.view* %88, i32 0, i32 1
  %90 = load %struct.line*, %struct.line** %89, align 8
  %91 = ptrtoint %struct.line* %87 to i64
  %92 = ptrtoint %struct.line* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 8
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.diff_state*, %struct.diff_state** %4, align 8
  %97 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.diff_state*, %struct.diff_state** %4, align 8
  %101 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %99, %103
  %105 = sub i64 %95, %104
  store i64 %105, i64* %9, align 8
  %106 = load %struct.view*, %struct.view** %3, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @goto_view_line(%struct.view* %106, i64 %107, i64 %108)
  %110 = load %struct.view*, %struct.view** %3, align 8
  %111 = call i32 @redraw_view(%struct.view* %110)
  br label %132

112:                                              ; preds = %80
  %113 = load %struct.line*, %struct.line** %5, align 8
  %114 = getelementptr inbounds %struct.line, %struct.line* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @LINE_DIFF_DEL, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load %struct.line*, %struct.line** %5, align 8
  %120 = getelementptr inbounds %struct.line, %struct.line* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @LINE_DIFF_DEL2, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %118, %112
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.line*, %struct.line** %5, align 8
  %130 = getelementptr inbounds %struct.line, %struct.line* %129, i32 1
  store %struct.line* %130, %struct.line** %5, align 8
  br label %67

131:                                              ; preds = %78
  br label %55

132:                                              ; preds = %23, %53, %86, %55
  ret void
}

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i32) #1

declare dso_local i8* @diff_get_pathname(%struct.view*, %struct.line*) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

declare dso_local %struct.line* @find_next_line_by_type(%struct.view*, %struct.line*, i64) #1

declare dso_local i32 @diff_get_lineno(%struct.view*, %struct.line*) #1

declare dso_local i64 @view_has_line(%struct.view*, %struct.line*) #1

declare dso_local i32 @goto_view_line(%struct.view*, i64, i64) #1

declare dso_local i32 @redraw_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
