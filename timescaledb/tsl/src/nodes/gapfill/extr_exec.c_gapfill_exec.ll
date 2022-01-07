; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_exec.c_gapfill_exec.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_exec.c_gapfill_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i64 }

@FETCHED_NONE = common dso_local global i64 0, align 8
@FETCHED_NEXT_GROUP = common dso_local global i64 0, align 8
@FETCHED_ONE = common dso_local global i64 0, align 8
@FETCHED_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @gapfill_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gapfill_exec(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  store i32* null, i32** %5, align 8
  br label %8

8:                                                ; preds = %1, %152
  %9 = load i64, i64* @FETCHED_NONE, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32* @gapfill_fetch_next_tuple(%struct.TYPE_8__* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @gapfill_state_is_new_group(%struct.TYPE_8__* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i64, i64* @FETCHED_NEXT_GROUP, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %37

33:                                               ; preds = %24, %19
  %34 = load i64, i64* @FETCHED_ONE, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @gapfill_state_set_next(%struct.TYPE_8__* %38, i32* %39)
  br label %57

41:                                               ; preds = %14
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32* null, i32** %2, align 8
  br label %167

52:                                               ; preds = %46, %41
  %53 = load i64, i64* @FETCHED_LAST, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %8
  %59 = load i64, i64* @FETCHED_ONE, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i64, i64* @FETCHED_NONE, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = call i32* @gapfill_state_return_subplan_slot(%struct.TYPE_8__* %76)
  store i32* %77, i32** %2, align 8
  br label %167

78:                                               ; preds = %64, %58
  %79 = load i64, i64* @FETCHED_ONE, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %84
  %93 = load i64, i64* @FETCHED_NONE, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = call i32* @gapfill_state_return_subplan_slot(%struct.TYPE_8__* %103)
  store i32* %104, i32** %2, align 8
  br label %167

105:                                              ; preds = %84, %78
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %105
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @FETCHED_NONE, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @Assert(i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32* @gapfill_state_gaptuple_create(%struct.TYPE_8__* %121, i64 %124)
  store i32* %125, i32** %5, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i32*, i32** %5, align 8
  store i32* %133, i32** %2, align 8
  br label %167

134:                                              ; preds = %105
  %135 = load i64, i64* @FETCHED_ONE, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i64, i64* @FETCHED_NONE, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = call i32* @gapfill_state_return_subplan_slot(%struct.TYPE_8__* %144)
  store i32* %145, i32** %2, align 8
  br label %167

146:                                              ; preds = %134
  %147 = load i64, i64* @FETCHED_NEXT_GROUP, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %146
  %153 = load i64, i64* @FETCHED_ONE, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @gapfill_state_reset_group(%struct.TYPE_8__* %161, i32 %164)
  br label %8

166:                                              ; preds = %146
  store i32* null, i32** %2, align 8
  br label %167

167:                                              ; preds = %166, %140, %113, %92, %72, %51
  %168 = load i32*, i32** %2, align 8
  ret i32* %168
}

declare dso_local i32* @gapfill_fetch_next_tuple(%struct.TYPE_8__*) #1

declare dso_local i64 @gapfill_state_is_new_group(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @gapfill_state_set_next(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @gapfill_state_return_subplan_slot(%struct.TYPE_8__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @gapfill_state_gaptuple_create(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @gapfill_state_reset_group(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
