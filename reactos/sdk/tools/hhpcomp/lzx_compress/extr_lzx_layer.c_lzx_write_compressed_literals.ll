; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_write_compressed_literals.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_write_compressed_literals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@LZX_FRAME_SIZE = common dso_local global i32 0, align 4
@NUM_PRIMARY_LENGTHS = common dso_local global i32 0, align 4
@NUM_CHARS = common dso_local global i32 0, align 4
@LZX_ALIGNED_OFFSET_BLOCK = common dso_local global i32 0, align 4
@extra_bits = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @lzx_write_compressed_literals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzx_write_compressed_literals(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LZX_FRAME_SIZE, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %188, %2
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %194

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* %38, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, -2147483648
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %154

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 131071
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 25
  %52 = and i32 %51, 63
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @NUM_PRIMARY_LENGTHS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %12, align 4
  store i32 255, i32* %13, align 4
  br label %63

58:                                               ; preds = %44
  %59 = load i32, i32* @NUM_PRIMARY_LENGTHS, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @NUM_PRIMARY_LENGTHS, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %58, %56
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %64, 3
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @NUM_CHARS, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %74
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %15, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lzx_write_bits(%struct.TYPE_6__* %76, i32 %79, i32 %82)
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 255
  br i1 %85, label %86, label %101

86:                                               ; preds = %63
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %15, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @lzx_write_bits(%struct.TYPE_6__* %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %86, %63
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @LZX_ALIGNED_OFFSET_BLOCK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %139

105:                                              ; preds = %101
  %106 = load i32*, i32** @extra_bits, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 3
  br i1 %111, label %112, label %139

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 3
  store i32 %114, i32* %10, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = load i32*, i32** @extra_bits, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 3
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @lzx_write_bits(%struct.TYPE_6__* %115, i32 %121, i32 %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, 7
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %129
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %15, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @lzx_write_bits(%struct.TYPE_6__* %131, i32 %134, i32 %137)
  br label %149

139:                                              ; preds = %105, %101
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %10, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = load i32*, i32** @extra_bits, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @lzx_write_bits(%struct.TYPE_6__* %141, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %139, %112
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 2
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %16, align 4
  br label %176

154:                                              ; preds = %37
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @NUM_CHARS, align 4
  %157 = icmp slt i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  store %struct.TYPE_7__* %165, %struct.TYPE_7__** %15, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @lzx_write_bits(%struct.TYPE_6__* %166, i32 %169, i32 %172)
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %176

176:                                              ; preds = %154, %149
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @LZX_FRAME_SIZE, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load i32, i32* %16, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %187 = call i32 @lzx_align_output(%struct.TYPE_6__* %186)
  store i32 0, i32* %16, align 4
  br label %188

188:                                              ; preds = %180, %176
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @LZX_FRAME_SIZE, align 4
  %191 = icmp slt i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  br label %33

194:                                              ; preds = %33
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 8
  ret void
}

declare dso_local i32 @lzx_write_bits(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lzx_align_output(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
