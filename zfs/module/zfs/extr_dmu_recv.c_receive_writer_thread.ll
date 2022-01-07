; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_receive_writer_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_receive_writer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_writer_arg = type { i64, i32, i32, i32, i32 }
%struct.receive_record_arg = type { i32, %struct.receive_record_arg*, i32*, i32 }

@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @receive_writer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_writer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.receive_writer_arg*, align 8
  %4 = alloca %struct.receive_record_arg*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.receive_writer_arg*
  store %struct.receive_writer_arg* %7, %struct.receive_writer_arg** %3, align 8
  %8 = call i32 (...) @spl_fstrans_mark()
  store i32 %8, i32* %5, align 4
  %9 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %10 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %9, i32 0, i32 4
  %11 = call %struct.receive_record_arg* @bqueue_dequeue(i32* %10)
  store %struct.receive_record_arg* %11, %struct.receive_record_arg** %4, align 8
  br label %12

12:                                               ; preds = %63, %1
  %13 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %14 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %67

18:                                               ; preds = %12
  %19 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %20 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %25 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %26 = call i64 @receive_process_record(%struct.receive_writer_arg* %24, %struct.receive_record_arg* %25)
  %27 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %28 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %60

29:                                               ; preds = %18
  %30 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %31 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %36 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @dmu_return_arcbuf(i32* %37)
  %39 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %40 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %42 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %41, i32 0, i32 1
  store %struct.receive_record_arg* null, %struct.receive_record_arg** %42, align 8
  br label %59

43:                                               ; preds = %29
  %44 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %45 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %44, i32 0, i32 1
  %46 = load %struct.receive_record_arg*, %struct.receive_record_arg** %45, align 8
  %47 = icmp ne %struct.receive_record_arg* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %50 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %49, i32 0, i32 1
  %51 = load %struct.receive_record_arg*, %struct.receive_record_arg** %50, align 8
  %52 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %53 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @kmem_free(%struct.receive_record_arg* %51, i32 %54)
  %56 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %57 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %56, i32 0, i32 1
  store %struct.receive_record_arg* null, %struct.receive_record_arg** %57, align 8
  br label %58

58:                                               ; preds = %48, %43
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %23
  %61 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %62 = call i32 @kmem_free(%struct.receive_record_arg* %61, i32 32)
  br label %63

63:                                               ; preds = %60
  %64 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %65 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %64, i32 0, i32 4
  %66 = call %struct.receive_record_arg* @bqueue_dequeue(i32* %65)
  store %struct.receive_record_arg* %66, %struct.receive_record_arg** %4, align 8
  br label %12

67:                                               ; preds = %12
  %68 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %69 = call i32 @kmem_free(%struct.receive_record_arg* %68, i32 32)
  %70 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %71 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %70, i32 0, i32 1
  %72 = call i32 @mutex_enter(i32* %71)
  %73 = load i32, i32* @B_TRUE, align 4
  %74 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %75 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %77 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %76, i32 0, i32 2
  %78 = call i32 @cv_signal(i32* %77)
  %79 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %80 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %79, i32 0, i32 1
  %81 = call i32 @mutex_exit(i32* %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @spl_fstrans_unmark(i32 %82)
  %84 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local %struct.receive_record_arg* @bqueue_dequeue(i32*) #1

declare dso_local i64 @receive_process_record(%struct.receive_writer_arg*, %struct.receive_record_arg*) #1

declare dso_local i32 @dmu_return_arcbuf(i32*) #1

declare dso_local i32 @kmem_free(%struct.receive_record_arg*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
