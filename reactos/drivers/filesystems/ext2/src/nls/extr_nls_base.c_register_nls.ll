; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/nls/extr_nls_base.c_register_nls.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/nls/extr_nls_base.c_register_nls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { %struct.nls_table* }

@tables = common dso_local global %struct.nls_table* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@nls_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_nls(%struct.nls_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nls_table*, align 8
  %4 = alloca %struct.nls_table**, align 8
  store %struct.nls_table* %0, %struct.nls_table** %3, align 8
  store %struct.nls_table** @tables, %struct.nls_table*** %4, align 8
  %5 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %6 = icmp ne %struct.nls_table* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %12 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %11, i32 0, i32 0
  %13 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %14 = icmp ne %struct.nls_table* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %10
  %19 = call i32 @spin_lock(i32* @nls_lock)
  br label %20

20:                                               ; preds = %33, %18
  %21 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %22 = load %struct.nls_table*, %struct.nls_table** %21, align 8
  %23 = icmp ne %struct.nls_table* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %26 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %27 = load %struct.nls_table*, %struct.nls_table** %26, align 8
  %28 = icmp eq %struct.nls_table* %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = call i32 @spin_unlock(i32* @nls_lock)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %24
  %34 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %35 = load %struct.nls_table*, %struct.nls_table** %34, align 8
  %36 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %35, i32 0, i32 0
  store %struct.nls_table** %36, %struct.nls_table*** %4, align 8
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.nls_table*, %struct.nls_table** @tables, align 8
  %39 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %40 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %39, i32 0, i32 0
  store %struct.nls_table* %38, %struct.nls_table** %40, align 8
  %41 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  store %struct.nls_table* %41, %struct.nls_table** @tables, align 8
  %42 = call i32 @spin_unlock(i32* @nls_lock)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %29, %15, %7
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
