; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_stringfile.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_stringfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @stb_stringfile(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @stb__fopen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  store i8** null, i8*** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %153

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @stb_filelen(i32* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @fread(i8* %27, i32 1, i64 %28, i32* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %148, %19
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %37, 2
  br i1 %38, label %39, label %151

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %9, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = load i8**, i8*** %8, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  store i64 1, i64* %11, align 8
  br label %48

48:                                               ; preds = %102, %47
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 13
  br i1 %61, label %62, label %102

62:                                               ; preds = %57, %52
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 %66, %70
  %72 = icmp eq i32 %71, 23
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %13, align 4
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i8*, i8** %9, align 8
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %62
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i64, i64* %12, align 8
  %91 = icmp eq i64 %90, 1
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8**, i8*** %8, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  store i8* %94, i8** %97, align 8
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %98, %84
  br label %102

102:                                              ; preds = %101, %57
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  br label %48

105:                                              ; preds = %48
  %106 = load i64, i64* %12, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %147

108:                                              ; preds = %105
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, 1
  %111 = mul i64 8, %110
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %111, %112
  %114 = add i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = call i64 @malloc(i32 %115)
  %117 = inttoptr i64 %116 to i8**
  store i8** %117, i8*** %8, align 8
  %118 = load i8**, i8*** %8, align 8
  %119 = icmp ne i8** %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %108
  store i8** null, i8*** %3, align 8
  br label %153

121:                                              ; preds = %108
  %122 = load i8**, i8*** %8, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  store i8* null, i8** %124, align 8
  %125 = load i8**, i8*** %8, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %126, 1
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %7, align 8
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  %132 = call i32 @memcpy(i8** %128, i8* %129, i64 %131)
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i8**, i8*** %8, align 8
  %136 = load i64, i64* %11, align 8
  %137 = add i64 %136, 1
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = bitcast i8** %138 to i8*
  store i8* %139, i8** %7, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %121
  %143 = load i64, i64* %11, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i32*, i32** %5, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %121
  br label %147

147:                                              ; preds = %146, %105
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %12, align 8
  br label %36

151:                                              ; preds = %36
  %152 = load i8**, i8*** %8, align 8
  store i8** %152, i8*** %3, align 8
  br label %153

153:                                              ; preds = %151, %120, %18
  %154 = load i8**, i8*** %3, align 8
  ret i8** %154
}

declare dso_local i32* @stb__fopen(i8*, i8*) #1

declare dso_local i64 @stb_filelen(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memcpy(i8**, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
