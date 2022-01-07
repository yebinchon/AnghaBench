; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_GetInterleaving.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_GetInterleaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64*, i32*)* @MP4_GetInterleaving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MP4_GetInterleaving(%struct.TYPE_8__* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %7, align 8
  %20 = load i64*, i64** %5, align 8
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %6, align 8
  store i32 1, i32* %21, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %60, %3
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %11, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %60

40:                                               ; preds = %28
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = icmp eq %struct.TYPE_7__* %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %49, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %43, %40
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %8, align 8
  br label %59

59:                                               ; preds = %57, %43
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %22

63:                                               ; preds = %22
  br label %64

64:                                               ; preds = %207, %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %209

67:                                               ; preds = %64
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %80, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %130, %67
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %83
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %14, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %130

104:                                              ; preds = %89
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = icmp eq %struct.TYPE_7__* %105, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %116, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %107, %104
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %128, %struct.TYPE_7__** %12, align 8
  br label %129

129:                                              ; preds = %127, %107
  br label %130

130:                                              ; preds = %129, %103
  %131 = load i32, i32* %13, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %83

133:                                              ; preds = %83
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %135 = icmp ne %struct.TYPE_7__* %134, null
  br i1 %135, label %136, label %160

136:                                              ; preds = %133
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ugt i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %136
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = sub i64 %147, 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i64 %151, i64* %159, align 8
  br label %160

160:                                              ; preds = %141, %136, %133
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %163 = icmp ne %struct.TYPE_7__* %161, %162
  br i1 %163, label %164, label %207

164:                                              ; preds = %160
  %165 = load i64, i64* %9, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @MP4_rescale_mtime(i64 %165, i32 %168)
  store i64 %169, i64* %15, align 8
  %170 = load i64, i64* %15, align 8
  %171 = load i64*, i64** %5, align 8
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %170, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %164
  %175 = load i64, i64* %15, align 8
  %176 = load i64*, i64** %5, align 8
  store i64 %175, i64* %176, align 8
  br label %177

177:                                              ; preds = %174, %164
  store i64 0, i64* %9, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %180, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32*, i32** %6, align 8
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %185, %177
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %189 = icmp ne %struct.TYPE_7__* %188, null
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ugt i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %195, %190, %187
  br label %207

207:                                              ; preds = %206, %160
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %208, %struct.TYPE_7__** %8, align 8
  br label %64

209:                                              ; preds = %64
  store i32 0, i32* %16, align 4
  br label %210

210:                                              ; preds = %224, %209
  %211 = load i32, i32* %16, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ult i32 %211, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %210
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = load i32, i32* %16, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  store i64 0, i64* %223, align 8
  br label %224

224:                                              ; preds = %216
  %225 = load i32, i32* %16, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %16, align 4
  br label %210

227:                                              ; preds = %210
  ret void
}

declare dso_local i64 @MP4_rescale_mtime(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
