; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_sect_border.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_sect_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_13__* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@MAX_SECT = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_generate_sect_border(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %5, align 4
  br label %239

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %10, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 131
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %52

48:                                               ; preds = %27
  %49 = load i32, i32* %12, align 4
  %50 = sdiv i32 %49, 2
  %51 = call i32 @floor(i32 %50)
  br label %52

52:                                               ; preds = %48, %47
  %53 = phi i32 [ 0, %47 ], [ %51, %48 ]
  store i32 %53, i32* %13, align 4
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 128
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %57, %58
  br label %65

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = sdiv i32 %61, 2
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %62, %63
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i32 [ %59, %56 ], [ %64, %60 ]
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call i8* @malloc(i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_13__*
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = icmp ne %struct.TYPE_13__* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %65
  %86 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %86, i32* %5, align 4
  br label %239

87:                                               ; preds = %65
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %234, %87
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %237

95:                                               ; preds = %89
  store i64 0, i64* %16, align 8
  %96 = load i32, i32* @MAX_SECT, align 4
  %97 = zext i32 %96 to i64
  %98 = call i8* @llvm.stacksave()
  store i8* %98, i8** %17, align 8
  %99 = alloca i32, i64 %97, align 16
  store i64 %97, i64* %18, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %19, align 4
  %103 = load i64, i64* %9, align 8
  switch i64 %103, label %128 [
    i64 128, label %104
    i64 131, label %104
    i64 129, label %118
    i64 130, label %127
  ]

104:                                              ; preds = %95, %95
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @puzzle_diagonal_limit(%struct.TYPE_11__* %105, i32 %106, i32 0, i64 %107)
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @puzzle_diagonal_limit(%struct.TYPE_11__* %110, i32 %111, i32 1, i64 %112)
  %114 = sub nsw i32 %113, 1
  %115 = sub nsw i32 %109, %114
  %116 = load i64, i64* %16, align 8
  %117 = getelementptr inbounds i32, i32* %99, i64 %116
  store i32 %115, i32* %117, align 4
  br label %135

118:                                              ; preds = %95
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @puzzle_diagonal_limit(%struct.TYPE_11__* %120, i32 %121, i32 0, i64 %122)
  %124 = sub nsw i32 %119, %123
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds i32, i32* %99, i64 %125
  store i32 %124, i32* %126, align 4
  br label %135

127:                                              ; preds = %95
  br label %128

128:                                              ; preds = %95, %127
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @puzzle_diagonal_limit(%struct.TYPE_11__* %129, i32 %130, i32 1, i64 %131)
  %133 = load i64, i64* %16, align 8
  %134 = getelementptr inbounds i32, i32* %99, i64 %133
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %118, %104
  %136 = load i64, i64* %16, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %16, align 8
  %138 = load i64, i64* %16, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i64 %138, i64* %145, align 8
  %146 = load i64, i64* %16, align 8
  %147 = mul i64 4, %146
  %148 = trunc i64 %147 to i32
  %149 = call i8* @malloc(i32 %148)
  %150 = bitcast i8* %149 to %struct.TYPE_13__*
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  store %struct.TYPE_13__* %150, %struct.TYPE_13__** %157, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = icmp ne %struct.TYPE_13__* %165, null
  br i1 %166, label %193, label %167

167:                                              ; preds = %135
  store i64 0, i64* %20, align 8
  br label %168

168:                                              ; preds = %182, %167
  %169 = load i64, i64* %20, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp ult i64 %169, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = load i64, i64* %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = call i32 @free(%struct.TYPE_13__* %180)
  br label %182

182:                                              ; preds = %173
  %183 = load i64, i64* %20, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %20, align 8
  br label %168

185:                                              ; preds = %168
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = call i32 @free(%struct.TYPE_13__* %188)
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %191, align 8
  %192 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %192, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %230

193:                                              ; preds = %135
  store i64 0, i64* %22, align 8
  br label %194

194:                                              ; preds = %226, %193
  %195 = load i64, i64* %22, align 8
  %196 = load i64, i64* %16, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %229

198:                                              ; preds = %194
  %199 = load i64, i64* %22, align 8
  %200 = urem i64 %199, 2
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load i64, i64* %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  store i64 %200, i64* %211, align 8
  %212 = load i64, i64* %22, align 8
  %213 = getelementptr inbounds i32, i32* %99, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = load i64, i64* %22, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  store i32 %214, i32* %225, align 8
  br label %226

226:                                              ; preds = %198
  %227 = load i64, i64* %22, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %22, align 8
  br label %194

229:                                              ; preds = %194
  store i32 0, i32* %21, align 4
  br label %230

230:                                              ; preds = %229, %185
  %231 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %21, align 4
  switch i32 %232, label %241 [
    i32 0, label %233
    i32 1, label %239
  ]

233:                                              ; preds = %230
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %15, align 4
  br label %89

237:                                              ; preds = %89
  %238 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %237, %230, %85, %25
  %240 = load i32, i32* %5, align 4
  ret i32 %240

241:                                              ; preds = %230
  unreachable
}

declare dso_local i32 @floor(i32) #1

declare dso_local i8* @malloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @puzzle_diagonal_limit(%struct.TYPE_11__*, i32, i32, i64) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
