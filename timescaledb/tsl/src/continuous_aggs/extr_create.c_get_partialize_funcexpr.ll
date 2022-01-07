; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_create.c_get_partialize_funcexpr.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/continuous_aggs/extr_create.c_get_partialize_funcexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANYELEMENTOID = common dso_local global i32 0, align 4
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@PARTIALFN = common dso_local global i32 0, align 4
@BYTEAOID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@COERCE_EXPLICIT_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_partialize_funcexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_partialize_funcexpr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @ANYELEMENTOID, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %8 = call i32 @makeString(i32 %7)
  %9 = load i32, i32* @PARTIALFN, align 4
  %10 = call i32 @makeString(i32 %9)
  %11 = call i32 @list_make2(i32 %8, i32 %10)
  %12 = call i32 @LookupFuncName(i32 %11, i32 1, i32* %5, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BYTEAOID, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @list_make1(i32* %15)
  %17 = load i32, i32* @InvalidOid, align 4
  %18 = load i32, i32* @InvalidOid, align 4
  %19 = load i32, i32* @COERCE_EXPLICIT_CALL, align 4
  %20 = call i32* @makeFuncExpr(i32 %13, i32 %14, i32 %16, i32 %17, i32 %18, i32 %19)
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  ret i32* %21
}

declare dso_local i32 @LookupFuncName(i32, i32, i32*, i32) #1

declare dso_local i32 @list_make2(i32, i32) #1

declare dso_local i32 @makeString(i32) #1

declare dso_local i32* @makeFuncExpr(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @list_make1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
