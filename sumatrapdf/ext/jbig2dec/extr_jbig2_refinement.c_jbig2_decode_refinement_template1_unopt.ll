; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_jbig2_decode_refinement_template1_unopt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_jbig2_decode_refinement_template1_unopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"failed to decode arithmetic code when handling refinement template0\00", align 1
@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, %struct.TYPE_12__*, i32*)* @jbig2_decode_refinement_template1_unopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_refinement_template1_unopt(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3, %struct.TYPE_12__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %16, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %18, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %39

39:                                               ; preds = %188, %6
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %191

43:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  br label %44

44:                                               ; preds = %184, %43
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %187

48:                                               ; preds = %44
  store i32 0, i32* %19, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 %52, 0
  %54 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %49, i32 %51, i32 %53)
  %55 = shl i32 %54, 0
  %56 = load i32, i32* %19, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %19, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %21, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %58, i32 %60, i32 %62)
  %64 = shl i32 %63, 1
  %65 = load i32, i32* %19, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %19, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, 0
  %70 = load i32, i32* %21, align 4
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %67, i32 %69, i32 %71)
  %73 = shl i32 %72, 2
  %74 = load i32, i32* %19, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %19, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %21, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %76, i32 %78, i32 %80)
  %82 = shl i32 %81, 3
  %83 = load i32, i32* %19, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %19, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %17, align 4
  %88 = sub nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %18, align 4
  %92 = sub nsw i32 %90, %91
  %93 = add nsw i32 %92, 1
  %94 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %85, i32 %89, i32 %93)
  %95 = shl i32 %94, 4
  %96 = load i32, i32* %19, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %19, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %17, align 4
  %101 = sub nsw i32 %99, %100
  %102 = add nsw i32 %101, 0
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 %103, %104
  %106 = add nsw i32 %105, 1
  %107 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %98, i32 %102, i32 %106)
  %108 = shl i32 %107, 5
  %109 = load i32, i32* %19, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %19, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %112, %113
  %115 = add nsw i32 %114, 1
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %18, align 4
  %118 = sub nsw i32 %116, %117
  %119 = add nsw i32 %118, 0
  %120 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %111, i32 %115, i32 %119)
  %121 = shl i32 %120, 6
  %122 = load i32, i32* %19, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %19, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %17, align 4
  %127 = sub nsw i32 %125, %126
  %128 = add nsw i32 %127, 0
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %18, align 4
  %131 = sub nsw i32 %129, %130
  %132 = add nsw i32 %131, 0
  %133 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %124, i32 %128, i32 %132)
  %134 = shl i32 %133, 7
  %135 = load i32, i32* %19, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %19, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %17, align 4
  %140 = sub nsw i32 %138, %139
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %18, align 4
  %144 = sub nsw i32 %142, %143
  %145 = add nsw i32 %144, 0
  %146 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %137, i32 %141, i32 %145)
  %147 = shl i32 %146, 8
  %148 = load i32, i32* %19, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %19, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %17, align 4
  %153 = sub nsw i32 %151, %152
  %154 = add nsw i32 %153, 0
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %18, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sub nsw i32 %157, 1
  %159 = call i32 @jbig2_image_get_pixel(%struct.TYPE_12__* %150, i32 %154, i32 %158)
  %160 = shl i32 %159, 9
  %161 = load i32, i32* %19, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %19, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = call i32 @jbig2_arith_decode(i32* %163, i32* %167, i32* %23)
  store i32 %168, i32* %22, align 4
  %169 = load i32, i32* %23, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %48
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @jbig2_error(i32* %172, i32 %173, i32 %176, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i32 %177, i32* %7, align 4
  br label %192

178:                                              ; preds = %48
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %22, align 4
  %183 = call i32 @jbig2_image_set_pixel(%struct.TYPE_12__* %179, i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %20, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %20, align 4
  br label %44

187:                                              ; preds = %44
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %21, align 4
  br label %39

191:                                              ; preds = %39
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %191, %171
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local i32 @jbig2_image_get_pixel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @jbig2_arith_decode(i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

declare dso_local i32 @jbig2_image_set_pixel(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
