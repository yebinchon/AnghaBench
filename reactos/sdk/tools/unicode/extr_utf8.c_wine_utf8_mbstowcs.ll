; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_wine_utf8_mbstowcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_wine_utf8_mbstowcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_COMPOSITE = common dso_local global i32 0, align 4
@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wine_utf8_mbstowcs(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8, align 1
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %13, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %14, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MB_COMPOSITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @utf8_mbstowcs_compose(i32 %29, i8* %30, i32 %31, i32* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %122

35:                                               ; preds = %5
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @get_length_mbs_utf8(i32 %39, i8* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %122

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %105, %61, %43
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ult i8* %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %106

54:                                               ; preds = %52
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  %57 = load i8, i8* %55, align 1
  store i8 %57, i8* %15, align 1
  %58 = load i8, i8* %15, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp slt i32 %59, 128
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i8, i8* %15, align 1
  %63 = zext i8 %62 to i32
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  br label %44

66:                                               ; preds = %54
  %67 = load i8, i8* %15, align 1
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @decode_utf8_char(i8 zeroext %67, i8** %8, i8* %68)
  store i32 %69, i32* %12, align 4
  %70 = icmp ule i32 %69, 65535
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %105

75:                                               ; preds = %66
  %76 = load i32, i32* %12, align 4
  %77 = icmp ule i32 %76, 1114111
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 -1
  %82 = icmp eq i32* %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 -1, i32* %6, align 4
  br label %122

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  %86 = sub i32 %85, 65536
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = lshr i32 %87, 10
  %89 = or i32 55296, %88
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 1023
  %94 = or i32 56320, %93
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  br label %104

97:                                               ; preds = %75
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 -2, i32* %6, align 4
  br label %122

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %71
  br label %44

106:                                              ; preds = %52
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = icmp ult i8* %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 -1, i32* %6, align 4
  br label %122

111:                                              ; preds = %106
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = load i32*, i32** %14, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = sub nsw i64 %113, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %111, %110, %102, %83, %38, %28
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @utf8_mbstowcs_compose(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @get_length_mbs_utf8(i32, i8*, i32) #1

declare dso_local i32 @decode_utf8_char(i8 zeroext, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
