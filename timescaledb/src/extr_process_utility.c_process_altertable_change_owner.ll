; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_altertable_change_owner.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_altertable_change_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@RoleSpec = common dso_local global i32 0, align 4
@process_altertable_change_owner_chunk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @process_altertable_change_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_altertable_change_owner(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RoleSpec, align 4
  %10 = call i32 @IsA(i32 %8, i32 %9)
  %11 = call i32 @Assert(i32 %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = load i32, i32* @process_altertable_change_owner_chunk, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = call i32 @foreach_chunk(%struct.TYPE_12__* %12, i32 %13, %struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call i64 @TS_HYPERTABLE_HAS_COMPRESSION(%struct.TYPE_12__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_12__* @ts_hypertable_get_by_id(i32 %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i32 @list_make1(%struct.TYPE_13__* %28)
  %30 = call i32 @AlterTableInternal(i32 %27, i32 %29, i32 0)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  call void @process_altertable_change_owner(%struct.TYPE_12__* %31, %struct.TYPE_13__* %32)
  br label %33

33:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsA(i32, i32) #1

declare dso_local i32 @foreach_chunk(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @TS_HYPERTABLE_HAS_COMPRESSION(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @ts_hypertable_get_by_id(i32) #1

declare dso_local i32 @AlterTableInternal(i32, i32, i32) #1

declare dso_local i32 @list_make1(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
