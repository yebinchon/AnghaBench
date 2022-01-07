; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_slaves_get.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_slaves_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32 }

@libvlc_media_slave_type_subtitle = common dso_local global i32 0, align 4
@libvlc_media_slave_type_audio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_slaves_get(%struct.TYPE_10__* %0, %struct.TYPE_11__*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__***, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__*** %1, %struct.TYPE_11__**** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__***, %struct.TYPE_11__**** %5, align 8
  %16 = icmp ne %struct.TYPE_11__*** %15, null
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i1 [ false, %2 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  %24 = load %struct.TYPE_11__***, %struct.TYPE_11__**** %5, align 8
  store %struct.TYPE_11__** null, %struct.TYPE_11__*** %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = call i32 @vlc_mutex_lock(i32* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = call i32 @vlc_mutex_unlock(i32* %35)
  store i32 0, i32* %3, align 4
  br label %145

37:                                               ; preds = %17
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.TYPE_11__** @calloc(i32 %38, i32 8)
  store %struct.TYPE_11__** %39, %struct.TYPE_11__*** %8, align 8
  %40 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %41 = icmp eq %struct.TYPE_11__** %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = call i32 @vlc_mutex_unlock(i32* %44)
  store i32 0, i32* %3, align 4
  br label %145

46:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %135, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %138

51:                                               ; preds = %47
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %54, i64 %56
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %10, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 132
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @strlen(i32 %67)
  %69 = add i64 16, %68
  %70 = add i64 %69, 1
  %71 = call %struct.TYPE_11__* @malloc(i64 %70)
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %11, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = icmp eq %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %51
  %75 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @libvlc_media_slaves_release(%struct.TYPE_11__** %75, i32 %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = call i32 @vlc_mutex_unlock(i32* %79)
  store i32 0, i32* %3, align 4
  br label %145

81:                                               ; preds = %51
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %83 = bitcast %struct.TYPE_11__* %82 to i32*
  %84 = bitcast i32* %83 to i8*
  %85 = getelementptr inbounds i8, i8* %84, i64 16
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strcpy(i8* %90, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %106 [
    i32 128, label %98
    i32 129, label %102
  ]

98:                                               ; preds = %81
  %99 = load i32, i32* @libvlc_media_slave_type_subtitle, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %108

102:                                              ; preds = %81
  %103 = load i32, i32* @libvlc_media_slave_type_audio, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %108

106:                                              ; preds = %81
  %107 = call i32 (...) @vlc_assert_unreachable()
  br label %108

108:                                              ; preds = %106, %102, %98
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %127 [
    i32 132, label %112
    i32 131, label %115
    i32 133, label %118
    i32 134, label %121
    i32 130, label %124
  ]

112:                                              ; preds = %108
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 8
  br label %129

115:                                              ; preds = %108
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 8
  br label %129

118:                                              ; preds = %108
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store i32 2, i32* %120, align 8
  br label %129

121:                                              ; preds = %108
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  store i32 3, i32* %123, align 8
  br label %129

124:                                              ; preds = %108
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i32 4, i32* %126, align 8
  br label %129

127:                                              ; preds = %108
  %128 = call i32 (...) @vlc_assert_unreachable()
  br label %129

129:                                              ; preds = %127, %124, %121, %118, %115, %112
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %131 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %131, i64 %133
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %134, align 8
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %47

138:                                              ; preds = %47
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = call i32 @vlc_mutex_unlock(i32* %140)
  %142 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %143 = load %struct.TYPE_11__***, %struct.TYPE_11__**** %5, align 8
  store %struct.TYPE_11__** %142, %struct.TYPE_11__*** %143, align 8
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %138, %74, %42, %33
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_11__** @calloc(i32, i32) #1

declare dso_local %struct.TYPE_11__* @malloc(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @libvlc_media_slaves_release(%struct.TYPE_11__**, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
