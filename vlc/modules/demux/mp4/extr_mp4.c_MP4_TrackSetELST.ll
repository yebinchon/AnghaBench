; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackSetELST.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackSetELST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32, %struct.TYPE_13__* (i32)*, i64 }
%struct.TYPE_13__ = type { i64, i64*, i64* }

@p_elst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"elst old=%d new=%d\00", align 1
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @MP4_TrackSetELST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MP4_TrackSetELST(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %148

26:                                               ; preds = %3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_13__* (i32)*, %struct.TYPE_13__* (i32)** %28, align 8
  %30 = load i32, i32* @p_elst, align 4
  %31 = call %struct.TYPE_13__* %29(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %148

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_13__* (i32)*, %struct.TYPE_13__* (i32)** %37, align 8
  %39 = load i32, i32* @p_elst, align 4
  %40 = call %struct.TYPE_13__* %38(i32 %39)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @MP4_rescale_qtime(i32 %41, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %87, %35
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = zext i32 %51 to i64
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %60, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp sle i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %57
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp slt i64 %73, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %92

81:                                               ; preds = %72, %57
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %48

92:                                               ; preds = %80, %48
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = zext i32 %95 to i64
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %96, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %92
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %101, %92
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %122
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %136, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %133, %122
  br label %148

148:                                              ; preds = %147, %26, %3
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %149, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %148
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @msg_Warn(%struct.TYPE_11__* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %159)
  %161 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %154, %148
  ret void
}

declare dso_local i64 @MP4_rescale_qtime(i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
