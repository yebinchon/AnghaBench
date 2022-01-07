; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_planner_import.c_ts_get_variable_range.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_planner_import.c_ts_get_variable_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@STATISTIC_KIND_HISTOGRAM = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_get_variable_range(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HeapTupleIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %178

29:                                               ; preds = %5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @get_opcode(i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = call i32 @statistic_proc_security_check(%struct.TYPE_8__* %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %178

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_typlenbyval(i32 %39, i32* %15, i32* %16)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %47 = call i64 @get_attstatsslot(%struct.TYPE_9__* %18, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @datumCopy(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @datumCopy(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %53, %49
  %73 = call i32 @free_attstatsslot(%struct.TYPE_9__* %18)
  br label %85

74:                                               ; preds = %36
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @STATISTIC_KIND_HISTOGRAM, align 4
  %79 = load i32, i32* @InvalidOid, align 4
  %80 = call i64 @get_attstatsslot(%struct.TYPE_9__* %18, i32 %77, i32 %78, i32 %79, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 @free_attstatsslot(%struct.TYPE_9__* %18)
  store i32 0, i32* %6, align 4
  br label %178

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %72
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %90 = load i32, i32* @InvalidOid, align 4
  %91 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %92 = call i64 @get_attstatsslot(%struct.TYPE_9__* %18, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %172

94:                                               ; preds = %85
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @fmgr_info(i32 %95, i32* %22)
  store i32 0, i32* %19, align 4
  br label %97

97:                                               ; preds = %151, %94
  %98 = load i32, i32* %19, align 4
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %154

102:                                              ; preds = %97
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %13, align 4
  store i32 %111, i32* %12, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %20, align 4
  br label %151

112:                                              ; preds = %102
  %113 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @FunctionCall2Coll(i32* %22, i32 %113, i32 %119, i32 %120)
  %122 = call i64 @DatumGetBool(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %112
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %12, align 4
  store i32 1, i32* %20, align 4
  br label %131

131:                                              ; preds = %124, %112
  %132 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  %133 = load i32, i32* %13, align 4
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @FunctionCall2Coll(i32* %22, i32 %132, i32 %133, i32 %139)
  %141 = call i64 @DatumGetBool(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %150

150:                                              ; preds = %143, %131
  br label %151

151:                                              ; preds = %150, %105
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %97

154:                                              ; preds = %97
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @datumCopy(i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %157, %154
  %163 = load i32, i32* %21, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @datumCopy(i32 %166, i32 %167, i32 %168)
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %165, %162
  %171 = call i32 @free_attstatsslot(%struct.TYPE_9__* %18)
  br label %172

172:                                              ; preds = %170, %85
  %173 = load i32, i32* %12, align 4
  %174 = load i32*, i32** %10, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32*, i32** %11, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %172, %82, %35, %28
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @statistic_proc_security_check(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_opcode(i32) #1

declare dso_local i32 @get_typlenbyval(i32, i32*, i32*) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_9__*) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
