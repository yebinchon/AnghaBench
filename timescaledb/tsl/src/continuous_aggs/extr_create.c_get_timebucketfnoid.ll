; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_create.c_get_timebucketfnoid.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_create.c_get_timebucketfnoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@TIMEBUCKETFN = common dso_local global i8* null, align 8
@PROCNAMEARGSNSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_timebucketfnoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_timebucketfnoid() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = load i32*, i32** @NIL, align 8
  store i32* %7, i32** %1, align 8
  %8 = load i8*, i8** @TIMEBUCKETFN, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i32, i32* @PROCNAMEARGSNSP, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @CStringGetDatum(i8* %10)
  %12 = call %struct.TYPE_6__* @SearchSysCacheList1(i32 %9, i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %34, %0
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %22, i64 %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @HeapTupleGetOid(i32* %28)
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32* @lappend_oid(i32* %31, i32 %32)
  store i32* %33, i32** %1, align 8
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = call i32 @ReleaseSysCacheList(%struct.TYPE_6__* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32*, i32** @NIL, align 8
  %42 = icmp ne i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load i32*, i32** %1, align 8
  ret i32* %45
}

declare dso_local %struct.TYPE_6__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleGetOid(i32*) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @ReleaseSysCacheList(%struct.TYPE_6__*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
