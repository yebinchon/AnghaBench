; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-error.c_dump_mapping_table.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-error.c_dump_mapping_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"----- errno mappings ------\0A\00", align 1
@__start_SYSTEMD_BUS_ERROR_MAP = common dso_local global %struct.TYPE_6__* null, align 8
@__stop_SYSTEMD_BUS_ERROR_MAP = common dso_local global %struct.TYPE_6__* null, align 8
@BUS_ERROR_MAP_END_MARKER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%s -> %i/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"---------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_mapping_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mapping_table() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @__start_SYSTEMD_BUS_ERROR_MAP, align 8
  %4 = call %struct.TYPE_6__* @ALIGN_TO_PTR(%struct.TYPE_6__* %3, i32 8)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %1, align 8
  br label %5

5:                                                ; preds = %19, %15, %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @__stop_SYSTEMD_BUS_ERROR_MAP, align 8
  %8 = icmp ult %struct.TYPE_6__* %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BUS_ERROR_MAP_END_MARKER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 1
  %18 = call %struct.TYPE_6__* @ALIGN_TO_PTR(%struct.TYPE_6__* %17, i32 8)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %1, align 8
  br label %5

19:                                               ; preds = %9
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @strna(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @errno_to_name(i64 %29)
  %31 = call i8* @strna(i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %23, i64 %26, i8* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 1
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %1, align 8
  br label %5

35:                                               ; preds = %5
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @ALIGN_TO_PTR(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @strna(i32) #1

declare dso_local i32 @errno_to_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
