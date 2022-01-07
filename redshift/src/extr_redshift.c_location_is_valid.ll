; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_location_is_valid.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_location_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@MIN_LAT = common dso_local global i64 0, align 8
@MAX_LAT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Latitude must be between %.1f and %.1f.\0A\00", align 1
@MIN_LON = common dso_local global i64 0, align 8
@MAX_LON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Longitude must be between %.1f and %.1f.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @location_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @location_is_valid(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MIN_LAT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_LAT, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @stderr, align 4
  %17 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @MIN_LAT, align 8
  %19 = load i64, i64* @MAX_LAT, align 8
  %20 = call i32 @fprintf(i32 %16, i8* %17, i64 %18, i64 %19)
  store i32 0, i32* %2, align 4
  br label %40

21:                                               ; preds = %9
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MIN_LON, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_LON, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27, %21
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @MIN_LON, align 8
  %37 = load i64, i64* @MAX_LON, align 8
  %38 = call i32 @fprintf(i32 %34, i8* %35, i64 %36, i64 %37)
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %33, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
