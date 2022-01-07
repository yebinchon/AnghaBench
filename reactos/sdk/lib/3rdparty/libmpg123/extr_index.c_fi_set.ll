; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_set.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_index = type { i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"set new index of fill %lu, size %lu at %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fi_set(%struct.frame_index* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.frame_index*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.frame_index* %0, %struct.frame_index** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %11 = load i64, i64* %9, align 8
  %12 = call i32 @fi_resize(%struct.frame_index* %10, i64 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %51

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %18 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %23 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = mul i64 %26, 4
  %28 = call i32 @memcpy(i64 %24, i32* %25, i64 %27)
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %31 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %35

32:                                               ; preds = %15
  %33 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %34 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %37 = call i32 @fi_next(%struct.frame_index* %36)
  %38 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %39 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %41 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %44 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.frame_index*, %struct.frame_index** %6, align 8
  %47 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @debug3(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45, i8* %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %35, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @fi_resize(%struct.frame_index*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @fi_next(%struct.frame_index*) #1

declare dso_local i32 @debug3(i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
