; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_CloseDeinterlace.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_CloseDeinterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.deint_data* }
%struct.deint_data = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, %struct.deint_data* }
%struct.TYPE_8__ = type { %struct.deint_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @CloseDeinterlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CloseDeinterlace(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.deint_data*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.deint_data*, %struct.deint_data** %12, align 8
  store %struct.deint_data* %13, %struct.deint_data** %5, align 8
  %14 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %15 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.deint_data*, %struct.deint_data** %16, align 8
  %18 = icmp ne %struct.deint_data* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %21 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.deint_data*, %struct.deint_data** %22, align 8
  %24 = call i32 @free(%struct.deint_data* %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %27 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.deint_data*, %struct.deint_data** %28, align 8
  %30 = icmp ne %struct.deint_data* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %38, %31
  %33 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %34 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %40 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.deint_data*, %struct.deint_data** %41, align 8
  %43 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %44 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %42, i64 %48
  %50 = call i32 @picture_Release(%struct.deint_data* byval(%struct.deint_data) align 8 %49)
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %53 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.deint_data*, %struct.deint_data** %54, align 8
  %56 = call i32 @free(%struct.deint_data* %55)
  br label %57

57:                                               ; preds = %51, %25
  %58 = load %struct.deint_data*, %struct.deint_data** %5, align 8
  %59 = call i32 @free(%struct.deint_data* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = call i32 @Close(%struct.TYPE_9__* %60, %struct.TYPE_10__* %61)
  ret void
}

declare dso_local i32 @free(%struct.deint_data*) #1

declare dso_local i32 @picture_Release(%struct.deint_data* byval(%struct.deint_data) align 8) #1

declare dso_local i32 @Close(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
