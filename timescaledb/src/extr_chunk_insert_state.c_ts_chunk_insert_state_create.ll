; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_insert_state.c_ts_chunk_insert_state_create.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_insert_state.c_ts_chunk_insert_state_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i32, i64, %struct.TYPE_37__*, %struct.TYPE_42__*, %struct.TYPE_43__*, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_40__*, i32*, %struct.TYPE_39__* }
%struct.TYPE_40__ = type { i64, i64, i64 }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_43__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i64, %struct.TYPE_41__*, %struct.TYPE_37__*, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_36__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"chunk insert state memory context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@RLS_ENABLED = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"hypertables do not support row-level security\00", align 1
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"insert is not on a table\00", align 1
@ONCONFLICT_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"insert trigger on chunk table not supported\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"could not convert row type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_44__* @ts_chunk_insert_state_create(%struct.TYPE_34__* %0, %struct.TYPE_33__* %1) #0 {
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_44__*, align 8
  %6 = alloca %struct.TYPE_43__*, align 8
  %7 = alloca %struct.TYPE_43__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_42__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %4, align 8
  %12 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %18 = call i32 @AllocSetContextCreate(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @InvalidOid, align 4
  %23 = call i64 @check_enable_rls(i32 %21, i32 %22, i32 0)
  %24 = load i64, i64* @RLS_ENABLED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MemoryContextSwitchTo(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RowExclusiveLock, align 4
  %43 = call %struct.TYPE_43__* @heap_open(i32 %41, i32 %42)
  store %struct.TYPE_43__* %43, %struct.TYPE_43__** %6, align 8
  %44 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RELKIND_RELATION, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  %52 = load i32, i32* @ERROR, align 4
  %53 = call i32 @elog(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %32
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %56 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %57 = call i32 @create_chunk_range_table_entry(%struct.TYPE_33__* %55, %struct.TYPE_43__* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @MemoryContextSwitchTo(i32 %58)
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %61 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.TYPE_42__* @create_chunk_result_relation_info(%struct.TYPE_33__* %60, %struct.TYPE_43__* %61, i32 %62)
  store %struct.TYPE_42__* %63, %struct.TYPE_42__** %11, align 8
  %64 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @CheckValidResultRelCompat(%struct.TYPE_42__* %64, i32 %67)
  %69 = call %struct.TYPE_44__* @palloc0(i32 48)
  store %struct.TYPE_44__* %69, %struct.TYPE_44__** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %74 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %74, i32 0, i32 4
  store %struct.TYPE_43__* %73, %struct.TYPE_43__** %75, align 8
  %76 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %77 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %77, i32 0, i32 3
  store %struct.TYPE_42__* %76, %struct.TYPE_42__** %78, align 8
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %80, align 8
  %82 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %82, i32 0, i32 2
  store %struct.TYPE_37__* %81, %struct.TYPE_37__** %83, align 8
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_39__*, %struct.TYPE_39__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %54
  %93 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ONCONFLICT_NONE, align 8
  %103 = icmp ne i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ExecOpenIndices(%struct.TYPE_42__* %98, i32 %104)
  br label %106

106:                                              ; preds = %97, %92, %54
  %107 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_40__*, %struct.TYPE_40__** %108, align 8
  %110 = icmp ne %struct.TYPE_40__* %109, null
  br i1 %110, label %111, label %136

111:                                              ; preds = %106
  %112 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_40__*, %struct.TYPE_40__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_40__*, %struct.TYPE_40__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125, %118, %111
  %133 = load i32, i32* @ERROR, align 4
  %134 = call i32 @elog(i32 %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %125
  br label %136

136:                                              ; preds = %135, %106
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ONCONFLICT_NONE, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %145 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %146 = call i32 @chunk_insert_state_set_arbiter_indexes(%struct.TYPE_44__* %143, %struct.TYPE_33__* %144, %struct.TYPE_43__* %145)
  br label %147

147:                                              ; preds = %142, %136
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_41__*, %struct.TYPE_41__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @AccessShareLock, align 4
  %154 = call %struct.TYPE_43__* @heap_open(i32 %152, i32 %153)
  store %struct.TYPE_43__* %154, %struct.TYPE_43__** %7, align 8
  %155 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %156 = call i32 @RelationGetDescr(%struct.TYPE_43__* %155)
  %157 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %158 = call i32 @RelationGetDescr(%struct.TYPE_43__* %157)
  %159 = call i64 @tuple_conversion_needed(i32 %156, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %147
  %162 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %163 = call i32 @RelationGetDescr(%struct.TYPE_43__* %162)
  %164 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %165 = call i32 @RelationGetDescr(%struct.TYPE_43__* %164)
  %166 = call i32 @gettext_noop(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %167 = call i64 @convert_tuples_by_name(i32 %163, i32 %165, i32 %166)
  %168 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %172 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %173 = call %struct.TYPE_36__* @RelationGetForm(%struct.TYPE_43__* %172)
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @adjust_projections(%struct.TYPE_44__* %170, %struct.TYPE_33__* %171, i32 %175)
  br label %177

177:                                              ; preds = %161, %147
  %178 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = call i32 @MakeTupleTableSlotCompat(i32* null)
  %184 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %182, %177
  %187 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %188 = load i32, i32* @AccessShareLock, align 4
  %189 = call i32 @heap_close(%struct.TYPE_43__* %187, i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @MemoryContextSwitchTo(i32 %190)
  %192 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  ret %struct.TYPE_44__* %192
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i64 @check_enable_rls(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_43__* @heap_open(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @create_chunk_range_table_entry(%struct.TYPE_33__*, %struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_42__* @create_chunk_result_relation_info(%struct.TYPE_33__*, %struct.TYPE_43__*, i32) #1

declare dso_local i32 @CheckValidResultRelCompat(%struct.TYPE_42__*, i32) #1

declare dso_local %struct.TYPE_44__* @palloc0(i32) #1

declare dso_local i32 @ExecOpenIndices(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @chunk_insert_state_set_arbiter_indexes(%struct.TYPE_44__*, %struct.TYPE_33__*, %struct.TYPE_43__*) #1

declare dso_local i64 @tuple_conversion_needed(i32, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_43__*) #1

declare dso_local i64 @convert_tuples_by_name(i32, i32, i32) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @adjust_projections(%struct.TYPE_44__*, %struct.TYPE_33__*, i32) #1

declare dso_local %struct.TYPE_36__* @RelationGetForm(%struct.TYPE_43__*) #1

declare dso_local i32 @MakeTupleTableSlotCompat(i32*) #1

declare dso_local i32 @heap_close(%struct.TYPE_43__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
