; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_redact_list_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_redact_list_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redact_list_thread_arg = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.send_range = type { i32 }
%struct.redact_list_cb_arg = type { i32, i32, i32*, i32*, i32 }

@redact_list_cb = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @redact_list_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redact_list_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.redact_list_thread_arg*, align 8
  %4 = alloca %struct.send_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.redact_list_cb_arg, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.redact_list_thread_arg*
  store %struct.redact_list_thread_arg* %9, %struct.redact_list_thread_arg** %3, align 8
  %10 = call i32 (...) @spl_fstrans_mark()
  store i32 %10, i32* %5, align 4
  %11 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %12 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %1
  %16 = bitcast %struct.redact_list_cb_arg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %18 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.redact_list_cb_arg, %struct.redact_list_cb_arg* %6, i32 0, i32 3
  store i32* %18, i32** %19, align 8
  %20 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %21 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.redact_list_cb_arg, %struct.redact_list_cb_arg* %6, i32 0, i32 2
  store i32* %21, i32** %22, align 8
  %23 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %24 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.redact_list_cb_arg, %struct.redact_list_cb_arg* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %28 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.redact_list_cb_arg, %struct.redact_list_cb_arg* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %32 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %35 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %34, i32 0, i32 2
  %36 = load i32, i32* @redact_list_cb, align 4
  %37 = call i32 @dsl_redaction_list_traverse(i32* %33, i32* %35, i32 %36, %struct.redact_list_cb_arg* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EINTR, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %15
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %44 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %15
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* @DATA, align 4
  %48 = load i32, i32* @B_TRUE, align 4
  %49 = call %struct.send_range* @range_alloc(i32 %47, i32 0, i32 0, i32 0, i32 %48)
  store %struct.send_range* %49, %struct.send_range** %4, align 8
  %50 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %3, align 8
  %51 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %50, i32 0, i32 1
  %52 = load %struct.send_range*, %struct.send_range** %4, align 8
  %53 = call i32 @bqueue_enqueue_flush(i32* %51, %struct.send_range* %52, i32 4)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @spl_fstrans_unmark(i32 %54)
  ret void
}

declare dso_local i32 @spl_fstrans_mark(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dsl_redaction_list_traverse(i32*, i32*, i32, %struct.redact_list_cb_arg*) #1

declare dso_local %struct.send_range* @range_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bqueue_enqueue_flush(i32*, %struct.send_range*, i32) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
