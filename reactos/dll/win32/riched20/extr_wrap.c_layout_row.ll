; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_layout_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_layout_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@diRun = common dso_local global i64 0, align 8
@MERF_WHITESPACE = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d runs\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%d: level %d width %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%d: x = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_18__*)* @layout_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_row(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [80 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  store i32 0, i32* %7, align 4
  %15 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %5, align 8
  br label %20

20:                                               ; preds = %56, %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = icmp ne %struct.TYPE_18__* %21, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @diRun, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MERF_WHITESPACE, align 4
  %42 = load i32, i32* @MERF_ENDPARA, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %35, %32
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %26
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %5, align 8
  br label %20

60:                                               ; preds = %20
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %244

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %69 = call i32 @ARRAY_SIZE(i32* %68)
  %70 = sdiv i32 %69, 5
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = mul i64 %75, 5
  %77 = trunc i64 %76 to i32
  %78 = call i32* @heap_alloc(i32 %77)
  store i32* %78, i32** %9, align 8
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32* %88, i32** %11, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 3, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32* %93, i32** %12, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 4, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32* %98, i32** %13, align 8
  store i32 0, i32* %6, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %5, align 8
  br label %100

100:                                              ; preds = %146, %79
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %150

104:                                              ; preds = %100
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @diRun, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %145

110:                                              ; preds = %104
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %136, i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %110, %104
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %5, align 8
  br label %100

150:                                              ; preds = %100
  %151 = load i32, i32* %7, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @ScriptLayout(i32 %151, i32* %152, i32* %153, i32* %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %163, i32* %165, align 4
  store i32 1, i32* %6, align 4
  br label %166

166:                                              ; preds = %192, %150
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %195

170:                                              ; preds = %166
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %11, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %177, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %176, %186
  %188 = load i32*, i32** %12, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %187, i32* %191, align 4
  br label %192

192:                                              ; preds = %170
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %166

195:                                              ; preds = %166
  store i32 0, i32* %6, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_18__* %196, %struct.TYPE_18__** %5, align 8
  br label %197

197:                                              ; preds = %233, %195
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %237

201:                                              ; preds = %197
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @diRun, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %232

207:                                              ; preds = %201
  %208 = load i32*, i32** %12, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %208, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  store i32 %216, i32* %221, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %228)
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %207, %201
  br label %233

233:                                              ; preds = %232
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  store %struct.TYPE_18__* %236, %struct.TYPE_18__** %5, align 8
  br label %197

237:                                              ; preds = %197
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %240 = icmp ne i32* %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i32*, i32** %9, align 8
  %243 = call i32 @heap_free(i32* %242)
  br label %244

244:                                              ; preds = %65, %241, %237
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @ScriptLayout(i32, i32*, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
