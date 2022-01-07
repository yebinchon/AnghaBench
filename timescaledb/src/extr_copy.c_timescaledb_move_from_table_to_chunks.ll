; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_copy.c_timescaledb_move_from_table_to_chunks.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_copy.c_timescaledb_move_from_table_to_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@DROP_RESTRICT = common dso_local global i32 0, align 4
@T_TruncateStmt = common dso_local global i32 0, align 4
@next_copy_from_table_to_chunks = common dso_local global i32 0, align 4
@INH_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timescaledb_move_from_table_to_chunks(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_23__, align 4
  %12 = alloca %struct.TYPE_21__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** @NIL, align 8
  store i32* %16, i32** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @NameStr(i32 %23)
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 3
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NameStr(i32 %29)
  store i32 %30, i32* %25, align 4
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %32 = load i32, i32* @DROP_RESTRICT, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %34 = call i32 @list_make1(%struct.TYPE_23__* %11)
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %36 = load i32, i32* @T_TruncateStmt, align 4
  store i32 %36, i32* %35, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call %struct.TYPE_22__* @heap_open(i32 %39, i32 %40)
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %5, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %61, %2
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %42
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call %struct.TYPE_25__* @TupleDescAttr(%struct.TYPE_19__* %53, i32 %54)
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %14, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @lappend_int(i32* %56, i32 %59)
  store i32* %60, i32** %9, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %42

64:                                               ; preds = %42
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @copy_security_check(%struct.TYPE_22__* %65, i32* %66)
  %68 = call i32 (...) @GetLatestSnapshot()
  %69 = call i32 @RegisterSnapshot(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @heap_beginscan(%struct.TYPE_22__* %70, i32 %71, i32 0, i32* null)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = load i32, i32* @next_copy_from_table_to_chunks, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32* @copy_chunk_state_create(%struct.TYPE_24__* %73, %struct.TYPE_22__* %74, i32 %75, i32 %76)
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %81 = call i32 @timescaledb_CopyFrom(i32* %78, i32* %79, %struct.TYPE_24__* %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @heap_endscan(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @UnregisterSnapshot(i32 %84)
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @heap_close(%struct.TYPE_22__* %86, i32 %87)
  %89 = call i32 @ExecuteTruncate(%struct.TYPE_21__* %12)
  ret void
}

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @list_make1(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @heap_open(i32, i32) #1

declare dso_local %struct.TYPE_25__* @TupleDescAttr(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @lappend_int(i32*, i32) #1

declare dso_local i32 @copy_security_check(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @RegisterSnapshot(i32) #1

declare dso_local i32 @GetLatestSnapshot(...) #1

declare dso_local i32 @heap_beginscan(%struct.TYPE_22__*, i32, i32, i32*) #1

declare dso_local i32* @copy_chunk_state_create(%struct.TYPE_24__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @timescaledb_CopyFrom(i32*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @heap_endscan(i32) #1

declare dso_local i32 @UnregisterSnapshot(i32) #1

declare dso_local i32 @heap_close(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ExecuteTruncate(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
