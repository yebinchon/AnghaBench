; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer2.c_II_step_one.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer2.c_II_step_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.al_table* }
%struct.al_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_5__*)* @II_step_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @II_step_one(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.al_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [64 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load %struct.al_table*, %struct.al_table** %34, align 8
  store %struct.al_table* %35, %struct.al_table** %11, align 8
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %15, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %127

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %62, %39
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load %struct.al_table*, %struct.al_table** %11, align 8
  %46 = getelementptr inbounds %struct.al_table, %struct.al_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i64 @getbits(%struct.TYPE_5__* %48, i32 %49)
  %51 = trunc i64 %50 to i8
  %52 = sext i8 %51 to i32
  %53 = load i32*, i32** %15, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %15, align 8
  store i32 %52, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i64 @getbits(%struct.TYPE_5__* %55, i32 %56)
  %58 = trunc i64 %57 to i8
  %59 = sext i8 %58 to i32
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  br label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %17, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.al_table*, %struct.al_table** %11, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.al_table, %struct.al_table* %67, i64 %68
  store %struct.al_table* %69, %struct.al_table** %11, align 8
  br label %41

70:                                               ; preds = %41
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %95, %70
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load %struct.al_table*, %struct.al_table** %11, align 8
  %79 = getelementptr inbounds %struct.al_table, %struct.al_table* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %17, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i64 @getbits(%struct.TYPE_5__* %81, i32 %82)
  %84 = trunc i64 %83 to i8
  %85 = sext i8 %84 to i32
  %86 = load i32*, i32** %15, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32* %94, i32** %15, align 8
  br label %95

95:                                               ; preds = %77
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %17, align 4
  %99 = shl i32 1, %98
  %100 = load %struct.al_table*, %struct.al_table** %11, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds %struct.al_table, %struct.al_table* %100, i64 %101
  store %struct.al_table* %102, %struct.al_table** %11, align 8
  br label %74

103:                                              ; preds = %74
  %104 = load i32*, i32** %4, align 8
  store i32* %104, i32** %15, align 8
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  store i32* %105, i32** %14, align 8
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %123, %103
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i32*, i32** %15, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %15, align 8
  %113 = load i32, i32* %111, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = call i8* @getbits_fast(%struct.TYPE_5__* %116, i32 2)
  %118 = ptrtoint i8* %117 to i8
  %119 = sext i8 %118 to i32
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %14, align 8
  store i32 %119, i32* %120, align 4
  br label %122

122:                                              ; preds = %115, %110
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %12, align 4
  br label %107

126:                                              ; preds = %107
  br label %175

127:                                              ; preds = %3
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %143, %127
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load %struct.al_table*, %struct.al_table** %11, align 8
  %134 = getelementptr inbounds %struct.al_table, %struct.al_table* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %17, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %137 = load i32, i32* %17, align 4
  %138 = call i64 @getbits(%struct.TYPE_5__* %136, i32 %137)
  %139 = trunc i64 %138 to i8
  %140 = sext i8 %139 to i32
  %141 = load i32*, i32** %15, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %15, align 8
  store i32 %140, i32* %141, align 4
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %17, align 4
  %147 = shl i32 1, %146
  %148 = load %struct.al_table*, %struct.al_table** %11, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds %struct.al_table, %struct.al_table* %148, i64 %149
  store %struct.al_table* %150, %struct.al_table** %11, align 8
  br label %129

151:                                              ; preds = %129
  %152 = load i32*, i32** %4, align 8
  store i32* %152, i32** %15, align 8
  %153 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  store i32* %153, i32** %14, align 8
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %171, %151
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %155
  %159 = load i32*, i32** %15, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %15, align 8
  %161 = load i32, i32* %159, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = call i8* @getbits_fast(%struct.TYPE_5__* %164, i32 2)
  %166 = ptrtoint i8* %165 to i8
  %167 = sext i8 %166 to i32
  %168 = load i32*, i32** %14, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %14, align 8
  store i32 %167, i32* %168, align 4
  br label %170

170:                                              ; preds = %163, %158
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %12, align 4
  br label %155

174:                                              ; preds = %155
  br label %175

175:                                              ; preds = %174, %126
  %176 = load i32*, i32** %4, align 8
  store i32* %176, i32** %15, align 8
  %177 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  store i32* %177, i32** %14, align 8
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %249, %175
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %252

182:                                              ; preds = %179
  %183 = load i32*, i32** %15, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %15, align 8
  %185 = load i32, i32* %183, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %248

187:                                              ; preds = %182
  %188 = load i32*, i32** %14, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %14, align 8
  %190 = load i32, i32* %188, align 4
  switch i32 %190, label %233 [
    i32 0, label %191
    i32 1, label %207
    i32 2, label %221
  ]

191:                                              ; preds = %187
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %193 = call i8* @getbits_fast(%struct.TYPE_5__* %192, i32 6)
  %194 = ptrtoint i8* %193 to i32
  %195 = load i32*, i32** %5, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %5, align 8
  store i32 %194, i32* %195, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %198 = call i8* @getbits_fast(%struct.TYPE_5__* %197, i32 6)
  %199 = ptrtoint i8* %198 to i32
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %5, align 8
  store i32 %199, i32* %200, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %203 = call i8* @getbits_fast(%struct.TYPE_5__* %202, i32 6)
  %204 = ptrtoint i8* %203 to i32
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %5, align 8
  store i32 %204, i32* %205, align 4
  br label %247

207:                                              ; preds = %187
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = call i8* @getbits_fast(%struct.TYPE_5__* %208, i32 6)
  %210 = ptrtoint i8* %209 to i32
  store i32 %210, i32* %16, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %5, align 8
  store i32 %210, i32* %211, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %5, align 8
  store i32 %213, i32* %214, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %217 = call i8* @getbits_fast(%struct.TYPE_5__* %216, i32 6)
  %218 = ptrtoint i8* %217 to i32
  %219 = load i32*, i32** %5, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %5, align 8
  store i32 %218, i32* %219, align 4
  br label %247

221:                                              ; preds = %187
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %223 = call i8* @getbits_fast(%struct.TYPE_5__* %222, i32 6)
  %224 = ptrtoint i8* %223 to i32
  store i32 %224, i32* %16, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %5, align 8
  store i32 %224, i32* %225, align 4
  %227 = load i32, i32* %16, align 4
  %228 = load i32*, i32** %5, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %5, align 8
  store i32 %227, i32* %228, align 4
  %230 = load i32, i32* %16, align 4
  %231 = load i32*, i32** %5, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %5, align 8
  store i32 %230, i32* %231, align 4
  br label %247

233:                                              ; preds = %187
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %235 = call i8* @getbits_fast(%struct.TYPE_5__* %234, i32 6)
  %236 = ptrtoint i8* %235 to i32
  %237 = load i32*, i32** %5, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** %5, align 8
  store i32 %236, i32* %237, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = call i8* @getbits_fast(%struct.TYPE_5__* %239, i32 6)
  %241 = ptrtoint i8* %240 to i32
  store i32 %241, i32* %16, align 4
  %242 = load i32*, i32** %5, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %5, align 8
  store i32 %241, i32* %242, align 4
  %244 = load i32, i32* %16, align 4
  %245 = load i32*, i32** %5, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %5, align 8
  store i32 %244, i32* %245, align 4
  br label %247

247:                                              ; preds = %233, %221, %207, %191
  br label %248

248:                                              ; preds = %247, %182
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %12, align 4
  br label %179

252:                                              ; preds = %179
  ret void
}

declare dso_local i64 @getbits(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @getbits_fast(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
