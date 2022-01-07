; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmoving_avg.h_mva_add.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmoving_avg.h_mva_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moving_average_s = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@MVA_PACKETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moving_average_s*, i8*, i8*)* @mva_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mva_add(%struct.moving_average_s* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.moving_average_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.moving_average_s* %0, %struct.moving_average_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.moving_average_s*, %struct.moving_average_s** %4, align 8
  %9 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.moving_average_s*, %struct.moving_average_s** %4, align 8
  %12 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MVA_PACKETS, align 8
  %15 = urem i64 %13, %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i8* %7, i8** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.moving_average_s*, %struct.moving_average_s** %4, align 8
  %20 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.moving_average_s*, %struct.moving_average_s** %4, align 8
  %23 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MVA_PACKETS, align 8
  %26 = urem i64 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i8* %18, i8** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.moving_average_s*, %struct.moving_average_s** %4, align 8
  %31 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.moving_average_s*, %struct.moving_average_s** %4, align 8
  %34 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MVA_PACKETS, align 8
  %37 = urem i64 %35, %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %29, i8** %39, align 8
  %40 = load %struct.moving_average_s*, %struct.moving_average_s** %4, align 8
  %41 = getelementptr inbounds %struct.moving_average_s, %struct.moving_average_s* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
