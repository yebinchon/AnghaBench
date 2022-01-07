; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_insert_state.c_adjust_hypertable_tlist.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_insert_state.c_adjust_hypertable_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@InvalidAttrNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"invalid translation of ON CONFLICT update statements\00", align 1
@INT4OID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_11__*)* @adjust_hypertable_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @adjust_hypertable_tlist(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  store i32 1, i32* %8, align 4
  br label %19

19:                                               ; preds = %90, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %93

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_10__* %26, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @InvalidAttrNumber, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %25
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i64 @list_nth(i32* %46, i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %10, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @namestrcmp(i32* %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %38
  %64 = load i32, i32* @ERROR, align 4
  %65 = call i32 @elog(i32 %64, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %38
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %86

70:                                               ; preds = %25
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @Assert(i32 %73)
  %75 = load i32, i32* @INT4OID, align 4
  %76 = load i32, i32* @InvalidOid, align 4
  %77 = call i32* @makeConst(i32 %75, i32 -1, i32 %76, i32 4, i32 0, i32 1, i32 1)
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @NameStr(i32 %82)
  %84 = call i32 @pstrdup(i32 %83)
  %85 = call %struct.TYPE_12__* @makeTargetEntry(i32* %78, i32 %79, i32 %84, i32 0)
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %10, align 8
  br label %86

86:                                               ; preds = %70, %66
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = call i32* @lappend(i32* %87, %struct.TYPE_12__* %88)
  store i32* %89, i32** %5, align 8
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %19

93:                                               ; preds = %19
  %94 = load i32*, i32** %5, align 8
  ret i32* %94
}

declare dso_local %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @list_nth(i32*, i32) #1

declare dso_local i64 @namestrcmp(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @makeConst(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @makeTargetEntry(i32*, i32, i32, i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
