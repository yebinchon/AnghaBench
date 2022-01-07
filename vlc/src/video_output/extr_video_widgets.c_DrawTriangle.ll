; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_DrawTriangle.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_DrawTriangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }

@STYLE_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32)* @DrawTriangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawTriangle(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %15, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %19, align 4
  br label %47

47:                                               ; preds = %185, %7
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %188

51:                                               ; preds = %47
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @STYLE_FILLED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %123

58:                                               ; preds = %51
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %20, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @__MAX(i32 %64, i32 %65)
  br label %73

67:                                               ; preds = %58
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @__MIN(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i32 [ %66, %61 ], [ %72, %67 ]
  store i32 %74, i32* %21, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = load i32, i32* @STYLE_FILLED, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %21, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  br label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %21, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @DrawRect(%struct.TYPE_8__* %75, i32 %76, i32 %77, i32 %85, i32 %86, i32 %94, i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = load i32, i32* @STYLE_FILLED, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %21, align 4
  br label %106

104:                                              ; preds = %93
  %105 = load i32, i32* %11, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %20, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %11, align 4
  br label %117

115:                                              ; preds = %106
  %116 = load i32, i32* %21, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %20, align 4
  %121 = sub nsw i32 %119, %120
  %122 = call i32 @DrawRect(%struct.TYPE_8__* %97, i32 %98, i32 %99, i32 %107, i32 %110, i32 %118, i32 %121)
  br label %184

123:                                              ; preds = %51
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %19, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %125, i64 %131
  store i32 %124, i32* %132, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load i32, i32* %20, align 4
  %140 = sub nsw i32 0, %139
  br label %143

141:                                              ; preds = %123
  %142 = load i32, i32* %20, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %140, %138 ], [ %142, %141 ]
  %145 = add nsw i32 %135, %144
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %19, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %134, i64 %150
  store i32 %133, i32* %151, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %20, align 4
  %158 = sub nsw i32 %156, %157
  %159 = mul nsw i32 %155, %158
  %160 = add nsw i32 %154, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %153, i64 %161
  store i32 %152, i32* %162, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %18, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %143
  %169 = load i32, i32* %20, align 4
  %170 = sub nsw i32 0, %169
  br label %173

171:                                              ; preds = %143
  %172 = load i32, i32* %20, align 4
  br label %173

173:                                              ; preds = %171, %168
  %174 = phi i32 [ %170, %168 ], [ %172, %171 ]
  %175 = add nsw i32 %165, %174
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %20, align 4
  %179 = sub nsw i32 %177, %178
  %180 = mul nsw i32 %176, %179
  %181 = add nsw i32 %175, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %164, i64 %182
  store i32 %163, i32* %183, align 4
  br label %184

184:                                              ; preds = %173, %117
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %19, align 4
  br label %47

188:                                              ; preds = %47
  ret void
}

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @DrawRect(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
