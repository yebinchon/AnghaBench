; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_matrix.c_ScrollMatrixColumn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_matrix.c_ScrollMatrixColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i64, i64, i64, i32* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MAX_INTENSITY = common dso_local global i32 0, align 4
@DENSITY = common dso_local global i32 0, align 4
@DENSITY_MIN = common dso_local global i32 0, align 4
@DENSITY_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScrollMatrixColumn(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FALSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i64, i64* @TRUE, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %11
  br label %209

22:                                               ; preds = %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @MAX_INTENSITY, align 4
  %30 = shl i32 %29, 8
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %27 ], [ %30, %28 ]
  store i32 %32, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %101, %31
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %104

39:                                               ; preds = %33
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @GlyphIntensity(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @GlyphIntensity(i32 %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @GlyphIntensity(i32 %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* @MAX_INTENSITY, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @RandomGlyph(i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %93

68:                                               ; preds = %52, %39
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @GlyphIntensity(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @GlyphIntensity(i32 %71)
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @DarkenGlyph(i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @GlyphIntensity(i32 %83)
  %85 = load i32, i32* @MAX_INTENSITY, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %74
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %74
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %56
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %33

104:                                              ; preds = %33
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, i64* %106, align 8
  %109 = icmp sle i64 %108, 0
  br i1 %109, label %110, label %141

110:                                              ; preds = %104
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = xor i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %110
  %117 = call i32 (...) @crc_rand()
  %118 = load i32, i32* @DENSITY, align 4
  %119 = mul nsw i32 3, %118
  %120 = sdiv i32 %119, 2
  %121 = srem i32 %117, %120
  %122 = load i32, i32* @DENSITY_MIN, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  store i64 %124, i64* %126, align 8
  br label %140

127:                                              ; preds = %110
  %128 = call i32 (...) @crc_rand()
  %129 = load i32, i32* @DENSITY_MAX, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* @DENSITY, align 4
  %132 = sub nsw i32 %130, %131
  %133 = srem i32 %128, %132
  %134 = load i32, i32* @DENSITY_MIN, align 4
  %135 = mul nsw i32 %134, 2
  %136 = add nsw i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %127, %116
  br label %141

141:                                              ; preds = %140, %104
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp sge i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %141
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %149, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %146
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @RedrawBlip(i32* %158, i64 %161)
  br label %163

163:                                              ; preds = %155, %146, %141
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 2
  store i64 %167, i64* %165, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp sge i64 %170, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %163
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (...) @crc_rand()
  %180 = srem i32 %179, 50
  %181 = add nsw i32 %178, %180
  %182 = sext i32 %181 to i64
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 6
  store i64 %182, i64* %184, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 5
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %175, %163
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = icmp sge i64 %190, 0
  br i1 %191, label %192, label %209

192:                                              ; preds = %187
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp slt i64 %195, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %192
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 7
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @RedrawBlip(i32* %204, i64 %207)
  br label %209

209:                                              ; preds = %21, %201, %192, %187
  ret void
}

declare dso_local i32 @GlyphIntensity(i32) #1

declare dso_local i32 @RandomGlyph(i32) #1

declare dso_local i32 @DarkenGlyph(i32) #1

declare dso_local i32 @crc_rand(...) #1

declare dso_local i32 @RedrawBlip(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
