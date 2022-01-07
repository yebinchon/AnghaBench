; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_history.c_HistoryFindEntryByPrefix.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_history.c_HistoryFindEntryByPrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i32* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HistoryFindEntryByPrefix(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_6__* @HistoryCurrentBuffer(%struct.TYPE_7__* %12, i32* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %4
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %5, align 8
  br label %95

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i64 [ %37, %34 ], [ %41, %38 ]
  %44 = sub nsw i64 %43, 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %24
  %48 = load i64, i64* @TRUE, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %87, %47
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i64, i64* @FALSE, align 8
  %62 = call i64 @RtlPrefixUnicodeString(i32* %55, i32* %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i64, i64* @TRUE, align 8
  store i64 %75, i64* %5, align 8
  br label %95

76:                                               ; preds = %54
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %10, align 8
  %79 = icmp ult i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %80, %76
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %54, label %93

93:                                               ; preds = %87
  %94 = load i64, i64* @FALSE, align 8
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %93, %64, %22
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local %struct.TYPE_6__* @HistoryCurrentBuffer(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @RtlPrefixUnicodeString(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
