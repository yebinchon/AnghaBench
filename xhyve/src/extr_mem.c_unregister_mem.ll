; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mem.c_unregister_mem.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mem.c_unregister_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmio_rb_range = type { %struct.mem_range }
%struct.mem_range = type { i64, i64, i64, i32 }

@mmio_rwlock = common dso_local global i32 0, align 4
@mmio_rb_root = common dso_local global i32 0, align 4
@MEM_F_IMMUTABLE = common dso_local global i32 0, align 4
@mmio_rb_tree = common dso_local global i32 0, align 4
@VM_MAXCPU = common dso_local global i32 0, align 4
@mmio_hint = common dso_local global %struct.mmio_rb_range** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_mem(%struct.mem_range* %0) #0 {
  %2 = alloca %struct.mem_range*, align 8
  %3 = alloca %struct.mem_range*, align 8
  %4 = alloca %struct.mmio_rb_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_range* %0, %struct.mem_range** %2, align 8
  store %struct.mmio_rb_range* null, %struct.mmio_rb_range** %4, align 8
  %7 = call i32 @pthread_rwlock_wrlock(i32* @mmio_rwlock)
  %8 = load %struct.mem_range*, %struct.mem_range** %2, align 8
  %9 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @mmio_rb_lookup(i32* @mmio_rb_root, i64 %10, %struct.mmio_rb_range** %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %1
  %15 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %16 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %15, i32 0, i32 0
  store %struct.mem_range* %16, %struct.mem_range** %3, align 8
  %17 = load %struct.mem_range*, %struct.mem_range** %3, align 8
  %18 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mem_range*, %struct.mem_range** %2, align 8
  %21 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.mem_range*, %struct.mem_range** %3, align 8
  %27 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mem_range*, %struct.mem_range** %2, align 8
  %30 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %14
  %34 = load %struct.mem_range*, %struct.mem_range** %3, align 8
  %35 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mem_range*, %struct.mem_range** %2, align 8
  %38 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br label %41

41:                                               ; preds = %33, %14
  %42 = phi i1 [ false, %14 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.mem_range*, %struct.mem_range** %3, align 8
  %46 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MEM_F_IMMUTABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @mmio_rb_tree, align 4
  %54 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %55 = call i32 @RB_REMOVE(i32 %53, i32* @mmio_rb_root, %struct.mmio_rb_range* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %74, %41
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @VM_MAXCPU, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %61, i64 %63
  %65 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %64, align 8
  %66 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %67 = icmp eq %struct.mmio_rb_range* %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** @mmio_hint, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mmio_rb_range*, %struct.mmio_rb_range** %69, i64 %71
  store %struct.mmio_rb_range* null, %struct.mmio_rb_range** %72, align 8
  br label %73

73:                                               ; preds = %68, %60
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %56

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %1
  %79 = call i32 @pthread_rwlock_unlock(i32* @mmio_rwlock)
  %80 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %81 = icmp ne %struct.mmio_rb_range* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %4, align 8
  %84 = call i32 @free(%struct.mmio_rb_range* %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @pthread_rwlock_wrlock(i32*) #1

declare dso_local i32 @mmio_rb_lookup(i32*, i64, %struct.mmio_rb_range**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.mmio_rb_range*) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @free(%struct.mmio_rb_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
