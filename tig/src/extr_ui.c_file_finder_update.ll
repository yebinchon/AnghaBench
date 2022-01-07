; ModuleID = '/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_update.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_finder = type { i32, i64, %struct.TYPE_2__, %struct.file_finder_line**, i32, %struct.file_finder_line** }
%struct.TYPE_2__ = type { i64 }
%struct.file_finder_line = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_finder*)* @file_finder_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_finder_update(%struct.file_finder* %0) #0 {
  %2 = alloca %struct.file_finder*, align 8
  %3 = alloca %struct.file_finder_line*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_finder_line*, align 8
  store %struct.file_finder* %0, %struct.file_finder** %2, align 8
  %7 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %8 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %7, i32 0, i32 3
  %9 = load %struct.file_finder_line**, %struct.file_finder_line*** %8, align 8
  %10 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %11 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.file_finder_line*, %struct.file_finder_line** %9, i64 %13
  %15 = load %struct.file_finder_line*, %struct.file_finder_line** %14, align 8
  store %struct.file_finder_line* %15, %struct.file_finder_line** %3, align 8
  store i64 0, i64* %4, align 8
  %16 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %17 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %16, i32 0, i32 3
  %18 = load %struct.file_finder_line**, %struct.file_finder_line*** %17, align 8
  %19 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %20 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(%struct.file_finder_line** %18, i32 0, i32 %24)
  %26 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %27 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %114, %1
  %29 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %30 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %29, i32 0, i32 5
  %31 = load %struct.file_finder_line**, %struct.file_finder_line*** %30, align 8
  %32 = icmp ne %struct.file_finder_line** %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %35 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %34, i32 0, i32 5
  %36 = load %struct.file_finder_line**, %struct.file_finder_line*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.file_finder_line*, %struct.file_finder_line** %36, i64 %38
  %40 = load %struct.file_finder_line*, %struct.file_finder_line** %39, align 8
  %41 = icmp ne %struct.file_finder_line* %40, null
  br label %42

42:                                               ; preds = %33, %28
  %43 = phi i1 [ false, %28 ], [ %41, %33 ]
  br i1 %43, label %44, label %117

44:                                               ; preds = %42
  %45 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %46 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %45, i32 0, i32 5
  %47 = load %struct.file_finder_line**, %struct.file_finder_line*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.file_finder_line*, %struct.file_finder_line** %47, i64 %49
  %51 = load %struct.file_finder_line*, %struct.file_finder_line** %50, align 8
  store %struct.file_finder_line* %51, %struct.file_finder_line** %6, align 8
  %52 = load %struct.file_finder_line*, %struct.file_finder_line** %6, align 8
  %53 = load %struct.file_finder_line*, %struct.file_finder_line** %3, align 8
  %54 = icmp eq %struct.file_finder_line* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store %struct.file_finder_line* null, %struct.file_finder_line** %3, align 8
  br label %56

56:                                               ; preds = %55, %44
  %57 = load %struct.file_finder_line*, %struct.file_finder_line** %6, align 8
  %58 = getelementptr inbounds %struct.file_finder_line, %struct.file_finder_line* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  %61 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %62 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %114

66:                                               ; preds = %56
  %67 = load %struct.file_finder_line*, %struct.file_finder_line** %6, align 8
  %68 = getelementptr inbounds %struct.file_finder_line, %struct.file_finder_line* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %71 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %76 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.file_finder_line*, %struct.file_finder_line** %6, align 8
  %79 = getelementptr inbounds %struct.file_finder_line, %struct.file_finder_line* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %97

80:                                               ; preds = %66
  %81 = load %struct.file_finder_line*, %struct.file_finder_line** %6, align 8
  %82 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %83 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @file_finder_line_matches(%struct.file_finder_line* %81, i32 %84)
  %86 = load %struct.file_finder_line*, %struct.file_finder_line** %6, align 8
  %87 = getelementptr inbounds %struct.file_finder_line, %struct.file_finder_line* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.file_finder_line*, %struct.file_finder_line** %6, align 8
  %89 = getelementptr inbounds %struct.file_finder_line, %struct.file_finder_line* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %92 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %114

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.file_finder_line*, %struct.file_finder_line** %3, align 8
  %99 = icmp ne %struct.file_finder_line* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %4, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %4, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.file_finder_line*, %struct.file_finder_line** %6, align 8
  %105 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %106 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %105, i32 0, i32 3
  %107 = load %struct.file_finder_line**, %struct.file_finder_line*** %106, align 8
  %108 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %109 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds %struct.file_finder_line*, %struct.file_finder_line** %107, i64 %112
  store %struct.file_finder_line* %104, %struct.file_finder_line** %113, align 8
  br label %114

114:                                              ; preds = %103, %95, %65
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %28

117:                                              ; preds = %42
  %118 = load i64, i64* %4, align 8
  %119 = load %struct.file_finder*, %struct.file_finder** %2, align 8
  %120 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  ret void
}

declare dso_local i32 @memset(%struct.file_finder_line**, i32, i32) #1

declare dso_local i64 @file_finder_line_matches(%struct.file_finder_line*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
