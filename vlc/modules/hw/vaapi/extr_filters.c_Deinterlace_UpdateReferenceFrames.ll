; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_Deinterlace_UpdateReferenceFrames.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_Deinterlace_UpdateReferenceFrames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deint_data = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i8** }
%struct.TYPE_4__ = type { i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @Deinterlace_UpdateReferenceFrames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Deinterlace_UpdateReferenceFrames(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.deint_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.deint_data*
  store %struct.deint_data* %9, %struct.deint_data** %3, align 8
  %10 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %11 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %47, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %19 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %25 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %32 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @vlc_vaapi_PicGetSurface(i32 %38)
  %40 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %41 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %39, i8** %46, align 8
  br label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %16

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %53 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %89, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %61 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %58
  %66 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %67 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %6, align 4
  %72 = sub i32 %70, %71
  store i32 %72, i32* %7, align 4
  %73 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %74 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @vlc_vaapi_PicGetSurface(i32 %80)
  %82 = load %struct.deint_data*, %struct.deint_data** %3, align 8
  %83 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %81, i8** %88, align 8
  br label %89

89:                                               ; preds = %65
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %58

92:                                               ; preds = %58
  br label %93

93:                                               ; preds = %92, %51
  ret void
}

declare dso_local i8* @vlc_vaapi_PicGetSurface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
