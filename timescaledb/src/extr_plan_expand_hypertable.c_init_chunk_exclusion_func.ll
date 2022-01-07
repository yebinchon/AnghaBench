; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_plan_expand_hypertable.c_init_chunk_exclusion_func.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_plan_expand_hypertable.c_init_chunk_exclusion_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chunk_exclusion_func = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@CHUNK_EXCL_FUNC_NAME = common dso_local global i32 0, align 4
@ts_chunks_arg_types = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_chunk_exclusion_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_chunk_exclusion_func() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @chunk_exclusion_func, align 8
  %3 = load i64, i64* @InvalidOid, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %7 = call i32 @makeString(i32 %6)
  %8 = load i32, i32* @CHUNK_EXCL_FUNC_NAME, align 4
  %9 = call i32 @makeString(i32 %8)
  %10 = call i32* @list_make2(i32 %7, i32 %9)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* @ts_chunks_arg_types, align 4
  %13 = call i32 @lengthof(i32 %12)
  %14 = load i32, i32* @ts_chunks_arg_types, align 4
  %15 = call i64 @LookupFuncName(i32* %11, i32 %13, i32 %14, i32 0)
  store i64 %15, i64* @chunk_exclusion_func, align 8
  br label %16

16:                                               ; preds = %5, %0
  %17 = load i64, i64* @chunk_exclusion_func, align 8
  %18 = load i64, i64* @InvalidOid, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  ret void
}

declare dso_local i32* @list_make2(i32, i32) #1

declare dso_local i32 @makeString(i32) #1

declare dso_local i64 @LookupFuncName(i32*, i32, i32, i32) #1

declare dso_local i32 @lengthof(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
