; ModuleID = '/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_exec.c_choose_next_subplan_for_worker.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_exec.c_choose_next_subplan_for_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }

@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@INVALID_SUBPLAN_INDEX = common dso_local global i32 0, align 4
@NO_MATCHING_SUBPLANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @choose_next_subplan_for_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_next_subplan_for_worker(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LW_EXCLUSIVE, align 4
  %13 = call i32 @LWLockAcquire(i32 %11, i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @INVALID_SUBPLAN_INDEX, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = load i32, i32* @INVALID_SUBPLAN_INDEX, align 4
  %35 = call i8* @get_next_subplan(%struct.TYPE_6__* %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @NO_MATCHING_SUBPLANS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* @NO_MATCHING_SUBPLANS, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @NO_MATCHING_SUBPLANS, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @LWLockRelease(i32 %55)
  br label %156

57:                                               ; preds = %41
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %103, %57
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %59
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i8* @get_next_subplan(%struct.TYPE_6__* %69, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = load i32, i32* @INVALID_SUBPLAN_INDEX, align 4
  %78 = call i8* @get_next_subplan(%struct.TYPE_6__* %76, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %84, %80
  %88 = load i32, i32* %4, align 4
  %89 = icmp sge i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @Assert(i32 %90)
  %92 = load i32, i32* @NO_MATCHING_SUBPLANS, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @NO_MATCHING_SUBPLANS, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @LWLockRelease(i32 %101)
  br label %156

103:                                              ; preds = %84
  br label %59

104:                                              ; preds = %59
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br label %113

113:                                              ; preds = %107, %104
  %114 = phi i1 [ false, %104 ], [ %112, %107 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @Assert(i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %113
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %126, %113
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i8* @get_next_subplan(%struct.TYPE_6__* %134, i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %133
  %148 = load i32, i32* @INVALID_SUBPLAN_INDEX, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %133
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @LWLockRelease(i32 %154)
  br label %156

156:                                              ; preds = %151, %87, %45
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i8* @get_next_subplan(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
