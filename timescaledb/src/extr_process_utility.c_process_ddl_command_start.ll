; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_ddl_command_start.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_ddl_command_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @process_ddl_command_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ddl_command_start(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @nodeTag(i32 %6)
  switch i32 %7, label %62 [
    i32 144, label %8
    i32 130, label %11
    i32 143, label %14
    i32 132, label %17
    i32 135, label %20
    i32 140, label %23
    i32 131, label %26
    i32 139, label %29
    i32 138, label %32
    i32 136, label %35
    i32 137, label %38
    i32 141, label %41
    i32 129, label %44
    i32 133, label %47
    i32 142, label %50
    i32 128, label %53
    i32 134, label %56
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = call i32 @process_alterobjectschema(%struct.TYPE_20__* %9)
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = call i32 @process_truncate(%struct.TYPE_20__* %12)
  store i32 %13, i32* %3, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %16 = call i32 @process_altertable_start(%struct.TYPE_20__* %15)
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = call i32 @process_rename(%struct.TYPE_20__* %18)
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %22 = call i32 @process_index_start(%struct.TYPE_20__* %21)
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %25 = call i32 @process_create_trigger_start(%struct.TYPE_20__* %24)
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %28 = call i32 @process_create_rule_start(%struct.TYPE_20__* %27)
  br label %63

29:                                               ; preds = %1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %31 = call i32 @process_drop(%struct.TYPE_20__* %30)
  br label %63

32:                                               ; preds = %1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %34 = call i32 @process_drop_tablespace(%struct.TYPE_20__* %33)
  br label %63

35:                                               ; preds = %1
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %37 = call i32 @process_grant_and_revoke(%struct.TYPE_20__* %36)
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %1
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %40 = call i32 @process_grant_and_revoke_role(%struct.TYPE_20__* %39)
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %1
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %43 = call i32 @process_copy(%struct.TYPE_20__* %42)
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %1
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %46 = call i32 @process_vacuum(%struct.TYPE_20__* %45)
  store i32 %46, i32* %3, align 4
  br label %63

47:                                               ; preds = %1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %49 = call i32 @process_reindex(%struct.TYPE_20__* %48)
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %1
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %52 = call i32 @process_cluster_start(%struct.TYPE_20__* %51)
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %1
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %55 = call i32 @process_viewstmt(%struct.TYPE_20__* %54)
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %1
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @process_refresh_mat_view_start(%struct.TYPE_20__* %57, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %1
  br label %63

63:                                               ; preds = %62, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @nodeTag(i32) #1

declare dso_local i32 @process_alterobjectschema(%struct.TYPE_20__*) #1

declare dso_local i32 @process_truncate(%struct.TYPE_20__*) #1

declare dso_local i32 @process_altertable_start(%struct.TYPE_20__*) #1

declare dso_local i32 @process_rename(%struct.TYPE_20__*) #1

declare dso_local i32 @process_index_start(%struct.TYPE_20__*) #1

declare dso_local i32 @process_create_trigger_start(%struct.TYPE_20__*) #1

declare dso_local i32 @process_create_rule_start(%struct.TYPE_20__*) #1

declare dso_local i32 @process_drop(%struct.TYPE_20__*) #1

declare dso_local i32 @process_drop_tablespace(%struct.TYPE_20__*) #1

declare dso_local i32 @process_grant_and_revoke(%struct.TYPE_20__*) #1

declare dso_local i32 @process_grant_and_revoke_role(%struct.TYPE_20__*) #1

declare dso_local i32 @process_copy(%struct.TYPE_20__*) #1

declare dso_local i32 @process_vacuum(%struct.TYPE_20__*) #1

declare dso_local i32 @process_reindex(%struct.TYPE_20__*) #1

declare dso_local i32 @process_cluster_start(%struct.TYPE_20__*) #1

declare dso_local i32 @process_viewstmt(%struct.TYPE_20__*) #1

declare dso_local i32 @process_refresh_mat_view_start(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
