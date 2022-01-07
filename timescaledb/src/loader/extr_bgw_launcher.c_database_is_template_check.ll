; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_database_is_template_check.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_database_is_template_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@DATABASEOID = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"TimescaleDB background worker failed to find entry for database in syscache\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"TimescaleDB background worker connected to template database, exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @database_is_template_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @database_is_template_check() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @DATABASEOID, align 4
  %4 = load i32, i32* @MyDatabaseId, align 4
  %5 = call i32 @ObjectIdGetDatum(i32 %4)
  %6 = call i32 @SearchSysCache1(i32 %3, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @HeapTupleIsValid(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ERROR, align 4
  %12 = call i32 @errmsg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ereport(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @GETSTRUCT(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %1, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @ereport(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ReleaseSysCache(i32 %27)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
