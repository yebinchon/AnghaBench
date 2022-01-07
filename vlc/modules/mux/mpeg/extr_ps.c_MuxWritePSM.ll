; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ps.c_MuxWritePSM.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ps.c_MuxWritePSM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__**, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_15__**, i32)* @MuxWritePSM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MuxWritePSM(%struct.TYPE_11__* %0, %struct.TYPE_15__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %7, align 8
  store i32 16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %50, %3
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %30, i64 %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %13, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %14, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 6
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.TYPE_15__* @block_Alloc(i32 %57)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %8, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = icmp ne %struct.TYPE_15__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %196

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  store i32 %63, i32* %67, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memset(i32* %70, i32 0, i64 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @bits_initwrite(i32* %9, i32 %75, i32* %78)
  %80 = call i32 @bits_write(i32* %9, i32 32, i32 444)
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 6
  %83 = call i32 @bits_write(i32* %9, i32 16, i32 %82)
  %84 = call i32 @bits_write(i32* %9, i32 1, i32 1)
  %85 = call i32 @bits_write(i32* %9, i32 2, i32 15)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bits_write(i32* %9, i32 5, i32 %88)
  %90 = call i32 @bits_write(i32* %9, i32 7, i32 255)
  %91 = call i32 @bits_write(i32* %9, i32 1, i32 1)
  %92 = call i32 @bits_write(i32* %9, i32 16, i32 0)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @bits_write(i32* %9, i32 16, i32 %93)
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %155, %62
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %158

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %104, i64 %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %15, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %16, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @bits_write(i32* %9, i32 8, i32 %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bits_write(i32* %9, i32 8, i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %101
  %127 = call i32 @bits_write(i32* %9, i32 16, i32 6)
  %128 = call i32 @bits_write(i32* %9, i32 8, i32 10)
  %129 = call i32 @bits_write(i32* %9, i32 8, i32 4)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @bits_write(i32* %9, i32 8, i32 %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @bits_write(i32* %9, i32 8, i32 %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @bits_write(i32* %9, i32 8, i32 %149)
  %151 = call i32 @bits_write(i32* %9, i32 8, i32 0)
  br label %154

152:                                              ; preds = %101
  %153 = call i32 @bits_write(i32* %9, i32 16, i32 0)
  br label %154

154:                                              ; preds = %152, %126
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %95

158:                                              ; preds = %95
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %187, %158
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ult i64 %161, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %159
  %167 = load i32, i32* %17, align 4
  %168 = shl i32 %167, 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = ashr i32 %172, 24
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = xor i32 %173, %180
  %182 = and i32 %181, 255
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %171, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = xor i32 %168, %185
  store i32 %186, i32* %17, align 4
  br label %187

187:                                              ; preds = %166
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %159

190:                                              ; preds = %159
  %191 = load i32, i32* %17, align 4
  %192 = call i32 @bits_write(i32* %9, i32 32, i32 %191)
  %193 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %195 = call i32 @block_ChainAppend(%struct.TYPE_15__** %193, %struct.TYPE_15__* %194)
  br label %196

196:                                              ; preds = %190, %61
  ret void
}

declare dso_local %struct.TYPE_15__* @block_Alloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @bits_initwrite(i32*, i32, i32*) #1

declare dso_local i32 @bits_write(i32*, i32, i32) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_15__**, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
