; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_onexit.c_zfs_onexit_cb_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_onexit.c_zfs_onexit_cb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_onexit_cb_data(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @zfs_onexit_minor_to_state(i32 %12, %struct.TYPE_6__** %8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @mutex_enter(i32* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_7__* @zfs_onexit_find_cb(%struct.TYPE_6__* %22, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %9, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  br label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @ENOENT, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @mutex_exit(i32* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @zfs_onexit_minor_to_state(i32, %struct.TYPE_6__**) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_7__* @zfs_onexit_find_cb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
