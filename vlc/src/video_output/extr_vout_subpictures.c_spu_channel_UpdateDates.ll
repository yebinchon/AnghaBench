; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_channel_UpdateDates.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_channel_UpdateDates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_channel = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spu_channel*, i8*)* @spu_channel_UpdateDates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spu_channel_UpdateDates(%struct.spu_channel* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.spu_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.spu_channel* %0, %struct.spu_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %12 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %122

17:                                               ; preds = %2
  %18 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %19 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8** @vlc_alloc(i64 %21, i32 16)
  store i8** %22, i8*** %6, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %122

26:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %30 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %36 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = call i32 @assert(%struct.TYPE_5__* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = mul i64 %47, 2
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = mul i64 %54, 2
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  store i8* %52, i8** %57, align 8
  br label %58

58:                                               ; preds = %34
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %27

61:                                               ; preds = %27
  %62 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %63 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %68 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i8**, i8*** %6, align 8
  %72 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %73 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 %75, 2
  %77 = trunc i64 %76 to i32
  %78 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %79 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vlc_clock_ConvertArrayToSystem(i64 %69, i8* %70, i8** %71, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %66, %61
  store i64 0, i64* %9, align 8
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %86 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %84, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %83
  %91 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %92 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %95
  store %struct.TYPE_5__* %96, %struct.TYPE_5__** %10, align 8
  %97 = load i8**, i8*** %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = mul i64 %98, 2
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i8**, i8*** %6, align 8
  %105 = load i64, i64* %9, align 8
  %106 = mul i64 %105, 2
  %107 = add i64 %106, 1
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %90
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %9, align 8
  br label %83

115:                                              ; preds = %83
  %116 = load i8**, i8*** %6, align 8
  %117 = call i32 @free(i8** %116)
  %118 = load %struct.spu_channel*, %struct.spu_channel** %4, align 8
  %119 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %115, %25, %16
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i8** @vlc_alloc(i64, i32) #1

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_clock_ConvertArrayToSystem(i64, i8*, i8**, i32, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
