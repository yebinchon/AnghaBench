; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_png_io.c_png_append_data.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_png_io.c_png_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_data = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_append_data(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_data*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.io_data* @png_get_io_ptr(i32* %8)
  store %struct.io_data* %9, %struct.io_data** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.io_data*, %struct.io_data** %7, align 8
  %12 = getelementptr inbounds %struct.io_data, %struct.io_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.io_data*, %struct.io_data** %7, align 8
  %16 = getelementptr inbounds %struct.io_data, %struct.io_data* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load %struct.io_data*, %struct.io_data** %7, align 8
  %21 = getelementptr inbounds %struct.io_data, %struct.io_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.io_data*, %struct.io_data** %7, align 8
  %24 = getelementptr inbounds %struct.io_data, %struct.io_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.io_data*, %struct.io_data** %7, align 8
  %27 = getelementptr inbounds %struct.io_data, %struct.io_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @png_malloc(i32* %25, i32 %28)
  %30 = load %struct.io_data*, %struct.io_data** %7, align 8
  %31 = getelementptr inbounds %struct.io_data, %struct.io_data* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.io_data*, %struct.io_data** %7, align 8
  %33 = getelementptr inbounds %struct.io_data, %struct.io_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %71

38:                                               ; preds = %3
  %39 = load %struct.io_data*, %struct.io_data** %7, align 8
  %40 = getelementptr inbounds %struct.io_data, %struct.io_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.io_data*, %struct.io_data** %7, align 8
  %43 = getelementptr inbounds %struct.io_data, %struct.io_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %52, %46
  %48 = load %struct.io_data*, %struct.io_data** %7, align 8
  %49 = getelementptr inbounds %struct.io_data, %struct.io_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47
  %53 = load %struct.io_data*, %struct.io_data** %7, align 8
  %54 = getelementptr inbounds %struct.io_data, %struct.io_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.io_data*, %struct.io_data** %7, align 8
  %57 = getelementptr inbounds %struct.io_data, %struct.io_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %47, label %60

60:                                               ; preds = %52
  %61 = load %struct.io_data*, %struct.io_data** %7, align 8
  %62 = getelementptr inbounds %struct.io_data, %struct.io_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.io_data*, %struct.io_data** %7, align 8
  %65 = getelementptr inbounds %struct.io_data, %struct.io_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @realloc(i32* %63, i32 %66)
  %68 = load %struct.io_data*, %struct.io_data** %7, align 8
  %69 = getelementptr inbounds %struct.io_data, %struct.io_data* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %60, %38
  br label %71

71:                                               ; preds = %70, %19
  %72 = load %struct.io_data*, %struct.io_data** %7, align 8
  %73 = getelementptr inbounds %struct.io_data, %struct.io_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.io_data*, %struct.io_data** %7, align 8
  %76 = getelementptr inbounds %struct.io_data, %struct.io_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @memcpy(i32* %83, i32* %84, i32 %85)
  ret void
}

declare dso_local %struct.io_data* @png_get_io_ptr(i32*) #1

declare dso_local i32* @png_malloc(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
