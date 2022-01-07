; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mem.c_emulate_mem.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mem.c_emulate_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmio_rb_range = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vie = type { i32 }
%struct.vm_guest_paging = type { i32 }

@mmio_rwlock = common dso_local global i32 0, align 4
@mmio_hint = common dso_local global %struct.mmio_rb_range** null, align 8
@mmio_rb_root = common dso_local global i32 0, align 4
@mmio_rb_fallback = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@MEM_F_IMMUTABLE = common dso_local global i32 0, align 4
@mem_read = common dso_local global i32 0, align 4
@mem_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emulate_mem(i32 %0, i64 %1, %struct.vie* %2, %struct.vm_guest_paging* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vie*, align 8
  %9 = alloca %struct.vm_guest_paging*, align 8
  %10 = alloca %struct.mmio_rb_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.vie* %2, %struct.vie** %8, align 8
  store %struct.vm_guest_paging* %3, %struct.vm_guest_paging** %9, align 8
  %13 = call i32 @pthread_rwlock_rdlock(i32* @mmio_rwlock)
  %14 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %14, i64 %16
  %18 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %17, align 8
  %19 = icmp ne %struct.mmio_rb_range* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %22, i64 %24
  %26 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %25, align 8
  %27 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %21, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %32, i64 %34
  %36 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %35, align 8
  %37 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %31, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %41, i64 %43
  %45 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %44, align 8
  store %struct.mmio_rb_range* %45, %struct.mmio_rb_range** %10, align 8
  br label %47

46:                                               ; preds = %30, %20, %4
  store %struct.mmio_rb_range* null, %struct.mmio_rb_range** %10, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %10, align 8
  %49 = icmp eq %struct.mmio_rb_range* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @mmio_rb_lookup(i32* @mmio_rb_root, i64 %51, %struct.mmio_rb_range** %10)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %10, align 8
  %56 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %56, i64 %58
  store %struct.mmio_rb_range* %55, %struct.mmio_rb_range** %59, align 8
  br label %68

60:                                               ; preds = %50
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @mmio_rb_lookup(i32* @mmio_rb_fallback, i64 %61, %struct.mmio_rb_range** %10)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 @pthread_rwlock_unlock(i32* @mmio_rwlock)
  %66 = load i32, i32* @ESRCH, align 4
  store i32 %66, i32* %5, align 4
  br label %100

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %10, align 8
  %71 = icmp ne %struct.mmio_rb_range* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %10, align 8
  %75 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MEM_F_IMMUTABLE, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = call i32 @pthread_rwlock_unlock(i32* @mmio_rwlock)
  br label %84

84:                                               ; preds = %82, %69
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.vie*, %struct.vie** %8, align 8
  %88 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %9, align 8
  %89 = load i32, i32* @mem_read, align 4
  %90 = load i32, i32* @mem_write, align 4
  %91 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %10, align 8
  %92 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %91, i32 0, i32 2
  %93 = call i32 @xh_vm_emulate_instruction(i32 %85, i64 %86, %struct.vie* %87, %struct.vm_guest_paging* %88, i32 %89, i32 %90, %struct.TYPE_2__* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %84
  %97 = call i32 @pthread_rwlock_unlock(i32* @mmio_rwlock)
  br label %98

98:                                               ; preds = %96, %84
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %64
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @pthread_rwlock_rdlock(i32*) #1

declare dso_local i64 @mmio_rb_lookup(i32*, i64, %struct.mmio_rb_range**) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xh_vm_emulate_instruction(i32, i64, %struct.vie*, %struct.vm_guest_paging*, i32, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
