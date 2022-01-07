; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_utf8_mbstowcs_compose.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_utf8.c_utf8_mbstowcs_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i32)* @utf8_mbstowcs_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_mbstowcs_compose(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [2 x i8], align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %15, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @get_length_mbs_utf8_compose(i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %133

32:                                               ; preds = %5
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %122, %72, %50, %32
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %123

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %16, align 1
  %42 = load i8, i8* %16, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp slt i32 %43, 128
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = icmp uge i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  br label %133

50:                                               ; preds = %45
  %51 = load i8, i8* %16, align 1
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  store i8 %51, i8* %53, align 1
  br label %34

55:                                               ; preds = %38
  %56 = load i8, i8* %16, align 1
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @decode_utf8_char(i8 zeroext %56, i8** %8, i8* %57)
  store i32 %58, i32* %12, align 4
  %59 = icmp ule i32 %58, 65535
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 1
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %69 = call signext i8 @wine_compose(i8* %68)
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 %69, i8* %70, align 1
  %71 = icmp ne i8 %69, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -1
  store i8 %74, i8* %76, align 1
  br label %34

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = icmp uge i8* %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 -1, i32* %6, align 4
  br label %133

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 %85, i8* %86, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %10, align 8
  store i8 %85, i8* %87, align 1
  br label %122

89:                                               ; preds = %55
  %90 = load i32, i32* %12, align 4
  %91 = icmp ule i32 %90, 1114111
  br i1 %91, label %92, label %114

92:                                               ; preds = %89
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 -1
  %96 = icmp uge i8* %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 -1, i32* %6, align 4
  br label %133

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = sub i32 %99, 65536
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = lshr i32 %101, 10
  %103 = or i32 55296, %102
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i32, i32* %12, align 4
  %108 = and i32 %107, 1023
  %109 = or i32 56320, %108
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  store i8 %110, i8* %111, align 1
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %113, align 1
  br label %121

114:                                              ; preds = %89
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 -2, i32* %6, align 4
  br label %133

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %98
  br label %122

122:                                              ; preds = %121, %83
  br label %34

123:                                              ; preds = %34
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = load i8*, i8** %15, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sub nsw i64 %125, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %123, %119, %97, %82, %49, %27
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @get_length_mbs_utf8_compose(i32, i8*, i32) #1

declare dso_local i32 @decode_utf8_char(i8 zeroext, i8**, i8*) #1

declare dso_local signext i8 @wine_compose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
