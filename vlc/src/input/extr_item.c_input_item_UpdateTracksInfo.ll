; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_UpdateTracksInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_UpdateTracksInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_item_UpdateTracksInfo(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = call %struct.TYPE_13__* @malloc(i32 8)
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %6, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %9 = icmp ne %struct.TYPE_13__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %81

11:                                               ; preds = %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = call i32 @es_format_Copy(%struct.TYPE_13__* %12, %struct.TYPE_13__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = call i32 @vlc_mutex_lock(i32* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %66, %11
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %27, i64 %29
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %66

39:                                               ; preds = %24
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 %44
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = call i32 @es_format_Clean(%struct.TYPE_13__* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %50, i64 %52
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = call i32 @free(%struct.TYPE_13__* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %59, i64 %61
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = call i32 @vlc_mutex_unlock(i32* %64)
  br label %81

66:                                               ; preds = %38
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %18

69:                                               ; preds = %18
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = call i32 @TAB_APPEND(i32 %72, %struct.TYPE_13__** %75, %struct.TYPE_13__* %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = call i32 @vlc_mutex_unlock(i32* %79)
  br label %81

81:                                               ; preds = %69, %39, %10
  ret void
}

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @TAB_APPEND(i32, %struct.TYPE_13__**, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
