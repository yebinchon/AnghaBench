; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_build.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i64, i32, i32, i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 (i32, i32*, i64*, i32*)*, i64, i32*, %struct.screen }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.screen = type { i32 }

@UINT64_MAX = common dso_local global i64 0, align 8
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_tree_build(%struct.mode_tree_data* %0) #0 {
  %2 = alloca %struct.mode_tree_data*, align 8
  %3 = alloca %struct.screen*, align 8
  %4 = alloca i64, align 8
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %2, align 8
  %5 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %6 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %5, i32 0, i32 13
  store %struct.screen* %6, %struct.screen** %3, align 8
  %7 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %8 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %13 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %16 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  br label %25

23:                                               ; preds = %1
  %24 = load i64, i64* @UINT64_MAX, align 8
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %23, %11
  %26 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %27 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %26, i32 0, i32 7
  %28 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %29 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %28, i32 0, i32 6
  %30 = load i32, i32* @entry, align 4
  %31 = call i32 @TAILQ_CONCAT(i32* %27, i32* %29, i32 %30)
  %32 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %33 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %32, i32 0, i32 6
  %34 = call i32 @TAILQ_INIT(i32* %33)
  %35 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %36 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %35, i32 0, i32 10
  %37 = load i32 (i32, i32*, i64*, i32*)*, i32 (i32, i32*, i64*, i32*)** %36, align 8
  %38 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %39 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %42 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %41, i32 0, i32 8
  %43 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %44 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %43, i32 0, i32 12
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 %37(i32 %40, i32* %42, i64* %4, i32* %45)
  %47 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %48 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %47, i32 0, i32 6
  %49 = call i64 @TAILQ_EMPTY(i32* %48)
  %50 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %51 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %50, i32 0, i32 11
  store i64 %49, i64* %51, align 8
  %52 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %53 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %52, i32 0, i32 11
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %25
  %57 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %58 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %57, i32 0, i32 10
  %59 = load i32 (i32, i32*, i64*, i32*)*, i32 (i32, i32*, i64*, i32*)** %58, align 8
  %60 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %61 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %64 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %63, i32 0, i32 8
  %65 = call i32 %59(i32 %62, i32* %64, i64* %4, i32* null)
  br label %66

66:                                               ; preds = %56, %25
  %67 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %68 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %67, i32 0, i32 7
  %69 = call i32 @mode_tree_free_items(i32* %68)
  %70 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %71 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %70, i32 0, i32 7
  %72 = call i32 @TAILQ_INIT(i32* %71)
  %73 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %74 = call i32 @mode_tree_clear_lines(%struct.mode_tree_data* %73)
  %75 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %76 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %77 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %76, i32 0, i32 6
  %78 = call i32 @mode_tree_build_lines(%struct.mode_tree_data* %75, i32* %77, i32 0)
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @UINT64_MAX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %66
  %83 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %84 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %83, i32 0, i32 5
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %87 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %82, %66
  %95 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @mode_tree_set_current(%struct.mode_tree_data* %95, i64 %96)
  %98 = load %struct.screen*, %struct.screen** %3, align 8
  %99 = call i32 @screen_size_x(%struct.screen* %98)
  %100 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %101 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %103 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %94
  %107 = load %struct.screen*, %struct.screen** %3, align 8
  %108 = call i32 @screen_size_y(%struct.screen* %107)
  %109 = sdiv i32 %108, 3
  %110 = mul nsw i32 %109, 2
  %111 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %112 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %114 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %117 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %106
  %121 = load %struct.screen*, %struct.screen** %3, align 8
  %122 = call i32 @screen_size_y(%struct.screen* %121)
  %123 = sdiv i32 %122, 2
  %124 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %125 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %120, %106
  %127 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %128 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %129, 10
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.screen*, %struct.screen** %3, align 8
  %133 = call i32 @screen_size_y(%struct.screen* %132)
  %134 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %135 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.screen*, %struct.screen** %3, align 8
  %138 = call i32 @screen_size_y(%struct.screen* %137)
  %139 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %140 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %138, %141
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load %struct.screen*, %struct.screen** %3, align 8
  %146 = call i32 @screen_size_y(%struct.screen* %145)
  %147 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %148 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %144, %136
  br label %155

150:                                              ; preds = %94
  %151 = load %struct.screen*, %struct.screen** %3, align 8
  %152 = call i32 @screen_size_y(%struct.screen* %151)
  %153 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %154 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %149
  %156 = load %struct.mode_tree_data*, %struct.mode_tree_data** %2, align 8
  %157 = call i32 @mode_tree_check_selected(%struct.mode_tree_data* %156)
  ret void
}

declare dso_local i32 @TAILQ_CONCAT(i32*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mode_tree_free_items(i32*) #1

declare dso_local i32 @mode_tree_clear_lines(%struct.mode_tree_data*) #1

declare dso_local i32 @mode_tree_build_lines(%struct.mode_tree_data*, i32*, i32) #1

declare dso_local i32 @mode_tree_set_current(%struct.mode_tree_data*, i64) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @mode_tree_check_selected(%struct.mode_tree_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
