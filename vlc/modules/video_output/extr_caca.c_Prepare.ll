; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_caca.c_Prepare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_caca.c_Prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"could not create libcaca dither object\00", align 1
@CUCUL_COLOR_DEFAULT = common dso_local global i32 0, align 4
@CUCUL_COLOR_BLACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_18__*, i32*, i32*)* @Prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Prepare(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = call i32 @Manage(%struct.TYPE_16__* %11)
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @VLC_UNUSED(i32* %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @cucul_create_dither(i32 32, i32 %26, i32 %30, i32 %36, i32 %40, i32 %44, i32 %48, i32 0)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %22
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = call i32 @msg_Err(%struct.TYPE_16__* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %125

59:                                               ; preds = %22
  br label %60

60:                                               ; preds = %59, %4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CUCUL_COLOR_DEFAULT, align 4
  %65 = load i32, i32* @CUCUL_COLOR_BLACK, align 4
  %66 = call i32 @cucul_set_color_ansi(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cucul_clear_canvas(i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %74, %79
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %84, %89
  %91 = add nsw i32 %80, %90
  store i32 %91, i32* %10, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @cucul_dither_bitmap(i32 %94, i32 %98, i32 %102, i32 %106, i32 %110, i64 %113, i32* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @VLC_UNUSED(i32* %123)
  br label %125

125:                                              ; preds = %60, %56
  ret void
}

declare dso_local i32 @Manage(%struct.TYPE_16__*) #1

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i64 @cucul_create_dither(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @cucul_set_color_ansi(i32, i32, i32) #1

declare dso_local i32 @cucul_clear_canvas(i32) #1

declare dso_local i32 @cucul_dither_bitmap(i32, i32, i32, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
