; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension.c_extension_set_state.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension.c_extension_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extstate = common dso_local global i32 0, align 4
@TIMESCALEDB_VERSION_MOD = common dso_local global i32 0, align 4
@EXTENSION_PROXY_TABLE = common dso_local global i32 0, align 4
@CACHE_SCHEMA_NAME = common dso_local global i32 0, align 4
@extension_proxy_oid = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @extension_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extension_set_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @extstate, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %22 [
    i32 129, label %10
    i32 128, label %10
    i32 131, label %11
    i32 130, label %19
  ]

10:                                               ; preds = %8, %8
  br label %22

11:                                               ; preds = %8
  %12 = load i32, i32* @TIMESCALEDB_VERSION_MOD, align 4
  %13 = call i32 @ts_extension_check_version(i32 %12)
  %14 = load i32, i32* @EXTENSION_PROXY_TABLE, align 4
  %15 = load i32, i32* @CACHE_SCHEMA_NAME, align 4
  %16 = call i32 @get_namespace_oid(i32 %15, i32 0)
  %17 = call i32 @get_relname_relid(i32 %14, i32 %16)
  store i32 %17, i32* @extension_proxy_oid, align 4
  %18 = call i32 (...) @ts_catalog_reset()
  br label %22

19:                                               ; preds = %8
  %20 = load i32, i32* @InvalidOid, align 4
  store i32 %20, i32* @extension_proxy_oid, align 4
  %21 = call i32 (...) @ts_catalog_reset()
  br label %22

22:                                               ; preds = %8, %19, %11, %10
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* @extstate, align 4
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ts_extension_check_version(i32) #1

declare dso_local i32 @get_relname_relid(i32, i32) #1

declare dso_local i32 @get_namespace_oid(i32, i32) #1

declare dso_local i32 @ts_catalog_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
