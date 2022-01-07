; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_write.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32**, i32* }

@xtb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 0), align 8
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %166, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %167

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 2), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 2), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memcpy(i32* %33, i8* %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  br label %47

47:                                               ; preds = %29, %16
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 2), align 8
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %167

52:                                               ; preds = %47
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 4), align 8
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 4), align 8
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 8), align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 6), align 8
  %80 = call i32 @stb_compress_chunk(i32* %68, i32* %72, i32* %76, i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), i32** %78, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  br label %84

84:                                               ; preds = %58, %52
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 4), align 8
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %89 = icmp sge i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 7), align 8
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp sge i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %84
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 0, %114
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), align 4
  %118 = call i32 @outliterals(i32* %116, i32 %117)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), align 4
  br label %119

119:                                              ; preds = %108, %84
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %121 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i32 @memmove(i32* %120, i32* %124, i32 %127)
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  store i64 0, i64* %5, align 8
  br label %135

135:                                              ; preds = %163, %119
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 6), align 8
  %138 = icmp ule i64 %136, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %135
  %140 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 8), align 8
  %141 = load i64, i64* %5, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = icmp ult i32* %143, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 8), align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  store i32* null, i32** %152, align 8
  br label %162

153:                                              ; preds = %139
  %154 = load i32, i32* %9, align 4
  %155 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 8), align 8
  %156 = load i64, i64* %5, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = sext i32 %154 to i64
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32* %161, i32** %157, align 8
  br label %162

162:                                              ; preds = %153, %149
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %5, align 8
  br label %135

166:                                              ; preds = %135
  br label %13

167:                                              ; preds = %51, %13
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb_compress_chunk(i32*, i32*, i32*, i32, i32*, i32**, i64) #1

declare dso_local i32 @outliterals(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
