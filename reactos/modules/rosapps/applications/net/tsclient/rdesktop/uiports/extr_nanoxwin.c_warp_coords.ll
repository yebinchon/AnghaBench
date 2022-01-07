; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_warp_coords.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_warp_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@g_clip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32*)* @warp_coords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @warp_coords(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 0), align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 0), align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %14, align 4
  br label %26

25:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 1), align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 1), align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %32, %34
  store i32 %35, i32* %15, align 4
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 0), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 2), align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %51, %53
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 0), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 2), align 4
  %57 = add nsw i32 %55, %56
  %58 = sub nsw i32 %54, %57
  %59 = sub nsw i32 %49, %58
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %47, %37
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 1), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 3), align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %61
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %75, %77
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 1), align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_clip, i32 0, i32 3), align 4
  %81 = add nsw i32 %79, %80
  %82 = sub nsw i32 %78, %81
  %83 = sub nsw i32 %73, %82
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %71, %61
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32*, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %134

100:                                              ; preds = %85
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %134

105:                                              ; preds = %100
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %105
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32*, i32** %12, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %105
  %125 = load i32*, i32** %13, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32*, i32** %13, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %127, %124
  store i32 1, i32* %7, align 4
  br label %134

134:                                              ; preds = %133, %104, %99
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
