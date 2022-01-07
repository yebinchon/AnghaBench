; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBoxContainerChildrenIndexed.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBoxContainerChildrenIndexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i64*, i64*, i32)* @MP4_ReadBoxContainerChildrenIndexed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_ReadBoxContainerChildrenIndexed(i32* %0, %struct.TYPE_5__* %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [8 x i32], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27, %5
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @vlc_stream_Tell(i32* %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 16, i32 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %34, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = icmp sgt i64 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %176

50:                                               ; preds = %32, %27
  store i64 0, i64* %12, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  store i64 %57, i64* %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %153, %50
  store i32 0, i32* %16, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @vlc_stream_Tell(i32* %64)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 16, i32 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %66, %71
  %73 = load i64, i64* %13, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %156

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %58
  store i64 0, i64* %18, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  %83 = call i32 @vlc_stream_Read(i32* %81, i32* %82, i32 8)
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %156

86:                                               ; preds = %80
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 4
  %88 = call i64 @GetDWBE(i32* %87)
  store i64 %88, i64* %18, align 8
  br label %89

89:                                               ; preds = %86, %77
  store i32 0, i32* %15, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = load i64*, i64** %10, align 8
  %93 = call %struct.TYPE_5__* @MP4_ReadBoxRestricted(i32* %90, %struct.TYPE_5__* %91, i32* null, i64* %92, i32* %15)
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %14, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %95, label %125

95:                                               ; preds = %89
  store i32 1, i32* %16, align 4
  %96 = load i64, i64* %18, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  store i64 0, i64* %20, align 8
  br label %99

99:                                               ; preds = %121, %95
  %100 = load i64*, i64** %9, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %20, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi i1 [ false, %99 ], [ %107, %102 ]
  br i1 %109, label %110, label %124

110:                                              ; preds = %108
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = load i64, i64* %20, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store i32 1, i32* %6, align 4
  br label %176

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %20, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %20, align 8
  br label %99

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124, %89
  %126 = load i32*, i32** %7, align 8
  %127 = call i64 @vlc_stream_Tell(i32* %126)
  store i64 %127, i64* %21, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %125
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %13, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i64, i64* %21, align 8
  %138 = load i64, i64* %13, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  br label %156

142:                                              ; preds = %132, %125
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %144 = icmp ne %struct.TYPE_5__* %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %21, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %156

150:                                              ; preds = %145
  %151 = load i64, i64* %21, align 8
  store i64 %151, i64* %12, align 8
  store i32 1, i32* %16, align 4
  br label %152

152:                                              ; preds = %150, %142
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %58, label %156

156:                                              ; preds = %153, %149, %136, %85, %75
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %175, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load i32*, i32** %7, align 8
  %166 = call i64 @vlc_stream_Tell(i32* %165)
  store i64 %166, i64* %22, align 8
  %167 = load i64, i64* %22, align 8
  %168 = load i64, i64* %13, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32*, i32** %7, align 8
  %172 = load i64, i64* %13, align 8
  %173 = call i32 @MP4_Seek(i32* %171, i64 %172)
  br label %174

174:                                              ; preds = %170, %164
  br label %175

175:                                              ; preds = %174, %159, %156
  store i32 1, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %119, %49
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i32) #1

declare dso_local i64 @GetDWBE(i32*) #1

declare dso_local %struct.TYPE_5__* @MP4_ReadBoxRestricted(i32*, %struct.TYPE_5__*, i32*, i64*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP4_Seek(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
