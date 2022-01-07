; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_codec.c_CloseDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_codec.c_CloseDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @CloseDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CloseDecoder(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %130

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = call i32 @mmal_port_disable(%struct.TYPE_10__* %30)
  br label %32

32:                                               ; preds = %25, %16, %11
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = call i32 @mmal_port_disable(%struct.TYPE_10__* %47)
  br label %49

49:                                               ; preds = %44, %37, %32
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = call i32 @mmal_port_disable(%struct.TYPE_10__* %64)
  br label %66

66:                                               ; preds = %61, %54, %49
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = call i32 @mmal_component_disable(%struct.TYPE_11__* %81)
  br label %83

83:                                               ; preds = %78, %71, %66
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @mmal_pool_destroy(i64 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @mmal_format_free(i64 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @mmal_pool_destroy(i64 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = icmp ne %struct.TYPE_11__* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = call i32 @mmal_component_release(%struct.TYPE_11__* %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = call i32 @vlc_sem_destroy(i32* %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = call i32 @free(%struct.TYPE_9__* %127)
  %129 = call i32 (...) @bcm_host_deinit()
  br label %130

130:                                              ; preds = %123, %10
  ret void
}

declare dso_local i32 @mmal_port_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @mmal_component_disable(%struct.TYPE_11__*) #1

declare dso_local i32 @mmal_pool_destroy(i64) #1

declare dso_local i32 @mmal_format_free(i64) #1

declare dso_local i32 @mmal_component_release(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @bcm_host_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
