; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_sdi.c_v210_convert.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_sdi.c_v210_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v210_convert(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 47
  %19 = sdiv i32 %18, 48
  %20 = mul nsw i32 %19, 48
  %21 = mul nsw i32 %20, 8
  %22 = sdiv i32 %21, 3
  %23 = sdiv i32 %22, 4
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %27, %28
  %30 = mul nsw i32 %29, 2
  %31 = sdiv i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %35, %36
  %38 = mul nsw i32 %37, 3
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  store i32* %41, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %205, %4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %208

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %134, %46
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 5
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %137

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %14, align 8
  %57 = load i32, i32* %55, align 4
  %58 = call i32 @av_le2ne32(i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = and i32 %59, 1023
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = ashr i32 %63, 10
  %65 = and i32 %64, 1023
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* %15, align 4
  %69 = ashr i32 %68, 20
  %70 = and i32 %69, 1023
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  br label %73

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %14, align 8
  %77 = load i32, i32* %75, align 4
  %78 = call i32 @av_le2ne32(i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = and i32 %79, 1023
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* %15, align 4
  %84 = ashr i32 %83, 10
  %85 = and i32 %84, 1023
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = ashr i32 %88, 20
  %90 = and i32 %89, 1023
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  br label %93

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %14, align 8
  %97 = load i32, i32* %95, align 4
  %98 = call i32 @av_le2ne32(i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = and i32 %99, 1023
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %12, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i32, i32* %15, align 4
  %104 = ashr i32 %103, 10
  %105 = and i32 %104, 1023
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = ashr i32 %108, 20
  %110 = and i32 %109, 1023
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  br label %113

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** %14, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %14, align 8
  %117 = load i32, i32* %115, align 4
  %118 = call i32 @av_le2ne32(i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = and i32 %119, 1023
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %10, align 8
  store i32 %120, i32* %121, align 4
  %123 = load i32, i32* %15, align 4
  %124 = ashr i32 %123, 10
  %125 = and i32 %124, 1023
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %12, align 8
  store i32 %125, i32* %126, align 4
  %128 = load i32, i32* %15, align 4
  %129 = ashr i32 %128, 20
  %130 = and i32 %129, 1023
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %10, align 8
  store i32 %130, i32* %131, align 4
  br label %133

133:                                              ; preds = %114
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 6
  store i32 %136, i32* %16, align 4
  br label %48

137:                                              ; preds = %48
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142
  %144 = load i32*, i32** %14, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %14, align 8
  %146 = load i32, i32* %144, align 4
  %147 = call i32 @av_le2ne32(i32 %146)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = and i32 %148, 1023
  %150 = load i32*, i32** %11, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %11, align 8
  store i32 %149, i32* %150, align 4
  %152 = load i32, i32* %15, align 4
  %153 = ashr i32 %152, 10
  %154 = and i32 %153, 1023
  %155 = load i32*, i32** %10, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %10, align 8
  store i32 %154, i32* %155, align 4
  %157 = load i32, i32* %15, align 4
  %158 = ashr i32 %157, 20
  %159 = and i32 %158, 1023
  %160 = load i32*, i32** %12, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %12, align 8
  store i32 %159, i32* %160, align 4
  br label %162

162:                                              ; preds = %143
  %163 = load i32*, i32** %14, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %14, align 8
  %165 = load i32, i32* %163, align 4
  %166 = call i32 @av_le2ne32(i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = and i32 %167, 1023
  %169 = load i32*, i32** %10, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %10, align 8
  store i32 %168, i32* %169, align 4
  br label %171

171:                                              ; preds = %162, %137
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %173, 3
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %200

176:                                              ; preds = %171
  %177 = load i32, i32* %15, align 4
  %178 = ashr i32 %177, 10
  %179 = and i32 %178, 1023
  %180 = load i32*, i32** %11, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %11, align 8
  store i32 %179, i32* %180, align 4
  %182 = load i32, i32* %15, align 4
  %183 = ashr i32 %182, 20
  %184 = and i32 %183, 1023
  %185 = load i32*, i32** %10, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %10, align 8
  store i32 %184, i32* %185, align 4
  %187 = load i32*, i32** %14, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %14, align 8
  %189 = load i32, i32* %187, align 4
  %190 = call i32 @av_le2ne32(i32 %189)
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = and i32 %191, 1023
  %193 = load i32*, i32** %12, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %12, align 8
  store i32 %192, i32* %193, align 4
  %195 = load i32, i32* %15, align 4
  %196 = ashr i32 %195, 10
  %197 = and i32 %196, 1023
  %198 = load i32*, i32** %10, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %10, align 8
  store i32 %197, i32* %198, align 4
  br label %200

200:                                              ; preds = %176, %171
  %201 = load i32, i32* %9, align 4
  %202 = load i32*, i32** %6, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %6, align 8
  br label %205

205:                                              ; preds = %200
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %42

208:                                              ; preds = %42
  ret void
}

declare dso_local i32 @av_le2ne32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
