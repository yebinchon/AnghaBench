; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_reconst_pq_tail_func.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_reconst_pq_tail_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reconst_pq_struct = type { i32*, i32*, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @vdev_raidz_reconst_pq_tail_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_reconst_pq_tail_func(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.reconst_pq_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.reconst_pq_struct*
  store %struct.reconst_pq_struct* %11, %struct.reconst_pq_struct** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %48, %3
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %14
  %20 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %21 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %25 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %23, %27
  %29 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %30 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vdev_raidz_exp2(i32 %28, i32 %31)
  %33 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %34 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %38 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %36, %40
  %42 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %43 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @vdev_raidz_exp2(i32 %41, i32 %44)
  %46 = xor i32 %32, %45
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %19
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %52 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %52, align 8
  %55 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %56 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %56, align 8
  %59 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %60 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %60, align 8
  %63 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %7, align 8
  %64 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %64, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %8, align 8
  br label %14

69:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @vdev_raidz_exp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
