; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_ReadBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_ReadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_11__*, i32, i64)*, %struct.TYPE_13__* (%struct.TYPE_11__*, i32*)* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @vlc_stream_ReadBlock(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = bitcast %struct.TYPE_11__* %7 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = call i64 (...) @vlc_killed()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %104

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %24, align 8
  br label %89

25:                                               ; preds = %14
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %5, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %35, align 8
  br label %88

36:                                               ; preds = %25
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_13__* (%struct.TYPE_11__*, i32*)*, %struct.TYPE_13__* (%struct.TYPE_11__*, i32*)** %38, align 8
  %40 = icmp ne %struct.TYPE_13__* (%struct.TYPE_11__*, i32*)* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__* (%struct.TYPE_11__*, i32*)*, %struct.TYPE_13__* (%struct.TYPE_11__*, i32*)** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = call %struct.TYPE_13__* %46(%struct.TYPE_11__* %47, i32* %49)
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %5, align 8
  br label %87

51:                                               ; preds = %36
  %52 = call %struct.TYPE_13__* @block_Alloc(i32 4096)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %5, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = icmp eq %struct.TYPE_13__* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %104

59:                                               ; preds = %51
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64 (%struct.TYPE_11__*, i32, i64)*, i64 (%struct.TYPE_11__*, i32, i64)** %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 %62(%struct.TYPE_11__* %63, i32 %66, i64 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %80

77:                                               ; preds = %59
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = call i32 @block_Release(%struct.TYPE_13__* %78)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %80, %41
  br label %88

88:                                               ; preds = %87, %30
  br label %89

89:                                               ; preds = %88, %19
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %102

102:                                              ; preds = %92, %89
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %2, align 8
  br label %104

104:                                              ; preds = %102, %58, %11
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %105
}

declare dso_local i64 @vlc_killed(...) #1

declare dso_local %struct.TYPE_13__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
