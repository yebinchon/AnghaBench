; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_jbig2_decode_refinement_TPGRON.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_jbig2_decode_refinement_TPGRON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_15__ = type { i32, i32 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"adaptive template pixel is out of field\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"failed to decode arithmetic code when handling refinement TPGRON1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32*)* @jbig2_decode_refinement_TPGRON to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_refinement_TPGRON(i32* %0, %struct.TYPE_14__* %1, i32* %2, %struct.TYPE_15__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 64, i32 256
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %19, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)* @mkctx1, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)* @mkctx0
  store i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)* %40, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)** %20, align 8
  store i32 0, i32* %21, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %5
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @pixel_outside_field(i32 %50, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %45
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @refpixel_outside_field(i32 %63, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58, %45
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %74 = call i32 @jbig2_error(i32* %72, i32 %73, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %74, i32* %6, align 4
  br label %181

75:                                               ; preds = %58, %5
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %177, %75
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %180

80:                                               ; preds = %76
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i64, i64* %19, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = call i32 @jbig2_arith_decode(i32* %81, i32* %84, i32* %21)
  %86 = load i32, i32* %18, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %21, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %93 = call i32 @jbig2_error(i32* %91, i32 %92, i32 -1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 %93, i32* %6, align 4
  br label %181

94:                                               ; preds = %80
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %129, label %97

97:                                               ; preds = %94
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %125, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)*, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)** %20, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i64 %105(%struct.TYPE_14__* %106, %struct.TYPE_15__* %107, i32 %108, i32 %109)
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  %112 = call i32 @jbig2_arith_decode(i32* %103, i32* %111, i32* %21)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %102
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %118 = call i32 @jbig2_error(i32* %116, i32 %117, i32 -1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 %118, i32* %6, align 4
  br label %181

119:                                              ; preds = %102
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @jbig2_image_set_pixel(%struct.TYPE_15__* %120, i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %98

128:                                              ; preds = %98
  br label %176

129:                                              ; preds = %94
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %172, %129
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %175

134:                                              ; preds = %130
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @implicit_value(%struct.TYPE_14__* %135, %struct.TYPE_15__* %136, i32 %137, i32 %138)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %134
  %143 = load i32*, i32** %9, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = load i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)*, i64 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)** %20, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i64 %145(%struct.TYPE_14__* %146, %struct.TYPE_15__* %147, i32 %148, i32 %149)
  %151 = getelementptr inbounds i32, i32* %144, i64 %150
  %152 = call i32 @jbig2_arith_decode(i32* %143, i32* %151, i32* %21)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %21, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %142
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %158 = call i32 @jbig2_error(i32* %156, i32 %157, i32 -1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 %158, i32* %6, align 4
  br label %181

159:                                              ; preds = %142
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @jbig2_image_set_pixel(%struct.TYPE_15__* %160, i32 %161, i32 %162, i32 %163)
  br label %171

165:                                              ; preds = %134
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %16, align 4
  %170 = call i32 @jbig2_image_set_pixel(%struct.TYPE_15__* %166, i32 %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %159
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  br label %130

175:                                              ; preds = %130
  br label %176

176:                                              ; preds = %175, %128
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %76

180:                                              ; preds = %76
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %155, %115, %90, %71
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i64 @mkctx1(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @mkctx0(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @pixel_outside_field(i32, i32) #1

declare dso_local i64 @refpixel_outside_field(i32, i32) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

declare dso_local i32 @jbig2_arith_decode(i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_image_set_pixel(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @implicit_value(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
