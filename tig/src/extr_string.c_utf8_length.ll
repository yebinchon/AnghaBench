; ModuleID = '/home/carl/AnghaBench/tig/src/extr_string.c_utf8_length.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_string.c_utf8_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_length(i8** %0, i32 %1, i64 %2, i32* %3, i64 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8** %0, i8*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i8**, i8*** %9, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %17, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i8*, i8** %17, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 0)
  br label %36

31:                                               ; preds = %8
  %32 = load i8*, i8** %17, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i8* [ %30, %28 ], [ %35, %31 ]
  store i8* %37, i8** %18, align 8
  store i8 0, i8* %19, align 1
  store i64 0, i64* %20, align 8
  %38 = load i32*, i32** %12, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %14, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %149, %36
  %41 = load i8*, i8** %17, align 8
  %42 = load i8*, i8** %18, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %150

44:                                               ; preds = %40
  %45 = load i8*, i8** %17, align 8
  %46 = call zeroext i8 @utf8_char_length(i8* %45)
  store i8 %46, i8* %21, align 1
  %47 = load i8*, i8** %17, align 8
  %48 = load i8, i8* %21, align 1
  %49 = zext i8 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8*, i8** %18, align 8
  %53 = icmp ugt i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %150

55:                                               ; preds = %44
  %56 = load i8*, i8** %17, align 8
  %57 = load i8, i8* %21, align 1
  %58 = call i64 @utf8_to_unicode(i8* %56, i8 zeroext %57)
  store i64 %58, i64* %23, align 8
  %59 = load i64, i64* %23, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %150

62:                                               ; preds = %55
  %63 = load i64, i64* %23, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @unicode_width(i64 %63, i32 %64)
  store i64 %65, i64* %22, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ule i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* %22, align 8
  br label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %11, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  %78 = load i64, i64* %11, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %11, align 8
  %80 = load i8, i8* %21, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8**, i8*** %9, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = sext i32 %81 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %82, align 8
  br label %86

86:                                               ; preds = %76, %62
  %87 = load i64, i64* %22, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, %87
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load i64, i64* %13, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %86
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %13, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %95
  %102 = load i32*, i32** %14, align 8
  store i32 1, i32* %102, align 4
  %103 = load i64, i64* %22, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 %106, %103
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %101
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %13, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load i8, i8* %19, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8*, i8** %17, align 8
  %121 = sext i32 %119 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8* %123, i8** %17, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, %124
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  br label %130

130:                                              ; preds = %117, %111, %101
  br label %150

131:                                              ; preds = %95, %86
  %132 = load i8, i8* %21, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8*, i8** %17, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %17, align 8
  %137 = load i64, i64* %22, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i8, i8* %21, align 1
  store i8 %140, i8* %19, align 1
  %141 = load i64, i64* %22, align 8
  store i64 %141, i64* %20, align 8
  br label %149

142:                                              ; preds = %131
  %143 = load i8, i8* %21, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* %19, align 1
  %146 = zext i8 %145 to i32
  %147 = add nsw i32 %146, %144
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %19, align 1
  br label %149

149:                                              ; preds = %142, %139
  br label %40

150:                                              ; preds = %130, %61, %54, %40
  %151 = load i8*, i8** %17, align 8
  %152 = load i8**, i8*** %9, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = ptrtoint i8* %151 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  ret i64 %156
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local zeroext i8 @utf8_char_length(i8*) #1

declare dso_local i64 @utf8_to_unicode(i8*, i8 zeroext) #1

declare dso_local i64 @unicode_width(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
