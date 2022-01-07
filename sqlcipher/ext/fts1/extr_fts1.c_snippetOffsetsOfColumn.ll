; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_snippetOffsetsOfColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_snippetOffsetsOfColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i8*, i32, %struct.TYPE_13__**)*, i32 (%struct.TYPE_13__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }

@FTS1_ROTOR_SZ = common dso_local global i32 0, align 4
@FTS1_ROTOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*, i32, i8*, i32)* @snippetOffsetsOfColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snippetOffsetsOfColumn(%struct.TYPE_17__* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %28, align 4
  %35 = load i32, i32* @FTS1_ROTOR_SZ, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %29, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %30, align 8
  %39 = load i32, i32* @FTS1_ROTOR_SZ, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %31, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %14, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %12, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %11, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_14__*, i8*, i32, %struct.TYPE_13__**)*, i32 (%struct.TYPE_14__*, i8*, i32, %struct.TYPE_13__**)** %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 %56(%struct.TYPE_14__* %57, i8* %58, i32 %59, %struct.TYPE_13__** %13)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %5
  store i32 1, i32* %32, align 4
  br label %233

64:                                               ; preds = %5
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %67, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %16, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @FTS1_ROTOR_SZ, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i32, i32* @FTS1_ROTOR_SZ, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %77, %64
  store i32 0, i32* %22, align 4
  br label %81

81:                                               ; preds = %222, %80
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_13__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i8**, i32*, i32*, i32*, i32*)** %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %87 = call i32 %85(%struct.TYPE_13__* %86, i8** %23, i32* %24, i32* %25, i32* %26, i32* %27)
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %227

91:                                               ; preds = %82
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* %28, align 4
  %94 = load i32, i32* @FTS1_ROTOR_MASK, align 4
  %95 = and i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %38, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32, i32* %26, align 4
  %99 = load i32, i32* %25, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %28, align 4
  %102 = load i32, i32* @FTS1_ROTOR_MASK, align 4
  %103 = and i32 %101, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %41, i64 %104
  store i32 %100, i32* %105, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %219, %91
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %222

110:                                              ; preds = %106
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %33, align 4
  %117 = load i32, i32* %33, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load i32, i32* %33, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %33, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %219

128:                                              ; preds = %123, %119, %110
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %24, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %219

138:                                              ; preds = %128
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %23, align 8
  %146 = load i32, i32* %24, align 4
  %147 = call i64 @memcmp(i32 %144, i8* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  br label %219

150:                                              ; preds = %138
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %18, align 4
  %161 = shl i32 1, %160
  %162 = and i32 %159, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %219

165:                                              ; preds = %158, %150
  %166 = load i32, i32* %18, align 4
  %167 = shl i32 1, %166
  %168 = load i32, i32* %21, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %21, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %17, align 4
  %172 = sub nsw i32 %171, 1
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %183, label %174

174:                                              ; preds = %165
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %218

183:                                              ; preds = %174, %165
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %19, align 4
  br label %191

191:                                              ; preds = %214, %183
  %192 = load i32, i32* %19, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %217

194:                                              ; preds = %191
  %195 = load i32, i32* %28, align 4
  %196 = load i32, i32* %19, align 4
  %197 = sub i32 %195, %196
  %198 = load i32, i32* @FTS1_ROTOR_MASK, align 4
  %199 = and i32 %197, %198
  store i32 %199, i32* %34, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %19, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load i32, i32* %34, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %38, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %34, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %41, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @snippetAppendMatch(i32* %200, i32 %201, i32 %204, i32 %208, i32 %212)
  br label %214

214:                                              ; preds = %194
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %19, align 4
  br label %191

217:                                              ; preds = %191
  br label %218

218:                                              ; preds = %217, %174
  br label %219

219:                                              ; preds = %218, %164, %149, %137, %127
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %18, align 4
  br label %106

222:                                              ; preds = %106
  %223 = load i32, i32* %21, align 4
  %224 = shl i32 %223, 1
  store i32 %224, i32* %22, align 4
  %225 = load i32, i32* %28, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %28, align 4
  br label %81

227:                                              ; preds = %90
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %232 = call i32 %230(%struct.TYPE_13__* %231)
  store i32 0, i32* %32, align 4
  br label %233

233:                                              ; preds = %227, %63
  %234 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %32, align 4
  switch i32 %235, label %237 [
    i32 0, label %236
    i32 1, label %236
  ]

236:                                              ; preds = %233, %233
  ret void

237:                                              ; preds = %233
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @snippetAppendMatch(i32*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
