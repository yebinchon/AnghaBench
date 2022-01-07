; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_Deinterlace_UpdateHistory.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_Deinterlace_UpdateHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deint_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.deint_data*, i32*)* @Deinterlace_UpdateHistory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Deinterlace_UpdateHistory(%struct.deint_data* %0, i32* %1) #0 {
  %3 = alloca %struct.deint_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.deint_data* %0, %struct.deint_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %6 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %10 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %16 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @picture_Release(i32* %19)
  %21 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %22 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32**, i32*** %23, align 8
  %25 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %26 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %31 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memmove(i32** %24, i32** %29, i32 %37)
  br label %39

39:                                               ; preds = %14, %2
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %42 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32**, i32*** %43, align 8
  %45 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %46 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32*, i32** %44, i64 %50
  store i32* %40, i32** %51, align 8
  %52 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %53 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32*, i32** %55, align 8
  ret i32* %56
}

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @memmove(i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
