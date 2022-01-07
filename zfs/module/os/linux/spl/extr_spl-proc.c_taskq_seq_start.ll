; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-proc.c_taskq_seq_start.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-proc.c_taskq_seq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.seq_file = type { i32 }

@tq_list_sem = common dso_local global i32 0, align 4
@tq_list = common dso_local global %struct.list_head zeroinitializer, align 8
@taskq_t = common dso_local global i32 0, align 4
@tq_taskqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @taskq_seq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @taskq_seq_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i32 @down_read(i32* @tq_list_sem)
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 @taskq_seq_show_headers(%struct.seq_file* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @tq_list, i32 0, i32 0), align 8
  store %struct.list_head* %17, %struct.list_head** %6, align 8
  br label %18

18:                                               ; preds = %29, %16
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.list_head*, %struct.list_head** %6, align 8
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8
  store %struct.list_head* %25, %struct.list_head** %6, align 8
  %26 = load %struct.list_head*, %struct.list_head** %6, align 8
  %27 = icmp eq %struct.list_head* %26, @tq_list
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %35

29:                                               ; preds = %22
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.list_head*, %struct.list_head** %6, align 8
  %32 = load i32, i32* @taskq_t, align 4
  %33 = load i32, i32* @tq_taskqs, align 4
  %34 = call i8* @list_entry(%struct.list_head* %31, i32 %32, i32 %33)
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @taskq_seq_show_headers(%struct.seq_file*) #1

declare dso_local i8* @list_entry(%struct.list_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
