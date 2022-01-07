; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_shrink.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_index = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"shrink index with fill %lu and step %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_index*)* @fi_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fi_shrink(%struct.frame_index* %0) #0 {
  %2 = alloca %struct.frame_index*, align 8
  %3 = alloca i64, align 8
  store %struct.frame_index* %0, %struct.frame_index** %2, align 8
  %4 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %5 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  %10 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %11 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %15 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 @debug2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %17)
  %19 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %20 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %20, align 4
  %23 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %24 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %24, align 8
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %47, %9
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %30 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %36 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = mul i64 2, %38
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %43 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %41, i32* %46, align 4
  br label %47

47:                                               ; preds = %34
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %27

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %53 = call i32 @fi_next(%struct.frame_index* %52)
  %54 = load %struct.frame_index*, %struct.frame_index** %2, align 8
  %55 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %8
  ret void
}

declare dso_local i32 @debug2(i8*, i64, i64) #1

declare dso_local i32 @fi_next(%struct.frame_index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
