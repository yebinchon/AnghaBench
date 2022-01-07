; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_sha1_file.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_sha1_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_sha1_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @stb__fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %198

18:                                               ; preds = %2
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32 1732584193, i32* %19, align 16
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  store i32 -271733879, i32* %20, align 4
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  store i32 -1732584194, i32* %21, align 8
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  store i32 271733878, i32* %22, align 4
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  store i32 -1009589776, i32* %23, align 16
  br label %24

24:                                               ; preds = %138, %18
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @fread(i8* %25, i32 1, i32 64, i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 64
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %33 = call i32 @stb__sha1(i8* %31, i32* %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %138

37:                                               ; preds = %24
  store i32 64, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %43
  store i8 -128, i8* %44, align 1
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 8
  %47 = icmp sgt i32 %46, 64
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 128, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %37
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 8
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @memset(i8* %53, i32 0, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, 8
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 53
  %63 = trunc i32 %62 to i8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %66
  store i8 %63, i8* %67, align 1
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 45
  %70 = trunc i32 %69 to i8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %73
  store i8 %70, i8* %74, align 1
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 37
  %77 = trunc i32 %76 to i8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %80
  store i8 %77, i8* %81, align 1
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 29
  %84 = trunc i32 %83 to i8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %87
  store i8 %84, i8* %88, align 1
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 21
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %94
  store i8 %91, i8* %95, align 1
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %96, 13
  %98 = trunc i32 %97 to i8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %101
  store i8 %98, i8* %102, align 1
  %103 = load i32, i32* %7, align 4
  %104 = ashr i32 %103, 5
  %105 = trunc i32 %104 to i8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %108
  store i8 %105, i8* %109, align 1
  %110 = load i32, i32* %7, align 4
  %111 = shl i32 %110, 3
  %112 = trunc i32 %111 to i8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %115
  store i8 %112, i8* %116, align 1
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %123 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %124 = call i32 @stb__sha1(i8* %122, i32* %123)
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, 128
  br i1 %126, label %127, label %132

127:                                              ; preds = %49
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %129 = getelementptr inbounds i8, i8* %128, i64 64
  %130 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %131 = call i32 @stb__sha1(i8* %129, i32* %130)
  br label %137

132:                                              ; preds = %49
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 64
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  br label %137

137:                                              ; preds = %132, %127
  br label %139

138:                                              ; preds = %30
  br label %24

139:                                              ; preds = %137
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @fclose(i32* %140)
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %194, %139
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %143, 5
  br i1 %144, label %145, label %197

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 24
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = mul nsw i32 %153, 4
  %155 = add nsw i32 %154, 0
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %152, i64 %156
  store i8 %151, i8* %157, align 1
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 16
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %4, align 8
  %165 = load i32, i32* %6, align 4
  %166 = mul nsw i32 %165, 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  store i8 %163, i8* %169, align 1
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 8
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %4, align 8
  %177 = load i32, i32* %6, align 4
  %178 = mul nsw i32 %177, 4
  %179 = add nsw i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  store i8 %175, i8* %181, align 1
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 0
  %187 = trunc i32 %186 to i8
  %188 = load i8*, i8** %4, align 8
  %189 = load i32, i32* %6, align 4
  %190 = mul nsw i32 %189, 4
  %191 = add nsw i32 %190, 3
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %188, i64 %192
  store i8 %187, i8* %193, align 1
  br label %194

194:                                              ; preds = %145
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %142

197:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %17
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32* @stb__fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @stb__sha1(i8*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
