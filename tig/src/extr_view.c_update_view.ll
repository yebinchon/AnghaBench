; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_update_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_update_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoding = type { i32 }
%struct.view = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.encoding* }
%struct.TYPE_2__ = type { i32 (%struct.view*, %struct.buffer*, i32)* }
%struct.buffer = type { i32 }

@default_encoding = common dso_local global %struct.encoding* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Encoding failure\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Allocation failure\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed to read: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_view(%struct.view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.encoding*, align 8
  %7 = alloca %struct.buffer, align 4
  %8 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  %9 = load %struct.view*, %struct.view** %3, align 8
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %14 = load %struct.view*, %struct.view** %3, align 8
  %15 = getelementptr inbounds %struct.view, %struct.view* %14, i32 0, i32 6
  %16 = load %struct.encoding*, %struct.encoding** %15, align 8
  %17 = icmp ne %struct.encoding* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.view*, %struct.view** %3, align 8
  %20 = getelementptr inbounds %struct.view, %struct.view* %19, i32 0, i32 6
  %21 = load %struct.encoding*, %struct.encoding** %20, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load %struct.encoding*, %struct.encoding** @default_encoding, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi %struct.encoding* [ %21, %18 ], [ %23, %22 ]
  store %struct.encoding* %25, %struct.encoding** %6, align 8
  %26 = load %struct.view*, %struct.view** %3, align 8
  %27 = getelementptr inbounds %struct.view, %struct.view* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %163

31:                                               ; preds = %24
  %32 = load %struct.view*, %struct.view** %3, align 8
  %33 = getelementptr inbounds %struct.view, %struct.view* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @io_can_read(i32 %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %76, label %37

37:                                               ; preds = %31
  %38 = load %struct.view*, %struct.view** %3, align 8
  %39 = getelementptr inbounds %struct.view, %struct.view* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = load %struct.view*, %struct.view** %3, align 8
  %44 = call i64 @view_is_displayed(%struct.view* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = call i32 @time(i32* null)
  %48 = load %struct.view*, %struct.view** %3, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %74

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.view*, %struct.view** %3, align 8
  %57 = getelementptr inbounds %struct.view, %struct.view* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.view*, %struct.view** %3, align 8
  %62 = getelementptr inbounds %struct.view, %struct.view* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.view*, %struct.view** %3, align 8
  %67 = call i32 @redraw_view(%struct.view* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.view*, %struct.view** %3, align 8
  %70 = call i32 @update_view_title(%struct.view* %69)
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.view*, %struct.view** %3, align 8
  %73 = getelementptr inbounds %struct.view, %struct.view* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %54, %46
  br label %75

75:                                               ; preds = %74, %42, %37
  store i32 1, i32* %2, align 4
  br label %163

76:                                               ; preds = %31
  br label %77

77:                                               ; preds = %109, %76
  %78 = load %struct.view*, %struct.view** %3, align 8
  %79 = getelementptr inbounds %struct.view, %struct.view* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @io_get(i32 %80, %struct.buffer* %7, i8 signext 10, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %77
  %85 = load %struct.encoding*, %struct.encoding** %6, align 8
  %86 = icmp ne %struct.encoding* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.encoding*, %struct.encoding** %6, align 8
  %89 = call i32 @encoding_convert(%struct.encoding* %88, %struct.buffer* %7)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.view*, %struct.view** %3, align 8
  %94 = call i32 @end_update(%struct.view* %93, i32 1)
  store i32 0, i32* %2, align 4
  br label %163

95:                                               ; preds = %87, %84
  %96 = load %struct.view*, %struct.view** %3, align 8
  %97 = getelementptr inbounds %struct.view, %struct.view* %96, i32 0, i32 5
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32 (%struct.view*, %struct.buffer*, i32)*, i32 (%struct.view*, %struct.buffer*, i32)** %99, align 8
  %101 = load %struct.view*, %struct.view** %3, align 8
  %102 = call i32 %100(%struct.view* %101, %struct.buffer* %7, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %95
  %105 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.view*, %struct.view** %3, align 8
  %107 = call i32 @end_update(%struct.view* %106, i32 1)
  store i32 0, i32* %2, align 4
  br label %163

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %77

110:                                              ; preds = %77
  %111 = load %struct.view*, %struct.view** %3, align 8
  %112 = getelementptr inbounds %struct.view, %struct.view* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @io_error(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.view*, %struct.view** %3, align 8
  %118 = getelementptr inbounds %struct.view, %struct.view* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @io_strerror(i32 %119)
  %121 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.view*, %struct.view** %3, align 8
  %123 = call i32 @end_update(%struct.view* %122, i32 1)
  br label %134

124:                                              ; preds = %110
  %125 = load %struct.view*, %struct.view** %3, align 8
  %126 = getelementptr inbounds %struct.view, %struct.view* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @io_eof(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.view*, %struct.view** %3, align 8
  %132 = call i32 @end_update(%struct.view* %131, i32 0)
  br label %133

133:                                              ; preds = %130, %124
  br label %134

134:                                              ; preds = %133, %116
  %135 = load %struct.view*, %struct.view** %3, align 8
  %136 = call i64 @restore_view_position(%struct.view* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 1, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %134
  %140 = load %struct.view*, %struct.view** %3, align 8
  %141 = call i64 @view_is_displayed(%struct.view* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  store i32 1, i32* %2, align 4
  br label %163

144:                                              ; preds = %139
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = load %struct.view*, %struct.view** %3, align 8
  %149 = getelementptr inbounds %struct.view, %struct.view* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147, %144
  %153 = load %struct.view*, %struct.view** %3, align 8
  %154 = call i32 @redraw_view_from(%struct.view* %153, i32 0)
  br label %158

155:                                              ; preds = %147
  %156 = load %struct.view*, %struct.view** %3, align 8
  %157 = call i32 @redraw_view_dirty(%struct.view* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.view*, %struct.view** %3, align 8
  %160 = getelementptr inbounds %struct.view, %struct.view* %159, i32 0, i32 3
  store i32 0, i32* %160, align 8
  %161 = load %struct.view*, %struct.view** %3, align 8
  %162 = call i32 @update_view_title(%struct.view* %161)
  store i32 1, i32* %2, align 4
  br label %163

163:                                              ; preds = %158, %143, %104, %91, %75, %30
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @io_can_read(i32, i32) #1

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @redraw_view(%struct.view*) #1

declare dso_local i32 @update_view_title(%struct.view*) #1

declare dso_local i64 @io_get(i32, %struct.buffer*, i8 signext, i32) #1

declare dso_local i32 @encoding_convert(%struct.encoding*, %struct.buffer*) #1

declare dso_local i32 @report(i8*, ...) #1

declare dso_local i32 @end_update(%struct.view*, i32) #1

declare dso_local i64 @io_error(i32) #1

declare dso_local i32 @io_strerror(i32) #1

declare dso_local i64 @io_eof(i32) #1

declare dso_local i64 @restore_view_position(%struct.view*) #1

declare dso_local i32 @redraw_view_from(%struct.view*, i32) #1

declare dso_local i32 @redraw_view_dirty(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
