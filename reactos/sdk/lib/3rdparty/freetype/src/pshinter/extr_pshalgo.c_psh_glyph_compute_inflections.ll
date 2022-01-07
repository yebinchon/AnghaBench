; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pshinter/extr_pshalgo.c_psh_glyph_compute_inflections.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pshinter/extr_pshalgo.c_psh_glyph_compute_inflections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @psh_glyph_compute_inflections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_glyph_compute_inflections(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %195, %1
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %198

22:                                               ; preds = %16
  store i32 0, i32* %15, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %195

32:                                               ; preds = %22
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %4, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %5, align 8
  br label %41

41:                                               ; preds = %70, %32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = icmp eq %struct.TYPE_7__* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %194

49:                                               ; preds = %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  store i64 %56, i64* %9, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %49
  %65 = load i64, i64* %9, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* %10, align 8
  %69 = icmp eq i64 %68, 0
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  br i1 %71, label %41, label %72

72:                                               ; preds = %70
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %7, align 8
  br label %74

74:                                               ; preds = %113, %72
  br label %75

75:                                               ; preds = %105, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %5, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %7, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = icmp eq %struct.TYPE_7__* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %194

84:                                               ; preds = %75
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  store i64 %91, i64* %11, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %84
  %100 = load i64, i64* %11, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i64, i64* %12, align 8
  %104 = icmp eq i64 %103, 0
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi i1 [ false, %99 ], [ %104, %102 ]
  br i1 %106, label %75, label %107

107:                                              ; preds = %105
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @psh_corner_orientation(i64 %108, i64 %109, i64 %110, i64 %111)
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %74, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %4, align 8
  %118 = load i64, i64* %11, align 8
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %10, align 8
  br label %120

120:                                              ; preds = %189, %116
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %8, align 8
  br label %122

122:                                              ; preds = %161, %120
  br label %123

123:                                              ; preds = %153, %122
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %6, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %8, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = icmp eq %struct.TYPE_7__* %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i32 1, i32* %15, align 4
  br label %132

132:                                              ; preds = %131, %123
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  store i64 %139, i64* %11, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  store i64 %146, i64* %12, align 8
  br label %147

147:                                              ; preds = %132
  %148 = load i64, i64* %11, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i64, i64* %12, align 8
  %152 = icmp eq i64 %151, 0
  br label %153

153:                                              ; preds = %150, %147
  %154 = phi i1 [ false, %147 ], [ %152, %150 ]
  br i1 %154, label %123, label %155

155:                                              ; preds = %153
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %12, align 8
  %160 = call i32 @psh_corner_orientation(i64 %156, i64 %157, i64 %158, i64 %159)
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %14, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %122, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = xor i32 %165, %166
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %176, %169
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = call i32 @psh_point_set_inflex(%struct.TYPE_7__* %171)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  store %struct.TYPE_7__* %175, %struct.TYPE_7__** %5, align 8
  br label %176

176:                                              ; preds = %170
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %179 = icmp ne %struct.TYPE_7__* %177, %178
  br i1 %179, label %170, label %180

180:                                              ; preds = %176
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = call i32 @psh_point_set_inflex(%struct.TYPE_7__* %181)
  br label %183

183:                                              ; preds = %180, %164
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %184, %struct.TYPE_7__** %5, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %185, %struct.TYPE_7__** %6, align 8
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %13, align 4
  %187 = load i64, i64* %11, align 8
  store i64 %187, i64* %9, align 8
  %188 = load i64, i64* %12, align 8
  store i64 %188, i64* %10, align 8
  br label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  br i1 %192, label %120, label %193

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %193, %83, %48
  br label %195

195:                                              ; preds = %194, %31
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %3, align 8
  br label %16

198:                                              ; preds = %16
  ret void
}

declare dso_local i32 @psh_corner_orientation(i64, i64, i64, i64) #1

declare dso_local i32 @psh_point_set_inflex(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
