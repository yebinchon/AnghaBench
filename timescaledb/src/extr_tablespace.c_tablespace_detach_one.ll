; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_tablespace_detach_one.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_tablespace_detach_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TS_HYPERTABLE_NOT_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"table \22%s\22 is not a hypertable\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_TS_TABLESPACE_NOT_ATTACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"tablespace \22%s\22 is not attached to hypertable \22%s\22, skipping\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"tablespace \22%s\22 is not attached to hypertable \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @tablespace_detach_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tablespace_detach_one(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (...) @GetUserId()
  %14 = call i32 @ts_hypertable_permissions_check(i32 %12, i32 %13)
  %15 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.TYPE_6__* @ts_hypertable_cache_get_entry(i32* %16, i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = icmp eq %struct.TYPE_6__* null, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_TS_HYPERTABLE_NOT_EXIST, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @get_rel_name(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 @ereport(i32 %22, i32 %29)
  br label %31

31:                                               ; preds = %21, %4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ts_hypertable_has_tablespace(%struct.TYPE_6__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @ts_tablespace_delete(i32 %40, i8* %41)
  store i32 %42, i32* %11, align 4
  br label %65

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* @NOTICE, align 4
  %48 = load i32, i32* @ERRCODE_TS_TABLESPACE_NOT_ATTACHED, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @get_rel_name(i32 %51)
  %53 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %52)
  %54 = call i32 @ereport(i32 %47, i32 %53)
  br label %64

55:                                               ; preds = %43
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_TS_TABLESPACE_NOT_ATTACHED, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @get_rel_name(i32 %60)
  %62 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 %61)
  %63 = call i32 @ereport(i32 %56, i32 %62)
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64, %36
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @ts_cache_release(i32* %66)
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @ts_hypertable_permissions_check(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local %struct.TYPE_6__* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i64 @ts_hypertable_has_tablespace(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ts_tablespace_delete(i32, i8*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
