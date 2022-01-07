; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_1u32s_C1R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_1u32s_C1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32)* @convert_1u32s_C1R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_1u32s_C1R(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %89, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, -8
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %92

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %4, align 8
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 7
  %21 = sext i32 %20 to i64
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 0
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  store i64 %21, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 6
  %29 = and i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = load i64*, i64** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 %30, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 5
  %38 = and i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = load i64*, i64** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  store i64 %39, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = load i64*, i64** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 3
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64 %48, i64* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 3
  %56 = and i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = load i64*, i64** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64 %57, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 2
  %65 = and i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = load i64*, i64** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 5
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  store i64 %66, i64* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 1
  %74 = and i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = load i64*, i64** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 6
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  store i64 %75, i64* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = load i64*, i64** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 7
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  store i64 %83, i64* %88, align 8
  br label %89

89:                                               ; preds = %15
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 8
  store i32 %91, i32* %7, align 4
  br label %10

92:                                               ; preds = %10
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 7
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %188

96:                                               ; preds = %92
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %4, align 8
  %99 = load i32, i32* %97, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, 7
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 7
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 0
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  store i64 %104, i64* %109, align 8
  %110 = load i32, i32* %6, align 4
  %111 = icmp ugt i32 %110, 1
  br i1 %111, label %112, label %187

112:                                              ; preds = %96
  %113 = load i32, i32* %9, align 4
  %114 = ashr i32 %113, 6
  %115 = and i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = load i64*, i64** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, 1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  store i64 %116, i64* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = icmp ugt i32 %122, 2
  br i1 %123, label %124, label %186

124:                                              ; preds = %112
  %125 = load i32, i32* %9, align 4
  %126 = ashr i32 %125, 5
  %127 = and i32 %126, 1
  %128 = zext i32 %127 to i64
  %129 = load i64*, i64** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = add i32 %130, 2
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  store i64 %128, i64* %133, align 8
  %134 = load i32, i32* %6, align 4
  %135 = icmp ugt i32 %134, 3
  br i1 %135, label %136, label %185

136:                                              ; preds = %124
  %137 = load i32, i32* %9, align 4
  %138 = ashr i32 %137, 4
  %139 = and i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = load i64*, i64** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = add i32 %142, 3
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  store i64 %140, i64* %145, align 8
  %146 = load i32, i32* %6, align 4
  %147 = icmp ugt i32 %146, 4
  br i1 %147, label %148, label %184

148:                                              ; preds = %136
  %149 = load i32, i32* %9, align 4
  %150 = ashr i32 %149, 3
  %151 = and i32 %150, 1
  %152 = zext i32 %151 to i64
  %153 = load i64*, i64** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = add i32 %154, 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  store i64 %152, i64* %157, align 8
  %158 = load i32, i32* %6, align 4
  %159 = icmp ugt i32 %158, 5
  br i1 %159, label %160, label %183

160:                                              ; preds = %148
  %161 = load i32, i32* %9, align 4
  %162 = ashr i32 %161, 2
  %163 = and i32 %162, 1
  %164 = zext i32 %163 to i64
  %165 = load i64*, i64** %5, align 8
  %166 = load i32, i32* %7, align 4
  %167 = add i32 %166, 5
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  store i64 %164, i64* %169, align 8
  %170 = load i32, i32* %6, align 4
  %171 = icmp ugt i32 %170, 6
  br i1 %171, label %172, label %182

172:                                              ; preds = %160
  %173 = load i32, i32* %9, align 4
  %174 = ashr i32 %173, 1
  %175 = and i32 %174, 1
  %176 = zext i32 %175 to i64
  %177 = load i64*, i64** %5, align 8
  %178 = load i32, i32* %7, align 4
  %179 = add i32 %178, 6
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %177, i64 %180
  store i64 %176, i64* %181, align 8
  br label %182

182:                                              ; preds = %172, %160
  br label %183

183:                                              ; preds = %182, %148
  br label %184

184:                                              ; preds = %183, %136
  br label %185

185:                                              ; preds = %184, %124
  br label %186

186:                                              ; preds = %185, %112
  br label %187

187:                                              ; preds = %186, %96
  br label %188

188:                                              ; preds = %187, %92
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
