; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_motiondetect.c_Draw.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_motiondetect.c_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [26 x i8] c"Counted %d moving shapes.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32)* @Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Draw(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %21

21:                                               ; preds = %167, %4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %170

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %167

38:                                               ; preds = %27
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %38
  br label %167

70:                                               ; preds = %38
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 %74, %75
  %77 = mul nsw i32 %73, %76
  %78 = icmp slt i32 %77, 16
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %167

80:                                               ; preds = %70
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %100, %80
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %7, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %90, i64 %98
  store i32 255, i32* %99, align 4
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %85

103:                                              ; preds = %85
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %121, %103
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %8, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %111, i64 %119
  store i32 255, i32* %120, align 4
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %106

124:                                              ; preds = %106
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %142, %124
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %7, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %8, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %132, i64 %140
  store i32 255, i32* %141, align 4
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %127

145:                                              ; preds = %127
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %163, %145
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %7, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %8, align 4
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %153, i64 %161
  store i32 255, i32* %162, align 4
  br label %163

163:                                              ; preds = %152
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %148

166:                                              ; preds = %148
  br label %167

167:                                              ; preds = %166, %79, %69, %37
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %21

170:                                              ; preds = %21
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @msg_Dbg(%struct.TYPE_5__* %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %172)
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
