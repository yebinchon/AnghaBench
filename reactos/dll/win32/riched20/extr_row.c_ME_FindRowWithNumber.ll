; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_row.c_ME_FindRowWithNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_row.c_ME_FindRowWithNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }

@diParagraph = common dso_local global i64 0, align 8
@diStartRow = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @ME_FindRowWithNumber(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = load i64, i64* @diParagraph, align 8
  %14 = call %struct.TYPE_14__* @ME_FindItemFwd(%struct.TYPE_14__* %12, i64 %13)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %33, %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @diParagraph, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %22, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %28, %29
  br label %31

31:                                               ; preds = %21, %15
  %32 = phi i1 [ false, %15 ], [ %30, %21 ]
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %6, align 8
  br label %15

46:                                               ; preds = %31
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @diParagraph, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %75

53:                                               ; preds = %46
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = load i64, i64* @diStartRow, align 8
  %56 = call %struct.TYPE_14__* @ME_FindItemFwd(%struct.TYPE_14__* %54, i64 %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %6, align 8
  br label %57

57:                                               ; preds = %70, %53
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %66, label %73

66:                                               ; preds = %64
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = load i64, i64* @diStartRow, align 8
  %69 = call %struct.TYPE_14__* @ME_FindItemFwd(%struct.TYPE_14__* %67, i64 %68)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %6, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %57

73:                                               ; preds = %64
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %3, align 8
  br label %75

75:                                               ; preds = %73, %52
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %76
}

declare dso_local %struct.TYPE_14__* @ME_FindItemFwd(%struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
