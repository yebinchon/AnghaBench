; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_toxav.c_toxav_iterate.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_toxav.c_toxav_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_12__, i64, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@msi_CapRAudio = common dso_local global i32 0, align 4
@msi_CapSAudio = common dso_local global i32 0, align 4
@msi_CapRVideo = common dso_local global i32 0, align 4
@msi_CapSVideo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toxav_iterate(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pthread_mutex_lock(i32 %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %14 = icmp eq %struct.TYPE_15__** %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pthread_mutex_unlock(i32 %18)
  br label %182

20:                                               ; preds = %1
  %21 = call i64 (...) @current_time_monotonic()
  store i64 %21, i64* %3, align 8
  store i64 500, i64* %4, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %24, i64 %27
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %5, align 8
  br label %30

30:                                               ; preds = %130, %20
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = icmp ne %struct.TYPE_15__* %31, null
  br i1 %32, label %33, label %134

33:                                               ; preds = %30
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %129

38:                                               ; preds = %33
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pthread_mutex_lock(i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pthread_mutex_unlock(i32 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = call i32 @ac_iterate(%struct.TYPE_11__* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = call i32 @vc_iterate(%struct.TYPE_17__* %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @msi_CapRAudio, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %38
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @msi_CapSAudio, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @MIN(i32 %80, i64 %81)
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %74, %65, %38
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @msi_CapRVideo, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %83
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @msi_CapSVideo, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %4, align 8
  %109 = call i64 @MIN(i32 %107, i64 %108)
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %101, %92, %83
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %6, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @pthread_mutex_unlock(i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @pthread_mutex_lock(i32 %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call %struct.TYPE_15__* @call_get(%struct.TYPE_16__* %122, i64 %123)
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = icmp ne %struct.TYPE_15__* %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %110
  br label %134

128:                                              ; preds = %110
  br label %129

129:                                              ; preds = %128, %33
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 6
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  store %struct.TYPE_15__* %133, %struct.TYPE_15__** %5, align 8
  br label %30

134:                                              ; preds = %127, %30
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @pthread_mutex_unlock(i32 %137)
  %139 = load i64, i64* %4, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %151

145:                                              ; preds = %134
  %146 = load i64, i64* %4, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  br label %151

151:                                              ; preds = %145, %144
  %152 = phi i64 [ 0, %144 ], [ %150, %145 ]
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 4
  store i64 %152, i64* %154, align 8
  %155 = call i64 (...) @current_time_monotonic()
  %156 = load i64, i64* %3, align 8
  %157 = sub nsw i64 %155, %156
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %169, label %182

169:                                              ; preds = %151
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sdiv i32 %172, 3
  %174 = add nsw i32 %173, 5
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  store i32 0, i32* %179, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  store i32 0, i32* %181, align 8
  br label %182

182:                                              ; preds = %15, %169, %151
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local i64 @current_time_monotonic(...) #1

declare dso_local i32 @ac_iterate(%struct.TYPE_11__*) #1

declare dso_local i32 @vc_iterate(%struct.TYPE_17__*) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local %struct.TYPE_15__* @call_get(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
