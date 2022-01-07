; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sds.c_sdssplitlen.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sds.c_sdssplitlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @sdssplitlen(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 5, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  store i32** null, i32*** %6, align 8
  br label %172

25:                                               ; preds = %21
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32** @s_malloc(i32 %29)
  store i32** %30, i32*** %16, align 8
  %31 = load i32**, i32*** %16, align 8
  %32 = icmp eq i32** %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32** null, i32*** %6, align 8
  br label %172

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32**, i32*** %16, align 8
  store i32** %39, i32*** %6, align 8
  br label %172

40:                                               ; preds = %34
  store i64 0, i64* %15, align 8
  br label %41

41:                                               ; preds = %123, %40
  %42 = load i64, i64* %15, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sub nsw i32 %43, %45
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %42, %47
  br i1 %48, label %49, label %126

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 2
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %13, align 4
  %57 = load i32**, i32*** %16, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32** @s_realloc(i32** %57, i32 %61)
  store i32** %62, i32*** %17, align 8
  %63 = load i32**, i32*** %17, align 8
  %64 = icmp eq i32** %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %153

66:                                               ; preds = %54
  %67 = load i32**, i32*** %17, align 8
  store i32** %67, i32*** %16, align 8
  br label %68

68:                                               ; preds = %66, %49
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %15, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %76, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %71, %68
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @memcmp(i8* %85, i8* %86, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %82, %71
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %14, align 8
  %96 = sub nsw i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32* @sdsnewlen(i8* %93, i32 %97)
  %99 = load i32**, i32*** %16, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* %98, i32** %102, align 8
  %103 = load i32**, i32*** %16, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %90
  br label %153

110:                                              ; preds = %90
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  %113 = load i64, i64* %15, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = sub nsw i64 %120, 1
  store i64 %121, i64* %15, align 8
  br label %122

122:                                              ; preds = %110, %82
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %15, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %15, align 8
  br label %41

126:                                              ; preds = %41
  %127 = load i8*, i8** %7, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %14, align 8
  %133 = sub nsw i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32* @sdsnewlen(i8* %129, i32 %134)
  %136 = load i32**, i32*** %16, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  store i32* %135, i32** %139, align 8
  %140 = load i32**, i32*** %16, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %126
  br label %153

147:                                              ; preds = %126
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32*, i32** %11, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32**, i32*** %16, align 8
  store i32** %152, i32*** %6, align 8
  br label %172

153:                                              ; preds = %146, %109, %65
  store i32 0, i32* %18, align 4
  br label %154

154:                                              ; preds = %165, %153
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i32**, i32*** %16, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @sdsfree(i32* %163)
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %18, align 4
  br label %154

168:                                              ; preds = %154
  %169 = load i32**, i32*** %16, align 8
  %170 = call i32 @s_free(i32** %169)
  %171 = load i32*, i32** %11, align 8
  store i32 0, i32* %171, align 4
  store i32** null, i32*** %6, align 8
  br label %172

172:                                              ; preds = %168, %147, %37, %33, %24
  %173 = load i32**, i32*** %6, align 8
  ret i32** %173
}

declare dso_local i32** @s_malloc(i32) #1

declare dso_local i32** @s_realloc(i32**, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @sdsnewlen(i8*, i32) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32 @s_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
