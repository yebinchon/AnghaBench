; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_Deinterlace_UpdateFilterParams.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_Deinterlace_UpdateFilterParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deint_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@VA_DEINTERLACING_BOTTOM_FIELD_FIRST = common dso_local global i32 0, align 4
@VA_DEINTERLACING_BOTTOM_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @Deinterlace_UpdateFilterParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Deinterlace_UpdateFilterParams(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.deint_data*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.deint_data*
  store %struct.deint_data* %8, %struct.deint_data** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %12 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @VA_DEINTERLACING_BOTTOM_FIELD_FIRST, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %28 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %31 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = icmp eq i32 %29, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %23
  %43 = load i32, i32* @VA_DEINTERLACING_BOTTOM_FIELD, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
