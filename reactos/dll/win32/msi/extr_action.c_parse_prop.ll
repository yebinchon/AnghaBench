; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_parse_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_parse_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @parse_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_prop(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 130, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %143, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %146

21:                                               ; preds = %17
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %128 [
    i32 128, label %24
    i32 129, label %54
    i32 130, label %85
  ]

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %49 [
    i32 32, label %28
    i32 34, label %33
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %13, align 4
  br label %53

33:                                               ; preds = %24
  store i32 130, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 34
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %12, align 4
  br label %48

45:                                               ; preds = %36, %33
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %53

49:                                               ; preds = %24
  store i32 129, i32* %7, align 4
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %49, %48, %28
  br label %129

54:                                               ; preds = %21
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  switch i32 %57, label %76 [
    i32 34, label %58
    i32 32, label %68
  ]

58:                                               ; preds = %54
  store i32 130, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %12, align 4
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %84

68:                                               ; preds = %54
  store i32 128, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %147

72:                                               ; preds = %68
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %84

76:                                               ; preds = %54
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %72, %67
  br label %129

85:                                               ; preds = %21
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %119 [
    i32 34, label %89
    i32 32, label %105
  ]

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 34
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %12, align 4
  br label %104

101:                                              ; preds = %92, %89
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %127

105:                                              ; preds = %85
  store i32 128, i32* %7, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %105
  br label %147

115:                                              ; preds = %111, %108
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %127

119:                                              ; preds = %85
  store i32 129, i32* %7, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %124, %115, %104
  br label %129

128:                                              ; preds = %21
  br label %129

129:                                              ; preds = %128, %127, %84, %53
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %9, align 8
  store i8 %134, i8* %135, align 1
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %140, %137
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  br label %17

146:                                              ; preds = %17
  br label %147

147:                                              ; preds = %146, %114, %71
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %5, align 8
  store i8 0, i8* %151, align 1
  br label %154

152:                                              ; preds = %147
  %153 = load i8*, i8** %9, align 8
  store i8 0, i8* %153, align 1
  br label %154

154:                                              ; preds = %152, %150
  %155 = load i32, i32* %12, align 4
  %156 = load i32*, i32** %6, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i8*, i8** %8, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  ret i32 %162
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
