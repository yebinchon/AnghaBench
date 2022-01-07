; ModuleID = '/home/carl/AnghaBench/streem/src/extr_core.c_strm_stream_close.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_core.c_strm_stream_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 (%struct.TYPE_4__*, i32)*, i32, i64*, i64, i64* }

@strm_killed = common dso_local global i64 0, align 8
@STRM_NG = common dso_local global i64 0, align 8
@stream_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strm_stream_close(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @strm_killed, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @strm_atomic_dec(i64 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %98

22:                                               ; preds = %12
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @strm_killed, align 8
  %28 = call i32 @strm_atomic_cas(i64 %25, i64 %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %98

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64 (%struct.TYPE_4__*, i32)*, i64 (%struct.TYPE_4__*, i32)** %33, align 8
  %35 = icmp ne i64 (%struct.TYPE_4__*, i32)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64 (%struct.TYPE_4__*, i32)*, i64 (%struct.TYPE_4__*, i32)** %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = call i32 (...) @strm_nil_value()
  %42 = call i64 %39(%struct.TYPE_4__* %40, i32 %41)
  %43 = load i64, i64* @STRM_NG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %98

46:                                               ; preds = %36
  br label %54

47:                                               ; preds = %31
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @free(i64* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  store i64* null, i64** %53, align 8
  br label %54

54:                                               ; preds = %47, %46
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (...) @strm_nil_value()
  %64 = call i32 @strm_task_push(i64 %62, i32 ptrtoint (void (%struct.TYPE_4__*)* @strm_stream_close to i32), i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i64*, i64** %67, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %95

70:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %87, %70
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (...) @strm_nil_value()
  %86 = call i32 @strm_task_push(i64 %84, i32 ptrtoint (void (%struct.TYPE_4__*)* @strm_stream_close to i32), i32 %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @free(i64* %93)
  br label %95

95:                                               ; preds = %90, %65
  %96 = load i64, i64* @stream_count, align 8
  %97 = call i32 @strm_atomic_dec(i64 %96)
  br label %98

98:                                               ; preds = %95, %45, %30, %21, %11
  ret void
}

declare dso_local i32 @strm_atomic_dec(i64) #1

declare dso_local i32 @strm_atomic_cas(i64, i64, i64) #1

declare dso_local i32 @strm_nil_value(...) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @strm_task_push(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
