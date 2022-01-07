; ModuleID = '/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_draw.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_finder = type { i32, i64, i32, i32, %struct.file_finder_line**, %struct.position }
%struct.file_finder_line = type { i64 }
%struct.position = type { i64, i64 }

@LINE_DEFAULT = common dso_local global i32 0, align 4
@LINE_CURSOR = common dso_local global i32 0, align 4
@LINE_TITLE_FOCUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"[finder] file %d of %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_finder*)* @file_finder_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_finder_draw(%struct.file_finder* %0) #0 {
  %2 = alloca %struct.file_finder*, align 8
  %3 = alloca %struct.position*, align 8
  %4 = alloca %struct.file_finder_line*, align 8
  %5 = alloca %struct.file_finder_line**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_finder_line*, align 8
  store %struct.file_finder* %0, %struct.file_finder** %2, align 8
  %8 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %9 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %8, i32 0, i32 5
  store %struct.position* %9, %struct.position** %3, align 8
  %10 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %11 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %10, i32 0, i32 4
  %12 = load %struct.file_finder_line**, %struct.file_finder_line*** %11, align 8
  %13 = load %struct.position*, %struct.position** %3, align 8
  %14 = getelementptr inbounds %struct.position, %struct.position* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.file_finder_line*, %struct.file_finder_line** %12, i64 %15
  %17 = load %struct.file_finder_line*, %struct.file_finder_line** %16, align 8
  store %struct.file_finder_line* %17, %struct.file_finder_line** %4, align 8
  %18 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %19 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %18, i32 0, i32 4
  %20 = load %struct.file_finder_line**, %struct.file_finder_line*** %19, align 8
  %21 = load %struct.position*, %struct.position** %3, align 8
  %22 = getelementptr inbounds %struct.position, %struct.position* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.file_finder_line*, %struct.file_finder_line** %20, i64 %23
  store %struct.file_finder_line** %24, %struct.file_finder_line*** %5, align 8
  %25 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %26 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LINE_DEFAULT, align 4
  %29 = call i32 @get_line_attr(i32* null, i32 %28)
  %30 = call i32 @wbkgdset(i32 %27, i32 %29)
  %31 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %32 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @werase(i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %95, %1
  %36 = load %struct.file_finder_line**, %struct.file_finder_line*** %5, align 8
  %37 = load %struct.file_finder_line*, %struct.file_finder_line** %36, align 8
  %38 = icmp ne %struct.file_finder_line* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %42 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %40, %44
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i1 [ false, %35 ], [ %45, %39 ]
  br i1 %47, label %48, label %98

48:                                               ; preds = %46
  %49 = load %struct.file_finder_line**, %struct.file_finder_line*** %5, align 8
  %50 = load %struct.file_finder_line*, %struct.file_finder_line** %49, align 8
  store %struct.file_finder_line* %50, %struct.file_finder_line** %7, align 8
  %51 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %52 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.file_finder_line*, %struct.file_finder_line** %7, align 8
  %55 = getelementptr inbounds %struct.file_finder_line, %struct.file_finder_line* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %95

59:                                               ; preds = %48
  %60 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %61 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = call i32 @wmove(i32 %62, i32 %63, i32 0)
  %66 = load %struct.file_finder_line*, %struct.file_finder_line** %7, align 8
  %67 = load %struct.file_finder_line*, %struct.file_finder_line** %4, align 8
  %68 = icmp eq %struct.file_finder_line* %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %71 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @LINE_CURSOR, align 4
  %74 = call i32 @get_line_attr(i32* null, i32 %73)
  %75 = call i32 @wbkgdset(i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %69, %59
  %77 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %78 = load %struct.file_finder_line*, %struct.file_finder_line** %7, align 8
  %79 = call i32 @file_finder_draw_line(%struct.file_finder* %77, %struct.file_finder_line* %78)
  %80 = load %struct.file_finder_line*, %struct.file_finder_line** %7, align 8
  %81 = load %struct.file_finder_line*, %struct.file_finder_line** %4, align 8
  %82 = icmp eq %struct.file_finder_line* %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %85 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @wclrtoeol(i32 %86)
  %88 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %89 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LINE_DEFAULT, align 4
  %92 = call i32 @get_line_attr(i32* null, i32 %91)
  %93 = call i32 @wbkgdset(i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %83, %76
  br label %95

95:                                               ; preds = %94, %58
  %96 = load %struct.file_finder_line**, %struct.file_finder_line*** %5, align 8
  %97 = getelementptr inbounds %struct.file_finder_line*, %struct.file_finder_line** %96, i32 1
  store %struct.file_finder_line** %97, %struct.file_finder_line*** %5, align 8
  br label %35

98:                                               ; preds = %46
  %99 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %100 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %103 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @wmove(i32 %101, i32 %105, i32 0)
  %107 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %108 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @LINE_TITLE_FOCUS, align 4
  %111 = call i32 @get_line_attr(i32* null, i32 %110)
  %112 = call i32 @wbkgdset(i32 %109, i32 %111)
  %113 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %114 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.position*, %struct.position** %3, align 8
  %117 = getelementptr inbounds %struct.position, %struct.position* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  %120 = trunc i64 %119 to i32
  %121 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %122 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @wprintw(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %126 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @wclrtoeol(i32 %127)
  %129 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %130 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @wrefresh(i32 %131)
  ret void
}

declare dso_local i32 @wbkgdset(i32, i32) #1

declare dso_local i32 @get_line_attr(i32*, i32) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @file_finder_draw_line(%struct.file_finder*, %struct.file_finder_line*) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @wprintw(i32, i8*, i32, i32) #1

declare dso_local i32 @wrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
