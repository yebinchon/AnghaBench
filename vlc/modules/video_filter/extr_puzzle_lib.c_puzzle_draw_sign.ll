; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_lib.c_puzzle_draw_sign.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_lib.c_puzzle_draw_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i64, i64, i64 }

@Y_PLANE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puzzle_draw_sign(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8** %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* @Y_PLANE, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %15, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* @Y_PLANE, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %37, %40
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 127
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 255
  store i32 %48, i32* %17, align 4
  store i64 0, i64* %18, align 8
  br label %49

49:                                               ; preds = %195, %7
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %198

53:                                               ; preds = %49
  store i64 0, i64* %19, align 8
  br label %54

54:                                               ; preds = %191, %53
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %194

58:                                               ; preds = %54
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %16, align 8
  %63 = mul i64 %61, %62
  store i64 %63, i64* %20, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %21, align 8
  %67 = load i8**, i8*** %13, align 8
  %68 = load i64, i64* %18, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %58
  %74 = load i64, i64* %11, align 8
  %75 = sub i64 %74, 1
  %76 = load i64, i64* %19, align 8
  %77 = sub i64 %75, %76
  br label %80

78:                                               ; preds = %58
  %79 = load i64, i64* %19, align 8
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi i64 [ %77, %73 ], [ %79, %78 ]
  %82 = getelementptr inbounds i8, i8* %70, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 111
  br i1 %85, label %86, label %122

86:                                               ; preds = %80
  %87 = load i64, i64* %20, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %86
  %93 = load i64, i64* %21, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %92
  %99 = load i64, i64* %20, align 8
  %100 = icmp uge i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %98
  %102 = load i64, i64* %21, align 8
  %103 = icmp uge i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = mul i64 %108, %111
  %113 = load i64, i64* %20, align 8
  %114 = add i64 %112, %113
  %115 = getelementptr inbounds i32, i32* %107, i64 %114
  %116 = load i32, i32* %17, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @memset(i32* %115, i32 %116, i64 %119)
  br label %121

121:                                              ; preds = %104, %101, %98, %92, %86
  br label %190

122:                                              ; preds = %80
  %123 = load i8**, i8*** %13, align 8
  %124 = load i64, i64* %18, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %130, 1
  %132 = load i64, i64* %19, align 8
  %133 = sub i64 %131, %132
  br label %136

134:                                              ; preds = %122
  %135 = load i64, i64* %19, align 8
  br label %136

136:                                              ; preds = %134, %129
  %137 = phi i64 [ %133, %129 ], [ %135, %134 ]
  %138 = getelementptr inbounds i8, i8* %126, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 46
  br i1 %141, label %142, label %189

142:                                              ; preds = %136
  %143 = load i64, i64* %20, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ult i64 %143, %146
  br i1 %147, label %148, label %188

148:                                              ; preds = %142
  %149 = load i64, i64* %21, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ult i64 %149, %152
  br i1 %153, label %154, label %188

154:                                              ; preds = %148
  %155 = load i64, i64* %20, align 8
  %156 = icmp uge i64 %155, 0
  br i1 %156, label %157, label %188

157:                                              ; preds = %154
  %158 = load i64, i64* %21, align 8
  %159 = icmp uge i64 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %157
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %21, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = mul i64 %164, %167
  %169 = load i64, i64* %20, align 8
  %170 = add i64 %168, %169
  %171 = getelementptr inbounds i32, i32* %163, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sdiv i32 %172, 2
  %174 = load i32, i32* %17, align 4
  %175 = sdiv i32 %174, 2
  %176 = add nsw i32 %173, %175
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %21, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = mul i64 %180, %183
  %185 = load i64, i64* %20, align 8
  %186 = add i64 %184, %185
  %187 = getelementptr inbounds i32, i32* %179, i64 %186
  store i32 %176, i32* %187, align 4
  br label %188

188:                                              ; preds = %160, %157, %154, %148, %142
  br label %189

189:                                              ; preds = %188, %136
  br label %190

190:                                              ; preds = %189, %121
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %19, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %19, align 8
  br label %54

194:                                              ; preds = %54
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %18, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %18, align 8
  br label %49

198:                                              ; preds = %49
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
