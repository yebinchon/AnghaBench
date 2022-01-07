; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_fz_drop_key_storable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_store.c_fz_drop_key_storable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* }

@FZ_LOCK_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_drop_key_storable(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = icmp eq %struct.TYPE_13__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %79

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %15 = call i32 @fz_lock(%struct.TYPE_14__* %13, i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %12
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = call i32 @Memento_dropRef(%struct.TYPE_13__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %21
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %57

54:                                               ; preds = %42
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = call i32 @do_reap(%struct.TYPE_14__* %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %33, %21
  br label %60

59:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %66 = call i32 @fz_unlock(%struct.TYPE_14__* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = call i32 %74(%struct.TYPE_14__* %75, %struct.TYPE_15__* %77)
  br label %79

79:                                               ; preds = %11, %70, %67
  ret void
}

declare dso_local i32 @fz_lock(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @Memento_dropRef(%struct.TYPE_13__*) #1

declare dso_local i32 @do_reap(%struct.TYPE_14__*) #1

declare dso_local i32 @fz_unlock(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
