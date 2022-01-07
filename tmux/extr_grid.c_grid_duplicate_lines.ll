; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_duplicate_lines.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_duplicate_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, %struct.grid_line* }
%struct.grid_line = type { i32, i64, %struct.grid_line*, %struct.grid_line* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_duplicate_lines(%struct.grid* %0, i64 %1, %struct.grid* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.grid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.grid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.grid_line*, align 8
  %12 = alloca %struct.grid_line*, align 8
  %13 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.grid* %2, %struct.grid** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.grid*, %struct.grid** %6, align 8
  %18 = getelementptr inbounds %struct.grid, %struct.grid* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.grid*, %struct.grid** %6, align 8
  %21 = getelementptr inbounds %struct.grid, %struct.grid* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = icmp sgt i64 %16, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load %struct.grid*, %struct.grid** %6, align 8
  %27 = getelementptr inbounds %struct.grid, %struct.grid* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.grid*, %struct.grid** %6, align 8
  %30 = getelementptr inbounds %struct.grid, %struct.grid* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %25, %5
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.grid*, %struct.grid** %8, align 8
  %40 = getelementptr inbounds %struct.grid, %struct.grid* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.grid*, %struct.grid** %8, align 8
  %43 = getelementptr inbounds %struct.grid, %struct.grid* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = icmp sgt i64 %38, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %35
  %48 = load %struct.grid*, %struct.grid** %8, align 8
  %49 = getelementptr inbounds %struct.grid, %struct.grid* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.grid*, %struct.grid** %8, align 8
  %52 = getelementptr inbounds %struct.grid, %struct.grid* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i64, i64* %9, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %47, %35
  %58 = load %struct.grid*, %struct.grid** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @grid_free_lines(%struct.grid* %58, i64 %59, i64 %60)
  store i64 0, i64* %13, align 8
  br label %62

62:                                               ; preds = %144, %57
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %147

66:                                               ; preds = %62
  %67 = load %struct.grid*, %struct.grid** %8, align 8
  %68 = getelementptr inbounds %struct.grid, %struct.grid* %67, i32 0, i32 2
  %69 = load %struct.grid_line*, %struct.grid_line** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %69, i64 %70
  store %struct.grid_line* %71, %struct.grid_line** %12, align 8
  %72 = load %struct.grid*, %struct.grid** %6, align 8
  %73 = getelementptr inbounds %struct.grid, %struct.grid* %72, i32 0, i32 2
  %74 = load %struct.grid_line*, %struct.grid_line** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %74, i64 %75
  store %struct.grid_line* %76, %struct.grid_line** %11, align 8
  %77 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %78 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %79 = call i32 @memcpy(%struct.grid_line* %77, %struct.grid_line* %78, i32 32)
  %80 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %81 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %66
  %85 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %86 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @xreallocarray(i32* null, i32 %87, i32 32)
  %89 = bitcast i8* %88 to %struct.grid_line*
  %90 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %91 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %90, i32 0, i32 3
  store %struct.grid_line* %89, %struct.grid_line** %91, align 8
  %92 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %93 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %92, i32 0, i32 3
  %94 = load %struct.grid_line*, %struct.grid_line** %93, align 8
  %95 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %96 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %95, i32 0, i32 3
  %97 = load %struct.grid_line*, %struct.grid_line** %96, align 8
  %98 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %99 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 32
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(%struct.grid_line* %94, %struct.grid_line* %97, i32 %103)
  br label %108

105:                                              ; preds = %66
  %106 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %107 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %106, i32 0, i32 3
  store %struct.grid_line* null, %struct.grid_line** %107, align 8
  br label %108

108:                                              ; preds = %105, %84
  %109 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %110 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %108
  %114 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %115 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %118 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %120 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i8* @xreallocarray(i32* null, i32 %122, i32 32)
  %124 = bitcast i8* %123 to %struct.grid_line*
  %125 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %126 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %125, i32 0, i32 2
  store %struct.grid_line* %124, %struct.grid_line** %126, align 8
  %127 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %128 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %127, i32 0, i32 2
  %129 = load %struct.grid_line*, %struct.grid_line** %128, align 8
  %130 = load %struct.grid_line*, %struct.grid_line** %12, align 8
  %131 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %130, i32 0, i32 2
  %132 = load %struct.grid_line*, %struct.grid_line** %131, align 8
  %133 = load %struct.grid_line*, %struct.grid_line** %11, align 8
  %134 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = mul i64 %135, 32
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(%struct.grid_line* %129, %struct.grid_line* %132, i32 %137)
  br label %139

139:                                              ; preds = %113, %108
  %140 = load i64, i64* %9, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %9, align 8
  %142 = load i64, i64* %7, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %7, align 8
  br label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %13, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %13, align 8
  br label %62

147:                                              ; preds = %62
  ret void
}

declare dso_local i32 @grid_free_lines(%struct.grid*, i64, i64) #1

declare dso_local i32 @memcpy(%struct.grid_line*, %struct.grid_line*, i32) #1

declare dso_local i8* @xreallocarray(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
