; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_parse.c_adns__findrr_anychk.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_parse.c_adns__findrr_anychk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAXTTLBELIEVE = common dso_local global i64 0, align 8
@adns_s_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @adns__findrr_anychk(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6, i64* %7, i32* %8, i32* %9, i32* %10, i32 %11, i32 %12, i32* %13) #0 {
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32* %2, i32** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32* %4, i32** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i64* %7, i64** %23, align 8
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32* %13, i32** %29, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %32, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %32, align 4
  %55 = call i32 @adns__findlabel_start(i32* %30, i32 %48, i32 %49, %struct.TYPE_4__* %50, i32* %51, i32 %52, i32 %53, i32 %54, i32* %32)
  %56 = load i32*, i32** %26, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %14
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %26, align 8
  %63 = load i32, i32* %27, align 4
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* %28, align 4
  %66 = call i32 @adns__findlabel_start(i32* %31, i32 %61, i32 -1, %struct.TYPE_4__* null, i32* %62, i32 %63, i32 %64, i32 %65, i32* null)
  store i32 0, i32* %35, align 4
  br label %68

67:                                               ; preds = %14
  store i32 1, i32* %35, align 4
  br label %68

68:                                               ; preds = %67, %58
  br label %69

69:                                               ; preds = %144, %68
  %70 = call i64 @adns__findlabel_next(i32* %30, i32* %37, i32* %38)
  store i64 %70, i64* %43, align 8
  %71 = load i64, i64* %43, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %43, align 8
  store i64 %74, i64* %15, align 8
  br label %210

75:                                               ; preds = %69
  %76 = load i32, i32* %37, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %208

79:                                               ; preds = %75
  %80 = load i32, i32* %35, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %140, label %82

82:                                               ; preds = %79
  %83 = call i64 @adns__findlabel_next(i32* %31, i32* %40, i32* %41)
  store i64 %83, i64* %43, align 8
  %84 = load i64, i64* %43, align 8
  %85 = icmp ne i64 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %40, align 4
  %90 = icmp sge i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %37, align 4
  %94 = load i32, i32* %40, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  store i32 1, i32* %35, align 4
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %138, %97
  %99 = load i32, i32* %35, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %40, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %40, align 4
  %104 = icmp sgt i32 %102, 0
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i1 [ false, %98 ], [ %104, %101 ]
  br i1 %106, label %107, label %139

107:                                              ; preds = %105
  %108 = load i32*, i32** %18, align 8
  %109 = load i32, i32* %38, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %38, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %39, align 4
  %114 = load i32, i32* %39, align 4
  %115 = call i64 @ctype_alpha(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i32, i32* %39, align 4
  %119 = and i32 %118, -33
  store i32 %119, i32* %39, align 4
  br label %120

120:                                              ; preds = %117, %107
  %121 = load i32*, i32** %26, align 8
  %122 = load i32, i32* %41, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %41, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %42, align 4
  %127 = load i32, i32* %42, align 4
  %128 = call i64 @ctype_alpha(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  %131 = load i32, i32* %42, align 4
  %132 = and i32 %131, -33
  store i32 %132, i32* %42, align 4
  br label %133

133:                                              ; preds = %130, %120
  %134 = load i32, i32* %39, align 4
  %135 = load i32, i32* %42, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 1, i32* %35, align 4
  br label %138

138:                                              ; preds = %137, %133
  br label %98

139:                                              ; preds = %105
  br label %140

140:                                              ; preds = %139, %79
  %141 = load i32, i32* %37, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  br label %145

144:                                              ; preds = %140
  br label %69

145:                                              ; preds = %143
  %146 = load i32*, i32** %29, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32, i32* %35, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = load i32*, i32** %29, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %148, %145
  %155 = load i32, i32* %32, align 4
  %156 = add nsw i32 %155, 10
  %157 = load i32, i32* %19, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %208

160:                                              ; preds = %154
  %161 = load i32, i32* %32, align 4
  %162 = load i32, i32* %33, align 4
  %163 = call i32 @GET_W(i32 %161, i32 %162)
  %164 = load i32, i32* %33, align 4
  %165 = load i32*, i32** %21, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %32, align 4
  %167 = load i32, i32* %33, align 4
  %168 = call i32 @GET_W(i32 %166, i32 %167)
  %169 = load i32, i32* %33, align 4
  %170 = load i32*, i32** %22, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %32, align 4
  %172 = load i64, i64* %36, align 8
  %173 = call i32 @GET_L(i32 %171, i64 %172)
  %174 = load i64, i64* %36, align 8
  %175 = load i64, i64* @MAXTTLBELIEVE, align 8
  %176 = icmp ugt i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %160
  %178 = load i64, i64* @MAXTTLBELIEVE, align 8
  store i64 %178, i64* %36, align 8
  br label %179

179:                                              ; preds = %177, %160
  %180 = load i64, i64* %36, align 8
  %181 = load i64*, i64** %23, align 8
  store i64 %180, i64* %181, align 8
  %182 = load i32, i32* %32, align 4
  %183 = load i32, i32* %34, align 4
  %184 = call i32 @GET_W(i32 %182, i32 %183)
  %185 = load i32*, i32** %24, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load i32, i32* %34, align 4
  %189 = load i32*, i32** %24, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %179
  %191 = load i32*, i32** %25, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* %32, align 4
  %195 = load i32*, i32** %25, align 8
  store i32 %194, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32, i32* %34, align 4
  %198 = load i32, i32* %32, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %32, align 4
  %200 = load i32, i32* %32, align 4
  %201 = load i32, i32* %19, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %208

204:                                              ; preds = %196
  %205 = load i32, i32* %32, align 4
  %206 = load i32*, i32** %20, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i64, i64* @adns_s_ok, align 8
  store i64 %207, i64* %15, align 8
  br label %210

208:                                              ; preds = %203, %159, %78
  %209 = load i32*, i32** %21, align 8
  store i32 -1, i32* %209, align 4
  store i64 0, i64* %15, align 8
  br label %210

210:                                              ; preds = %208, %204, %73
  %211 = load i64, i64* %15, align 8
  ret i64 %211
}

declare dso_local i32 @adns__findlabel_start(i32*, i32, i32, %struct.TYPE_4__*, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @adns__findlabel_next(i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ctype_alpha(i32) #1

declare dso_local i32 @GET_W(i32, i32) #1

declare dso_local i32 @GET_L(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
