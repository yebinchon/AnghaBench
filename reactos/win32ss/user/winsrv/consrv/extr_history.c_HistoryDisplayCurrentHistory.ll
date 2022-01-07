; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_history.c_HistoryDisplayCurrentHistory.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_history.c_HistoryDisplayCurrentHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }

@TEXTMODE_BUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @HistoryDisplayCurrentHistory(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_18__* @HistoryCurrentBuffer(%struct.TYPE_19__* %13, i32 %14)
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %12, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %17 = icmp ne %struct.TYPE_18__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %75

25:                                               ; preds = %19
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = call i64 @GetType(%struct.TYPE_20__* %28)
  %30 = load i64, i64* @TEXTMODE_BUFFER, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %75

33:                                               ; preds = %25
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %6, align 8
  store i32 40, i32* %10, align 4
  store i32 10, i32* %11, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %40, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sdiv i32 %58, 2
  %60 = add nsw i32 %52, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call %struct.TYPE_17__* @CreatePopupWindow(%struct.TYPE_19__* %61, %struct.TYPE_20__* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %7, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = icmp eq %struct.TYPE_17__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %33
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %75

71:                                               ; preds = %33
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %3, align 8
  br label %75

75:                                               ; preds = %71, %70, %32, %24, %18
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %76
}

declare dso_local %struct.TYPE_18__* @HistoryCurrentBuffer(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @GetType(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_17__* @CreatePopupWindow(%struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
