; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_log.c_bgw_log_insert_relation.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/bgw/extr_log.c_bgw_log_insert_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@bgw_log_insert_relation.msg_no = internal global i64 0, align 8
@application_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bgw_log_insert_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgw_log_insert_relation(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @RelationGetDescr(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = load i64, i64* @bgw_log_insert_relation.msg_no, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @bgw_log_insert_relation.msg_no, align 8
  %13 = trunc i64 %11 to i32
  %14 = call i32 @Int32GetDatum(i32 %13)
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = call %struct.TYPE_2__* (...) @ts_params_get()
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @Int64GetDatum(i32 %19)
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i8*, i8** @application_name, align 8
  %23 = call i32 @CStringGetTextDatum(i8* %22)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @CStringGetTextDatum(i8* %25)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %32 = call i32 @ts_catalog_insert_values(i32 %28, i32 %29, i32* %30, i32* %31)
  ret i32 1
}

declare dso_local i32 @RelationGetDescr(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local %struct.TYPE_2__* @ts_params_get(...) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local i32 @ts_catalog_insert_values(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
