; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ptrmap_delete.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ptrmap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8* }

@STB_EMPTY = common dso_local global i64 0, align 8
@STB_EDEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_ptrmap_delete(%struct.TYPE_6__* %0, void (i8*)* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %6 = load void (i8*)*, void (i8*)** %4, align 8
  %7 = icmp ne void (i8*)* %6, null
  br i1 %7, label %8, label %65

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %61, %8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STB_EMPTY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STB_EDEL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %26
  %38 = load void (i8*)*, void (i8*)** %4, align 8
  %39 = icmp eq void (i8*)* %38, @free
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  call void @free(i8* %48)
  br label %59

49:                                               ; preds = %37
  %50 = load void (i8*)*, void (i8*)** %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  call void %50(i8* %58)
  br label %59

59:                                               ; preds = %49, %40
  br label %60

60:                                               ; preds = %59, %26, %15
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %9

64:                                               ; preds = %9
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = call i32 @stb_ptrmap_destroy(%struct.TYPE_6__* %66)
  ret void
}

declare dso_local void @free(i8*) #1

declare dso_local i32 @stb_ptrmap_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
