; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_CreateTitle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_CreateTitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__**, i32, i32*, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.demux_sys* }
%struct.demux_sys = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Mock Title %zu\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Mock Chapter %zu-%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i64)* @CreateTitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @CreateTitle(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.demux_sys*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.demux_sys*, %struct.demux_sys** %10, align 8
  store %struct.demux_sys* %11, %struct.demux_sys** %6, align 8
  %12 = call %struct.TYPE_9__* (...) @vlc_input_title_New()
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %118

16:                                               ; preds = %2
  %17 = load %struct.demux_sys*, %struct.demux_sys** %6, align 8
  %18 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.demux_sys*, %struct.demux_sys** %6, align 8
  %23 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %16
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = bitcast i32** %28 to i32*
  %30 = load i64, i64* %5, align 8
  %31 = call i32 (i32*, i8*, i64, ...) @asprintf(i32* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = call i32 @vlc_input_title_Delete(%struct.TYPE_9__* %36)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %118

38:                                               ; preds = %26, %16
  %39 = load %struct.demux_sys*, %struct.demux_sys** %6, align 8
  %40 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_11__** @vlc_alloc(i64 %41, i32 8)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store %struct.TYPE_11__** %42, %struct.TYPE_11__*** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %46, align 8
  %48 = icmp ne %struct.TYPE_11__** %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = call i32 @vlc_input_title_Delete(%struct.TYPE_9__* %50)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %118

52:                                               ; preds = %38
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %113, %52
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.demux_sys*, %struct.demux_sys** %6, align 8
  %56 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %116

59:                                               ; preds = %53
  %60 = call %struct.TYPE_11__* (...) @vlc_seekpoint_New()
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %63, i64 %64
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %68, i64 %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = icmp ne %struct.TYPE_11__* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %59
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = call i32 @vlc_input_title_Delete(%struct.TYPE_9__* %74)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %118

76:                                               ; preds = %59
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.demux_sys*, %struct.demux_sys** %6, align 8
  %82 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %76
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %88, i64 %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 (i32*, i8*, i64, ...) @asprintf(i32* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %93, i64 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = call i32 @vlc_input_title_Delete(%struct.TYPE_9__* %98)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %118

100:                                              ; preds = %85, %76
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.demux_sys*, %struct.demux_sys** %6, align 8
  %103 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = mul i64 %101, %104
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %108, i64 %109
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  store i64 %105, i64* %112, align 8
  br label %113

113:                                              ; preds = %100
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %8, align 8
  br label %53

116:                                              ; preds = %53
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %3, align 8
  br label %118

118:                                              ; preds = %116, %97, %73, %49, %33, %15
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %119
}

declare dso_local %struct.TYPE_9__* @vlc_input_title_New(...) #1

declare dso_local i32 @asprintf(i32*, i8*, i64, ...) #1

declare dso_local i32 @vlc_input_title_Delete(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_11__** @vlc_alloc(i64, i32) #1

declare dso_local %struct.TYPE_11__* @vlc_seekpoint_New(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
