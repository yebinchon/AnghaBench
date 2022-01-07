; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_lib.c_puzzle_draw_rectangle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_lib.c_puzzle_draw_rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32* }

@Y_PLANE = common dso_local global i64 0, align 8
@U_PLANE = common dso_local global i64 0, align 8
@V_PLANE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puzzle_draw_rectangle(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  store i64 0, i64* %18, align 8
  br label %26

26:                                               ; preds = %203, %8
  %27 = load i64, i64* %18, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %206

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %19, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* @Y_PLANE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i64, i64* %14, align 8
  store i64 %49, i64* %17, align 8
  br label %64

50:                                               ; preds = %32
  %51 = load i64, i64* %18, align 8
  %52 = load i64, i64* @U_PLANE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %15, align 8
  store i64 %55, i64* %17, align 8
  br label %63

56:                                               ; preds = %50
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* @V_PLANE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %16, align 8
  store i64 %61, i64* %17, align 8
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %54
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %65, %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = udiv i64 %69, %75
  %77 = load i64, i64* %20, align 8
  %78 = mul i64 %76, %77
  store i64 %78, i64* %21, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %79, %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 %81, %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = udiv i64 %85, %91
  %93 = load i64, i64* %20, align 8
  %94 = mul i64 %92, %93
  store i64 %94, i64* %22, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = mul i64 %95, %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = udiv i64 %99, %105
  store i64 %106, i64* %23, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %107, %108
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = mul i64 %109, %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = udiv i64 %113, %119
  store i64 %120, i64* %24, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %23, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = mul i64 %124, %127
  %129 = load i64, i64* %21, align 8
  %130 = add i64 %128, %129
  %131 = getelementptr inbounds i32, i32* %123, i64 %130
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %22, align 8
  %134 = load i64, i64* %21, align 8
  %135 = sub i64 %133, %134
  %136 = call i32 @memset(i32* %131, i64 %132, i64 %135)
  store i64 1, i64* %25, align 8
  br label %137

137:                                              ; preds = %182, %64
  %138 = load i64, i64* %25, align 8
  %139 = load i64, i64* %24, align 8
  %140 = load i64, i64* %23, align 8
  %141 = sub i64 %139, %140
  %142 = sub i64 %141, 1
  %143 = icmp ult i64 %138, %142
  br i1 %143, label %144, label %185

144:                                              ; preds = %137
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* %25, align 8
  %150 = add i64 %148, %149
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = mul i64 %150, %153
  %155 = load i64, i64* %21, align 8
  %156 = add i64 %154, %155
  %157 = getelementptr inbounds i32, i32* %147, i64 %156
  %158 = load i64, i64* %17, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @memset(i32* %157, i64 %158, i64 %161)
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %23, align 8
  %167 = load i64, i64* %25, align 8
  %168 = add i64 %166, %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = mul i64 %168, %171
  %173 = load i64, i64* %22, align 8
  %174 = add i64 %172, %173
  %175 = sub i64 %174, 1
  %176 = getelementptr inbounds i32, i32* %165, i64 %175
  %177 = load i64, i64* %17, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @memset(i32* %176, i64 %177, i64 %180)
  br label %182

182:                                              ; preds = %144
  %183 = load i64, i64* %25, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %25, align 8
  br label %137

185:                                              ; preds = %137
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %24, align 8
  %190 = sub i64 %189, 1
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = mul i64 %190, %193
  %195 = load i64, i64* %21, align 8
  %196 = add i64 %194, %195
  %197 = getelementptr inbounds i32, i32* %188, i64 %196
  %198 = load i64, i64* %17, align 8
  %199 = load i64, i64* %22, align 8
  %200 = load i64, i64* %21, align 8
  %201 = sub i64 %199, %200
  %202 = call i32 @memset(i32* %197, i64 %198, i64 %201)
  br label %203

203:                                              ; preds = %185
  %204 = load i64, i64* %18, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %18, align 8
  br label %26

206:                                              ; preds = %26
  ret void
}

declare dso_local i32 @memset(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
