; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_tray.c_render_tray.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_tray.c_render_tray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.swaybar_tray*, %struct.swaybar_config* }
%struct.swaybar_tray = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.swaybar_config = type { i32, i64 }

@cmp_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @render_tray(i32* %0, %struct.swaybar_output* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swaybar_output*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.swaybar_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.swaybar_tray*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %6, align 8
  store double* %2, double** %7, align 8
  %13 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %14 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.swaybar_config*, %struct.swaybar_config** %16, align 8
  store %struct.swaybar_config* %17, %struct.swaybar_config** %8, align 8
  %18 = load %struct.swaybar_config*, %struct.swaybar_config** %8, align 8
  %19 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.swaybar_config*, %struct.swaybar_config** %8, align 8
  %24 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @cmp_output, align 4
  %27 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %28 = call i32 @list_seq_find(i64 %25, i32 %26, %struct.swaybar_output* %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %91

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %34 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %38 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.swaybar_config*, %struct.swaybar_config** %8, align 8
  %42 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 2, %43
  %45 = icmp sle i32 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load %struct.swaybar_config*, %struct.swaybar_config** %8, align 8
  %48 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %91

52:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  %53 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %54 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.swaybar_tray*, %struct.swaybar_tray** %56, align 8
  store %struct.swaybar_tray* %57, %struct.swaybar_tray** %10, align 8
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %86, %52
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.swaybar_tray*, %struct.swaybar_tray** %10, align 8
  %61 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %59, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %58
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %69 = load double*, double** %7, align 8
  %70 = load %struct.swaybar_tray*, %struct.swaybar_tray** %10, align 8
  %71 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @render_sni(i32* %67, %struct.swaybar_output* %68, double* %69, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %66
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %58

89:                                               ; preds = %58
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %46, %30
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @list_seq_find(i64, i32, %struct.swaybar_output*) #1

declare dso_local i32 @render_sni(i32*, %struct.swaybar_output*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
