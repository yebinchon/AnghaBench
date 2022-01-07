; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mem.c_register_mem_int.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mem.c_register_mem_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmio_rb_tree = type { i32 }
%struct.mem_range = type { i64, i64 }
%struct.mmio_rb_range = type { i64, i64, %struct.mem_range }

@mmio_rwlock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmio_rb_tree*, %struct.mem_range*)* @register_mem_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_mem_int(%struct.mmio_rb_tree* %0, %struct.mem_range* %1) #0 {
  %3 = alloca %struct.mmio_rb_tree*, align 8
  %4 = alloca %struct.mem_range*, align 8
  %5 = alloca %struct.mmio_rb_range*, align 8
  %6 = alloca %struct.mmio_rb_range*, align 8
  %7 = alloca i32, align 4
  store %struct.mmio_rb_tree* %0, %struct.mmio_rb_tree** %3, align 8
  store %struct.mem_range* %1, %struct.mem_range** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call %struct.mmio_rb_range* @malloc(i32 32)
  store %struct.mmio_rb_range* %8, %struct.mmio_rb_range** %6, align 8
  %9 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %6, align 8
  %10 = icmp ne %struct.mmio_rb_range* %9, null
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %6, align 8
  %13 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %12, i32 0, i32 2
  %14 = load %struct.mem_range*, %struct.mem_range** %4, align 8
  %15 = bitcast %struct.mem_range* %13 to i8*
  %16 = bitcast %struct.mem_range* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load %struct.mem_range*, %struct.mem_range** %4, align 8
  %18 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %6, align 8
  %21 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.mem_range*, %struct.mem_range** %4, align 8
  %23 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mem_range*, %struct.mem_range** %4, align 8
  %26 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = sub nsw i64 %28, 1
  %30 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %6, align 8
  %31 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = call i32 @pthread_rwlock_wrlock(i32* @mmio_rwlock)
  %33 = load %struct.mmio_rb_tree*, %struct.mmio_rb_tree** %3, align 8
  %34 = load %struct.mem_range*, %struct.mem_range** %4, align 8
  %35 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @mmio_rb_lookup(%struct.mmio_rb_tree* %33, i64 %36, %struct.mmio_rb_range** %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %11
  %40 = load %struct.mmio_rb_tree*, %struct.mmio_rb_tree** %3, align 8
  %41 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %6, align 8
  %42 = call i32 @mmio_rb_add(%struct.mmio_rb_tree* %40, %struct.mmio_rb_range* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = call i32 @pthread_rwlock_unlock(i32* @mmio_rwlock)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %6, align 8
  %49 = call i32 @free(%struct.mmio_rb_range* %48)
  br label %50

50:                                               ; preds = %47, %43
  br label %53

51:                                               ; preds = %2
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.mmio_rb_range* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_rwlock_wrlock(i32*) #1

declare dso_local i64 @mmio_rb_lookup(%struct.mmio_rb_tree*, i64, %struct.mmio_rb_range**) #1

declare dso_local i32 @mmio_rb_add(%struct.mmio_rb_tree*, %struct.mmio_rb_range*) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @free(%struct.mmio_rb_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
