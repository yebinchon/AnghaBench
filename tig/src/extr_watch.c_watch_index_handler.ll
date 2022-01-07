; ModuleID = '/home/carl/AnghaBench/tig/src/extr_watch.c_watch_index_handler.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_watch.c_watch_index_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.watch_handler = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.index_diff = type { i64, i64, i64 }

@WATCH_NONE = common dso_local global i32 0, align 4
@WATCH_EVENT_AFTER_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s/index\00", align 1
@repo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@WATCH_EVENT_SWITCH_VIEW = common dso_local global i32 0, align 4
@opt_show_untracked = common dso_local global i32 0, align 4
@opt_status_show_untracked_files = common dso_local global i32 0, align 4
@WATCH_INDEX_STAGED = common dso_local global i32 0, align 4
@WATCH_INDEX_UNSTAGED = common dso_local global i32 0, align 4
@WATCH_INDEX_UNTRACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watch_handler*, i32, i32)* @watch_index_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watch_index_handler(%struct.watch_handler* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.watch_handler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.index_diff, align 8
  store %struct.watch_handler* %0, %struct.watch_handler** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @WATCH_NONE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @WATCH_EVENT_AFTER_COMMAND, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %16 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %15, i32 0, i32 0
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 4
  %18 = call i64 @check_file_mtime(i64* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @WATCH_NONE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %4, align 4
  br label %138

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @WATCH_EVENT_SWITCH_VIEW, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @WATCH_NONE, align 4
  store i32 %31, i32* %4, align 4
  br label %138

32:                                               ; preds = %26
  %33 = load i32, i32* @opt_show_untracked, align 4
  %34 = load i32, i32* @opt_status_show_untracked_files, align 4
  %35 = call i32 @index_diff(%struct.index_diff* %9, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %39 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %38, i32 0, i32 0
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 4
  %41 = call i64 @check_file_mtime(i64* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @WATCH_NONE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %4, align 4
  br label %138

49:                                               ; preds = %32
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @WATCH_INDEX_STAGED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %58 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %64 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @WATCH_INDEX_STAGED, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %9, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %75 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %54, %49
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @WATCH_INDEX_UNSTAGED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %9, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %86 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %82
  %91 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %92 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @WATCH_INDEX_UNSTAGED, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %9, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %103 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i64 %101, i64* %104, align 8
  br label %105

105:                                              ; preds = %99, %82, %77
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @WATCH_INDEX_UNTRACKED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %9, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %114 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %112, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %110
  %119 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %120 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @WATCH_INDEX_UNTRACKED, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %123, %118
  %128 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %9, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %131 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %110, %105
  %134 = call i64 @time(i32* null)
  %135 = load %struct.watch_handler*, %struct.watch_handler** %5, align 8
  %136 = getelementptr inbounds %struct.watch_handler, %struct.watch_handler* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %133, %47, %30, %24
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @check_file_mtime(i64*, i8*, i32) #1

declare dso_local i32 @index_diff(%struct.index_diff*, i32, i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
