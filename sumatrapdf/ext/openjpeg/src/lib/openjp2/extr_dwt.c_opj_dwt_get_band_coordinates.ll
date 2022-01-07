; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_dwt_get_band_coordinates.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_dwt.c_opj_dwt_get_band_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64*)* @opj_dwt_get_band_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_dwt_get_band_coordinates(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64* %7, i64* %8, i64* %9, i64* %10) #0 {
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64* %7, i64** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  store i64* %10, i64** %22, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %11
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  br label %39

33:                                               ; preds = %11
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %13, align 8
  %38 = sub nsw i64 %36, %37
  br label %39

39:                                               ; preds = %33, %28
  %40 = phi i64 [ %32, %28 ], [ %38, %33 ]
  store i64 %40, i64* %23, align 8
  %41 = load i64, i64* %14, align 8
  %42 = and i64 %41, 1
  store i64 %42, i64* %24, align 8
  %43 = load i64, i64* %14, align 8
  %44 = ashr i64 %43, 1
  store i64 %44, i64* %25, align 8
  %45 = load i64*, i64** %19, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %80

47:                                               ; preds = %39
  %48 = load i64, i64* %23, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* %15, align 8
  br label %77

52:                                               ; preds = %47
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %23, align 8
  %55 = sub nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = shl i32 1, %56
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %24, align 8
  %60 = mul nsw i64 %58, %59
  %61 = icmp sle i64 %53, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %75

63:                                               ; preds = %52
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %23, align 8
  %66 = sub nsw i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = shl i32 1, %67
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %24, align 8
  %71 = mul nsw i64 %69, %70
  %72 = sub nsw i64 %64, %71
  %73 = load i64, i64* %23, align 8
  %74 = call i64 @opj_uint_ceildivpow2(i64 %72, i64 %73)
  br label %75

75:                                               ; preds = %63, %62
  %76 = phi i64 [ 0, %62 ], [ %74, %63 ]
  br label %77

77:                                               ; preds = %75, %50
  %78 = phi i64 [ %51, %50 ], [ %76, %75 ]
  %79 = load i64*, i64** %19, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %39
  %81 = load i64*, i64** %20, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %116

83:                                               ; preds = %80
  %84 = load i64, i64* %23, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64, i64* %16, align 8
  br label %113

88:                                               ; preds = %83
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %23, align 8
  %91 = sub nsw i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = shl i32 1, %92
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %25, align 8
  %96 = mul nsw i64 %94, %95
  %97 = icmp sle i64 %89, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %111

99:                                               ; preds = %88
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %23, align 8
  %102 = sub nsw i64 %101, 1
  %103 = trunc i64 %102 to i32
  %104 = shl i32 1, %103
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* %25, align 8
  %107 = mul nsw i64 %105, %106
  %108 = sub nsw i64 %100, %107
  %109 = load i64, i64* %23, align 8
  %110 = call i64 @opj_uint_ceildivpow2(i64 %108, i64 %109)
  br label %111

111:                                              ; preds = %99, %98
  %112 = phi i64 [ 0, %98 ], [ %110, %99 ]
  br label %113

113:                                              ; preds = %111, %86
  %114 = phi i64 [ %87, %86 ], [ %112, %111 ]
  %115 = load i64*, i64** %20, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %80
  %117 = load i64*, i64** %21, align 8
  %118 = icmp ne i64* %117, null
  br i1 %118, label %119, label %152

119:                                              ; preds = %116
  %120 = load i64, i64* %23, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i64, i64* %17, align 8
  br label %149

124:                                              ; preds = %119
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %23, align 8
  %127 = sub nsw i64 %126, 1
  %128 = trunc i64 %127 to i32
  %129 = shl i32 1, %128
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %24, align 8
  %132 = mul nsw i64 %130, %131
  %133 = icmp sle i64 %125, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %147

135:                                              ; preds = %124
  %136 = load i64, i64* %17, align 8
  %137 = load i64, i64* %23, align 8
  %138 = sub nsw i64 %137, 1
  %139 = trunc i64 %138 to i32
  %140 = shl i32 1, %139
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* %24, align 8
  %143 = mul nsw i64 %141, %142
  %144 = sub nsw i64 %136, %143
  %145 = load i64, i64* %23, align 8
  %146 = call i64 @opj_uint_ceildivpow2(i64 %144, i64 %145)
  br label %147

147:                                              ; preds = %135, %134
  %148 = phi i64 [ 0, %134 ], [ %146, %135 ]
  br label %149

149:                                              ; preds = %147, %122
  %150 = phi i64 [ %123, %122 ], [ %148, %147 ]
  %151 = load i64*, i64** %21, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %116
  %153 = load i64*, i64** %22, align 8
  %154 = icmp ne i64* %153, null
  br i1 %154, label %155, label %188

155:                                              ; preds = %152
  %156 = load i64, i64* %23, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i64, i64* %18, align 8
  br label %185

160:                                              ; preds = %155
  %161 = load i64, i64* %18, align 8
  %162 = load i64, i64* %23, align 8
  %163 = sub nsw i64 %162, 1
  %164 = trunc i64 %163 to i32
  %165 = shl i32 1, %164
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %25, align 8
  %168 = mul nsw i64 %166, %167
  %169 = icmp sle i64 %161, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %183

171:                                              ; preds = %160
  %172 = load i64, i64* %18, align 8
  %173 = load i64, i64* %23, align 8
  %174 = sub nsw i64 %173, 1
  %175 = trunc i64 %174 to i32
  %176 = shl i32 1, %175
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %25, align 8
  %179 = mul nsw i64 %177, %178
  %180 = sub nsw i64 %172, %179
  %181 = load i64, i64* %23, align 8
  %182 = call i64 @opj_uint_ceildivpow2(i64 %180, i64 %181)
  br label %183

183:                                              ; preds = %171, %170
  %184 = phi i64 [ 0, %170 ], [ %182, %171 ]
  br label %185

185:                                              ; preds = %183, %158
  %186 = phi i64 [ %159, %158 ], [ %184, %183 ]
  %187 = load i64*, i64** %22, align 8
  store i64 %186, i64* %187, align 8
  br label %188

188:                                              ; preds = %185, %152
  ret void
}

declare dso_local i64 @opj_uint_ceildivpow2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
