; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_add.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_index = type { i64, i64, i64, i64, i64, i64* }

@.str = private unnamed_addr constant [47 x i8] c"wanting to add to fill %lu, step %lu, size %lu\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"adding to index at %p\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"added pos %li to index with fill %lu and step %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fi_add(%struct.frame_index* %0, i64 %1) #0 {
  %3 = alloca %struct.frame_index*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.frame_index* %0, %struct.frame_index** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %7 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %10 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %13 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @debug3(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %11, i64 %14)
  %16 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %17 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %20 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %2
  %24 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %25 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %28 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = mul nsw i64 %26, %29
  store i64 %30, i64* %5, align 8
  %31 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %32 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %37 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %38 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %41 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i64 @fi_resize(%struct.frame_index* %36, i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35, %23
  %47 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %48 = call i32 @fi_shrink(%struct.frame_index* %47)
  br label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %51 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %99

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %59 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %62 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %57
  %66 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %67 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %66, i32 0, i32 5
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %70 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = bitcast i64* %72 to i8*
  %74 = call i32 @debug1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %77 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %76, i32 0, i32 5
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %80 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  store i64 %75, i64* %82, align 8
  %83 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %84 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %88 = call i64 @fi_next(%struct.frame_index* %87)
  %89 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %90 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %89, i32 0, i32 4
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %93 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.frame_index*, %struct.frame_index** %3, align 8
  %96 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @debug3(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %91, i64 %94, i64 %97)
  br label %99

99:                                               ; preds = %55, %65, %57
  ret void
}

declare dso_local i32 @debug3(i8*, i64, i64, i64) #1

declare dso_local i64 @fi_resize(%struct.frame_index*, i64) #1

declare dso_local i32 @fi_shrink(%struct.frame_index*) #1

declare dso_local i32 @debug1(i8*, i8*) #1

declare dso_local i64 @fi_next(%struct.frame_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
