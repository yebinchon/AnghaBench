; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_insert_state.c_get_adjusted_projection_info_onconflictupdate.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_insert_state.c_get_adjusted_projection_info_onconflictupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@INNER_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, i32*, i32*, i32, i32, i32, i32, i32*)* @get_adjusted_projection_info_onconflictupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @get_adjusted_projection_info_onconflictupdate(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** @NIL, align 8
  %20 = icmp ne i32* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32*, i32** %10, align 8
  %24 = call i32* @copyObject(i32* %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i64 @map_variable_attnos_compat(i32* %25, i32 %26, i32 0, i32* %27, i32 %28, i32 %29, i32* %17)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* @INNER_VAR, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @map_variable_attnos_compat(i32* %32, i32 %33, i32 0, i32* %34, i32 %35, i32 %36, i32* %17)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = call i32* @adjust_hypertable_tlist(i32* %39, i32* %40)
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = call i32 @get_projection_info_slot_compat(%struct.TYPE_6__* %46)
  %48 = load i32, i32* %15, align 4
  %49 = call %struct.TYPE_6__* @ExecBuildProjectionInfoCompat(i32* %42, i32 %45, i32 %47, i32* null, i32 %48)
  ret %struct.TYPE_6__* %49
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @copyObject(i32*) #1

declare dso_local i64 @map_variable_attnos_compat(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32* @adjust_hypertable_tlist(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @ExecBuildProjectionInfoCompat(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @get_projection_info_slot_compat(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
