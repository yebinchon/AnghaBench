; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_exec.c_get_cast_func.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/gapfill/extr_exec.c_get_cast_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@CASTSOURCETARGET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not find cast from %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_cast_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cast_func(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @InvalidOid, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @CASTSOURCETARGET, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ObjectIdGetDatum(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call i32 @SearchSysCache2(i32 %9, i32 %11, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @GETSTRUCT(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %7, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ReleaseSysCache(i32 %26)
  br label %28

28:                                               ; preds = %18, %2
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @OidIsValid(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @format_type_be(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @format_type_be(i32 %38)
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39)
  %41 = call i32 @ereport(i32 %33, i32 %40)
  br label %42

42:                                               ; preds = %32, %28
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @format_type_be(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
