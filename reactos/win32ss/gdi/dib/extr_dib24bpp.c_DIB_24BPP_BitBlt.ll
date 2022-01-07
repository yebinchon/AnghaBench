; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib24bpp.c_DIB_24BPP_BitBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib24bpp.c_DIB_24BPP_BitBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_17__*, i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_24BPP_BitBlt(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @ROP4_USES_SOURCE(i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ROP4_USES_PATTERN(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %48, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %44, i64 %55
  store i32* %56, i32** %13, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %68, %72
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = srem i32 %73, %79
  store i32 %80, i32* %7, align 4
  br label %93

81:                                               ; preds = %59
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %86, %81
  br label %93

93:                                               ; preds = %92, %64
  br label %94

94:                                               ; preds = %93, %1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %230, %94
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %233

106:                                              ; preds = %99
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %5, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %182, %106
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %189

122:                                              ; preds = %115
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %13, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 16
  %129 = add nsw i32 %124, %128
  store i32 %129, i32* %8, align 4
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %122
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @DIB_GetSource(i32 %135, i32 %136, i32 %137, i32 %140)
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %132, %122
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = icmp ne %struct.TYPE_17__* %145, null
  br i1 %146, label %147, label %166

147:                                              ; preds = %142
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %151, %155
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = srem i32 %156, %162
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @DIB_GetSourceIndex(%struct.TYPE_17__* %150, i32 %163, i32 %164)
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %147, %142
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @DIB_DoRop(i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = and i32 %173, 16777215
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = and i32 %175, 65535
  %177 = load i32*, i32** %13, align 8
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %8, align 4
  %179 = ashr i32 %178, 16
  %180 = load i32*, i32** %13, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %166
  %183 = load i32, i32* %3, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %3, align 4
  %185 = load i32*, i32** %13, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  store i32* %186, i32** %13, align 8
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %115

189:                                              ; preds = %115
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = icmp ne %struct.TYPE_17__* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %189
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %7, align 4
  %206 = srem i32 %205, %204
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %196, %189
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %211, %215
  %217 = mul nsw i32 %216, 3
  %218 = load i32*, i32** %13, align 8
  %219 = sext i32 %217 to i64
  %220 = sub i64 0, %219
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32* %221, i32** %13, align 8
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32*, i32** %13, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32* %229, i32** %13, align 8
  br label %230

230:                                              ; preds = %207
  %231 = load i32, i32* %4, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %4, align 4
  br label %99

233:                                              ; preds = %99
  %234 = load i32, i32* @TRUE, align 4
  ret i32 %234
}

declare dso_local i64 @ROP4_USES_SOURCE(i32) #1

declare dso_local i64 @ROP4_USES_PATTERN(i32) #1

declare dso_local i32 @DIB_GetSource(i32, i32, i32, i32) #1

declare dso_local i32 @DIB_GetSourceIndex(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @DIB_DoRop(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
