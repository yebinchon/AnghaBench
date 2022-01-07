; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable_restrict_info.c_dimension_values_create_from_array.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable_restrict_info.c_dimension_values_create_from_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Couldn't get base element type from array type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32)* @dimension_values_create_from_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dimension_values_create_from_array(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DatumGetArrayTypeP(i32 %12)
  %14 = call i32 @array_create_iterator(i32 %13, i32 0, i32* null)
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @array_iterate(i32 %17, i32* %6, i32* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DatumGetPointer(i32 %25)
  %27 = call i32* @lappend(i32* %24, i32 %26)
  store i32* %27, i32** %8, align 8
  br label %28

28:                                               ; preds = %23, %20
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @get_element_type(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @InvalidOid, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, i32* @ERROR, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32* @dimension_values_create(i32* %44, i64 %45, i32 %46)
  ret i32* %47
}

declare dso_local i32 @array_create_iterator(i32, i32, i32*) #1

declare dso_local i32 @DatumGetArrayTypeP(i32) #1

declare dso_local i64 @array_iterate(i32, i32*, i32*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @get_element_type(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @dimension_values_create(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
