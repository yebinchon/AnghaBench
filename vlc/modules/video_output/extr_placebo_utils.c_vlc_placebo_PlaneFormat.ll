; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_placebo_utils.c_vlc_placebo_PlaneFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_placebo_utils.c_vlc_placebo_PlaneFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pl_plane_data = type { i32, i32 }
%struct.fmt_desc = type { i32, %struct.plane_desc* }
%struct.plane_desc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_placebo_PlaneFormat(%struct.TYPE_3__* %0, %struct.pl_plane_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pl_plane_data*, align 8
  %6 = alloca %struct.fmt_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.plane_desc*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pl_plane_data* %1, %struct.pl_plane_data** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fmt_desc* @FindDesc(i32 %11)
  store %struct.fmt_desc* %12, %struct.fmt_desc** %6, align 8
  %13 = load %struct.fmt_desc*, %struct.fmt_desc** %6, align 8
  %14 = icmp ne %struct.fmt_desc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fmt_desc*, %struct.fmt_desc** %6, align 8
  %21 = load %struct.pl_plane_data*, %struct.pl_plane_data** %5, align 8
  %22 = call i32 @FillDesc(i32 %19, %struct.fmt_desc* %20, %struct.pl_plane_data* %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %70, %16
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.fmt_desc*, %struct.fmt_desc** %6, align 8
  %26 = getelementptr inbounds %struct.fmt_desc, %struct.fmt_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %23
  %30 = load %struct.fmt_desc*, %struct.fmt_desc** %6, align 8
  %31 = getelementptr inbounds %struct.fmt_desc, %struct.fmt_desc* %30, i32 0, i32 1
  %32 = load %struct.plane_desc*, %struct.plane_desc** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.plane_desc, %struct.plane_desc* %32, i64 %34
  store %struct.plane_desc* %35, %struct.plane_desc** %8, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.plane_desc*, %struct.plane_desc** %8, align 8
  %40 = getelementptr inbounds %struct.plane_desc, %struct.plane_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.plane_desc*, %struct.plane_desc** %8, align 8
  %45 = getelementptr inbounds %struct.plane_desc, %struct.plane_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %43, %46
  %48 = load %struct.pl_plane_data*, %struct.pl_plane_data** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.plane_desc*, %struct.plane_desc** %8, align 8
  %57 = getelementptr inbounds %struct.plane_desc, %struct.plane_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.plane_desc*, %struct.plane_desc** %8, align 8
  %62 = getelementptr inbounds %struct.plane_desc, %struct.plane_desc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %60, %63
  %65 = load %struct.pl_plane_data*, %struct.pl_plane_data** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %65, i64 %67
  %69 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %29
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %23

73:                                               ; preds = %23
  %74 = load %struct.fmt_desc*, %struct.fmt_desc** %6, align 8
  %75 = getelementptr inbounds %struct.fmt_desc, %struct.fmt_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.fmt_desc* @FindDesc(i32) #1

declare dso_local i32 @FillDesc(i32, %struct.fmt_desc*, %struct.pl_plane_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
