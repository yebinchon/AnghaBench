; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_base.c_unregister_nls.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_base.c_unregister_nls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { %struct.nls_table* }

@tables = common dso_local global %struct.nls_table* null, align 8
@nls_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_nls(%struct.nls_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nls_table*, align 8
  %4 = alloca %struct.nls_table**, align 8
  store %struct.nls_table* %0, %struct.nls_table** %3, align 8
  store %struct.nls_table** @tables, %struct.nls_table*** %4, align 8
  %5 = call i32 @spin_lock(i32* @nls_lock)
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %8 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %9 = icmp ne %struct.nls_table* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %12 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %13 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %14 = icmp eq %struct.nls_table* %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %17 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %16, i32 0, i32 0
  %18 = load %struct.nls_table*, %struct.nls_table** %17, align 8
  %19 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  store %struct.nls_table* %18, %struct.nls_table** %19, align 8
  %20 = call i32 @spin_unlock(i32* @nls_lock)
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %10
  %22 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %23 = load %struct.nls_table*, %struct.nls_table** %22, align 8
  %24 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %23, i32 0, i32 0
  store %struct.nls_table** %24, %struct.nls_table*** %4, align 8
  br label %6

25:                                               ; preds = %6
  %26 = call i32 @spin_unlock(i32* @nls_lock)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
