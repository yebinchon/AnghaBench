; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }

@MERGE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, i32)* @docListMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListMerge(i32* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @MERGE_COUNT, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca %struct.TYPE_11__, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = call i8* @dlrDocData(%struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = call i64 @dlrAllDataBytes(%struct.TYPE_12__* %32)
  %34 = call i32 @dataBufferAppend(i32* %29, i8* %31, i64 %33)
  store i32 1, i32* %16, align 4
  br label %218

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MERGE_COUNT, align 4
  %38 = icmp sle i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %81, %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 16
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = call i64 @dlrAllDataBytes(%struct.TYPE_12__* %75)
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %45
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %41

84:                                               ; preds = %41
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @dataBufferExpand(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %92, %84
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %10, align 4
  %91 = icmp sgt i32 %89, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call i32 @orderedDLReaderReorder(%struct.TYPE_11__* %95, i32 %98)
  br label %88

100:                                              ; preds = %88
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @dlwInit(i32* %9, i64 %104, i32* %105)
  br label %107

107:                                              ; preds = %206, %100
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = call i32 @dlrAtEnd(%struct.TYPE_12__* %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br i1 %113, label %114, label %207

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = call i64 @dlrDocid(%struct.TYPE_12__* %117)
  store i64 %118, i64* %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = call i8* @dlrDocData(%struct.TYPE_12__* %121)
  %123 = load i8*, i8** %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = icmp eq i8* %122, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %114
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = call i32 @dlrDocDataBytes(%struct.TYPE_12__* %131)
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %13, align 4
  br label %154

135:                                              ; preds = %114
  %136 = load i8*, i8** %12, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i8*, i8** %12, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call i32 @dlwAppend(i32* %9, i8* %139, i32 %140, i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %138, %135
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = call i8* @dlrDocData(%struct.TYPE_12__* %147)
  store i8* %148, i8** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = call i32 @dlrDocDataBytes(%struct.TYPE_12__* %151)
  store i32 %152, i32* %13, align 4
  %153 = load i64, i64* %17, align 8
  store i64 %153, i64* %14, align 8
  br label %154

154:                                              ; preds = %144, %128
  %155 = load i64, i64* %17, align 8
  store i64 %155, i64* %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = call i32 @dlrStep(%struct.TYPE_12__* %158)
  store i32 1, i32* %10, align 4
  br label %160

160:                                              ; preds = %190, %154
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = call i32 @dlrAtEnd(%struct.TYPE_12__* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %164
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = call i64 @dlrDocid(%struct.TYPE_12__* %177)
  %179 = load i64, i64* %17, align 8
  %180 = icmp eq i64 %178, %179
  br label %181

181:                                              ; preds = %172, %164, %160
  %182 = phi i1 [ false, %164 ], [ false, %160 ], [ %180, %172 ]
  br i1 %182, label %183, label %193

183:                                              ; preds = %181
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = call i32 @dlrStep(%struct.TYPE_12__* %188)
  br label %190

190:                                              ; preds = %183
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %160

193:                                              ; preds = %181
  br label %194

194:                                              ; preds = %198, %193
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %10, align 4
  %197 = icmp sgt i32 %195, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %200
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %10, align 4
  %204 = sub nsw i32 %202, %203
  %205 = call i32 @orderedDLReaderReorder(%struct.TYPE_11__* %201, i32 %204)
  br label %194

206:                                              ; preds = %194
  br label %107

207:                                              ; preds = %107
  %208 = load i32, i32* %13, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i8*, i8** %12, align 8
  %212 = load i32, i32* %13, align 4
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* %15, align 8
  %215 = call i32 @dlwAppend(i32* %9, i8* %211, i32 %212, i64 %213, i64 %214)
  br label %216

216:                                              ; preds = %210, %207
  %217 = call i32 @dlwDestroy(i32* %9)
  store i32 0, i32* %16, align 4
  br label %218

218:                                              ; preds = %216, %28
  %219 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %16, align 4
  switch i32 %220, label %222 [
    i32 0, label %221
    i32 1, label %221
  ]

221:                                              ; preds = %218, %218
  ret void

222:                                              ; preds = %218
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dataBufferAppend(i32*, i8*, i64) #2

declare dso_local i8* @dlrDocData(%struct.TYPE_12__*) #2

declare dso_local i64 @dlrAllDataBytes(%struct.TYPE_12__*) #2

declare dso_local i32 @dataBufferExpand(i32*, i32) #2

declare dso_local i32 @orderedDLReaderReorder(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @dlwInit(i32*, i64, i32*) #2

declare dso_local i32 @dlrAtEnd(%struct.TYPE_12__*) #2

declare dso_local i64 @dlrDocid(%struct.TYPE_12__*) #2

declare dso_local i32 @dlrDocDataBytes(%struct.TYPE_12__*) #2

declare dso_local i32 @dlwAppend(i32*, i8*, i32, i64, i64) #2

declare dso_local i32 @dlrStep(%struct.TYPE_12__*) #2

declare dso_local i32 @dlwDestroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
