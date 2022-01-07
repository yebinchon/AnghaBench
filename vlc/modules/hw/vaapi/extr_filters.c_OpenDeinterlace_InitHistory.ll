; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenDeinterlace_InitHistory.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenDeinterlace_InitHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.deint_data = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*)* @OpenDeinterlace_InitHistory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDeinterlace_InitHistory(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.deint_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.deint_data*
  store %struct.deint_data* %11, %struct.deint_data** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %18, 1
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @calloc(i32 %22, i32 8)
  %24 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %25 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i64 %23, i64* %26, align 8
  %27 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %28 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %2
  %35 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %36 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %43 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i64 %41, i64* %44, align 8
  %45 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %46 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %50 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sub i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %34
  %56 = load i32, i32* %9, align 4
  %57 = sub i32 %56, 1
  %58 = call i64 @vlc_alloc(i32 %57, i32 4)
  %59 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %60 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %63 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %68, i32* %3, align 4
  br label %90

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %34
  %71 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %72 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %79 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %83 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.deint_data*, %struct.deint_data** %6, align 8
  %87 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %70, %67, %32
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @vlc_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
