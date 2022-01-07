; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_load_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_load_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, i32, %struct.view*, i32, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.view*, i32)*, i64, i32 (%struct.view*)* }

@WATCH_EVENT_SWITCH_VIEW = common dso_local global i32 0, align 4
@OPEN_REFRESH = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OPEN_SPLIT = common dso_local global i32 0, align 4
@OPEN_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_view(%struct.view* %0, %struct.view* %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.view* %1, %struct.view** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.view*, %struct.view** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @view_no_refresh(%struct.view* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.view*, %struct.view** %5, align 8
  %17 = icmp ne %struct.view* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.view*, %struct.view** %4, align 8
  %20 = load %struct.view*, %struct.view** %5, align 8
  %21 = icmp ne %struct.view* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.view*, %struct.view** %5, align 8
  %24 = load %struct.view*, %struct.view** %4, align 8
  %25 = getelementptr inbounds %struct.view, %struct.view* %24, i32 0, i32 2
  store %struct.view* %23, %struct.view** %25, align 8
  br label %26

26:                                               ; preds = %22, %18, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load %struct.view*, %struct.view** %4, align 8
  %31 = call i64 @view_can_refresh(%struct.view* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.view*, %struct.view** %4, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 7
  %36 = load i32, i32* @WATCH_EVENT_SWITCH_VIEW, align 4
  %37 = call i64 @watch_update_single(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.view*, %struct.view** %4, align 8
  %41 = getelementptr inbounds %struct.view, %struct.view* %40, i32 0, i32 7
  %42 = call i32 @watch_dirty(i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @OPEN_REFRESH, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %33, %29, %26
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %125

53:                                               ; preds = %50
  %54 = load %struct.view*, %struct.view** %4, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.view*, %struct.view** %4, align 8
  %60 = call i32 @end_update(%struct.view* %59, i32 1)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.view*, %struct.view** %4, align 8
  %63 = getelementptr inbounds %struct.view, %struct.view* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %61
  %69 = load %struct.view*, %struct.view** %4, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %68
  %74 = load %struct.view*, %struct.view** %4, align 8
  %75 = getelementptr inbounds %struct.view, %struct.view* %74, i32 0, i32 5
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @calloc(i32 1, i64 %78)
  %80 = load %struct.view*, %struct.view** %4, align 8
  %81 = getelementptr inbounds %struct.view, %struct.view* %80, i32 0, i32 6
  store i64 %79, i64* %81, align 8
  br label %107

82:                                               ; preds = %68
  %83 = load %struct.view*, %struct.view** %4, align 8
  %84 = getelementptr inbounds %struct.view, %struct.view* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32 (%struct.view*)*, i32 (%struct.view*)** %86, align 8
  %88 = icmp ne i32 (%struct.view*)* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.view*, %struct.view** %4, align 8
  %91 = getelementptr inbounds %struct.view, %struct.view* %90, i32 0, i32 5
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32 (%struct.view*)*, i32 (%struct.view*)** %93, align 8
  %95 = load %struct.view*, %struct.view** %4, align 8
  %96 = call i32 %94(%struct.view* %95)
  br label %97

97:                                               ; preds = %89, %82
  %98 = load %struct.view*, %struct.view** %4, align 8
  %99 = getelementptr inbounds %struct.view, %struct.view* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.view*, %struct.view** %4, align 8
  %102 = getelementptr inbounds %struct.view, %struct.view* %101, i32 0, i32 5
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @memset(i64 %100, i32 0, i64 %105)
  br label %107

107:                                              ; preds = %97, %73
  br label %108

108:                                              ; preds = %107, %61
  %109 = load %struct.view*, %struct.view** %4, align 8
  %110 = getelementptr inbounds %struct.view, %struct.view* %109, i32 0, i32 5
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32 (%struct.view*, i32)*, i32 (%struct.view*, i32)** %112, align 8
  %114 = load %struct.view*, %struct.view** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 %113(%struct.view* %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @SUCCESS, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %108
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @get_status_message(i32 %121)
  %123 = call i32 @report(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %122)
  br label %189

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124, %50
  %126 = load %struct.view*, %struct.view** %5, align 8
  %127 = icmp ne %struct.view* %126, null
  br i1 %127, label %128, label %146

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @OPEN_SPLIT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load %struct.view*, %struct.view** %5, align 8
  %140 = load %struct.view*, %struct.view** %4, align 8
  %141 = call i32 @split_view(%struct.view* %139, %struct.view* %140)
  br label %145

142:                                              ; preds = %128
  %143 = load %struct.view*, %struct.view** %4, align 8
  %144 = call i32 @maximize_view(%struct.view* %143, i32 0)
  br label %145

145:                                              ; preds = %142, %138
  br label %146

146:                                              ; preds = %145, %125
  %147 = load %struct.view*, %struct.view** %4, align 8
  %148 = call i32 @restore_view_position(%struct.view* %147)
  %149 = load %struct.view*, %struct.view** %4, align 8
  %150 = getelementptr inbounds %struct.view, %struct.view* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %180

153:                                              ; preds = %146
  %154 = load %struct.view*, %struct.view** %4, align 8
  %155 = getelementptr inbounds %struct.view, %struct.view* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %153
  %159 = load %struct.view*, %struct.view** %4, align 8
  %160 = getelementptr inbounds %struct.view, %struct.view* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @werase(i32 %161)
  %163 = load %struct.view*, %struct.view** %4, align 8
  %164 = getelementptr inbounds %struct.view, %struct.view* %163, i32 0, i32 2
  %165 = load %struct.view*, %struct.view** %164, align 8
  %166 = icmp ne %struct.view* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @OPEN_RELOAD, align 4
  %170 = load i32, i32* @OPEN_REFRESH, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %167
  %175 = load %struct.view*, %struct.view** %4, align 8
  %176 = getelementptr inbounds %struct.view, %struct.view* %175, i32 0, i32 1
  %177 = call i32 @clear_position(i32* %176)
  br label %178

178:                                              ; preds = %174, %167, %158
  %179 = call i32 (...) @report_clear()
  br label %189

180:                                              ; preds = %153, %146
  %181 = load %struct.view*, %struct.view** %4, align 8
  %182 = call i64 @view_is_displayed(%struct.view* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load %struct.view*, %struct.view** %4, align 8
  %186 = call i32 @redraw_view(%struct.view* %185)
  %187 = call i32 (...) @report_clear()
  br label %188

188:                                              ; preds = %184, %180
  br label %189

189:                                              ; preds = %120, %188, %178
  ret void
}

declare dso_local i32 @view_no_refresh(%struct.view*, i32) #1

declare dso_local i64 @view_can_refresh(%struct.view*) #1

declare dso_local i64 @watch_update_single(i32*, i32) #1

declare dso_local i32 @watch_dirty(i32*) #1

declare dso_local i32 @end_update(%struct.view*, i32) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @report(i8*, i32) #1

declare dso_local i32 @get_status_message(i32) #1

declare dso_local i32 @split_view(%struct.view*, %struct.view*) #1

declare dso_local i32 @maximize_view(%struct.view*, i32) #1

declare dso_local i32 @restore_view_position(%struct.view*) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @clear_position(i32*) #1

declare dso_local i32 @report_clear(...) #1

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @redraw_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
