; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/sha2/extr_sha2.c_SHA2Update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/sha2/extr_sha2.c_SHA2Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32* }

@SHA256_HMAC_GEN_MECH_INFO_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA2Update(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %216

21:                                               ; preds = %3
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @SHA256_HMAC_GEN_MECH_INFO_TYPE, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  store i64 64, i64* %10, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 3
  %33 = and i32 %32, 63
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = shl i64 %35, 3
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, %36
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %6, align 8
  %48 = shl i64 %47, 3
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %25
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %25
  %59 = load i64, i64* %6, align 8
  %60 = lshr i64 %59, 29
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, %60
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  br label %115

70:                                               ; preds = %21
  store i64 128, i64* %10, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 3
  %78 = and i32 %77, 127
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %6, align 8
  %81 = shl i64 %80, 3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, %81
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %6, align 8
  %93 = shl i64 %92, 3
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %70
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %70
  %104 = load i64, i64* %6, align 8
  %105 = lshr i64 %104, 29
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, %105
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  br label %115

115:                                              ; preds = %103, %58
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* %8, align 8
  %118 = sub nsw i64 %116, %117
  store i64 %118, i64* %9, align 8
  store i64 0, i64* %7, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp uge i64 %119, %120
  br i1 %121, label %122, label %202

122:                                              ; preds = %115
  %123 = load i64, i64* %8, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %122
  %126 = load i32*, i32** %11, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @bcopy(i32* %126, i32* %132, i64 %133)
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* @SHA256_HMAC_GEN_MECH_INFO_TYPE, align 8
  %137 = icmp sle i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %125
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @SHA256Transform(%struct.TYPE_11__* %139, i32* %143)
  br label %152

145:                                              ; preds = %125
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @SHA512Transform(%struct.TYPE_11__* %146, i32* %150)
  br label %152

152:                                              ; preds = %145, %138
  %153 = load i64, i64* %9, align 8
  store i64 %153, i64* %7, align 8
  br label %154

154:                                              ; preds = %152, %122
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @SHA256_HMAC_GEN_MECH_INFO_TYPE, align 8
  %157 = icmp sle i64 %155, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %172, %158
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %10, align 8
  %162 = add nsw i64 %160, %161
  %163 = sub nsw i64 %162, 1
  %164 = load i64, i64* %6, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = load i64, i64* %7, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = call i32 @SHA256Transform(%struct.TYPE_11__* %167, i32* %170)
  br label %172

172:                                              ; preds = %166
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* %7, align 8
  %175 = add nsw i64 %174, %173
  store i64 %175, i64* %7, align 8
  br label %159

176:                                              ; preds = %159
  br label %196

177:                                              ; preds = %154
  br label %178

178:                                              ; preds = %191, %177
  %179 = load i64, i64* %7, align 8
  %180 = load i64, i64* %10, align 8
  %181 = add nsw i64 %179, %180
  %182 = sub nsw i64 %181, 1
  %183 = load i64, i64* %6, align 8
  %184 = icmp ult i64 %182, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %178
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = load i64, i64* %7, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = call i32 @SHA512Transform(%struct.TYPE_11__* %186, i32* %189)
  br label %191

191:                                              ; preds = %185
  %192 = load i64, i64* %10, align 8
  %193 = load i64, i64* %7, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %7, align 8
  br label %178

195:                                              ; preds = %178
  br label %196

196:                                              ; preds = %195, %176
  %197 = load i64, i64* %6, align 8
  %198 = load i64, i64* %7, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %216

201:                                              ; preds = %196
  store i64 0, i64* %8, align 8
  br label %202

202:                                              ; preds = %201, %115
  %203 = load i32*, i32** %11, align 8
  %204 = load i64, i64* %7, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* %8, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i64, i64* %6, align 8
  %213 = load i64, i64* %7, align 8
  %214 = sub i64 %212, %213
  %215 = call i32 @bcopy(i32* %205, i32* %211, i64 %214)
  br label %216

216:                                              ; preds = %202, %200, %20
  ret void
}

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @SHA256Transform(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SHA512Transform(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
