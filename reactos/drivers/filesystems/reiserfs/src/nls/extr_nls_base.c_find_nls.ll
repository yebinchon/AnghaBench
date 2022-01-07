; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_base.c_find_nls.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_base.c_find_nls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32, i32, %struct.nls_table* }

@nls_lock = common dso_local global i32 0, align 4
@tables = common dso_local global %struct.nls_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nls_table* (i8*)* @find_nls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nls_table* @find_nls(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nls_table*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @spin_lock(i32* @nls_lock)
  %5 = load %struct.nls_table*, %struct.nls_table** @tables, align 8
  store %struct.nls_table* %5, %struct.nls_table** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %8 = icmp ne %struct.nls_table* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %11 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @_stricmp(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %22

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %20 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %19, i32 0, i32 2
  %21 = load %struct.nls_table*, %struct.nls_table** %20, align 8
  store %struct.nls_table* %21, %struct.nls_table** %3, align 8
  br label %6

22:                                               ; preds = %16, %6
  %23 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %24 = icmp ne %struct.nls_table* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %27 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @try_inc_mod_count(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store %struct.nls_table* null, %struct.nls_table** %3, align 8
  br label %32

32:                                               ; preds = %31, %25, %22
  %33 = call i32 @spin_unlock(i32* @nls_lock)
  %34 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  ret %struct.nls_table* %34
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_stricmp(i32, i8*) #1

declare dso_local i32 @try_inc_mod_count(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
