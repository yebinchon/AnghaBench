; ModuleID = '/home/carl/AnghaBench/streem/src/extr_string.c_str_split.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_string.c_str_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"s|s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @str_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_split(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @strm_get_args(i32* %21, i32 %22, i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %13, i32* %14, i8** %9, i32* %10)
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i32 1, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %16, align 1
  %32 = load i8*, i8** %13, align 8
  store i8* %32, i8** %12, align 8
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8* %40, i8** %15, align 8
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %81, %28
  %42 = load i8*, i8** %13, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = load i8*, i8** %13, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* %16, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %45
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @memcmp(i8* %53, i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i8, i8* %16, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i8*, i8** %13, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65, %61, %58
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8* %79, i8** %12, align 8
  br label %80

80:                                               ; preds = %75, %52
  br label %81

81:                                               ; preds = %80, %45
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %13, align 8
  br label %41

84:                                               ; preds = %41
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @strm_ary_new(i32* null, i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32* @strm_ary_ptr(i32 %89)
  store i32* %90, i32** %19, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %16, align 1
  %94 = load i8*, i8** %11, align 8
  store i8* %94, i8** %12, align 8
  store i8* %94, i8** %13, align 8
  store i32 0, i32* %20, align 4
  br label %95

95:                                               ; preds = %146, %84
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = icmp ult i8* %96, %97
  br i1 %98, label %99, label %149

99:                                               ; preds = %95
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* %16, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %146

106:                                              ; preds = %99
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @memcmp(i8* %107, i8* %108, i32 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %106
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i8, i8* %16, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i8*, i8** %13, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %119, %115, %112
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 @strm_str_new(i8* %127, i32 %133)
  %135 = load i32*, i32** %19, align 8
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %20, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 %134, i32* %139, align 4
  br label %140

140:                                              ; preds = %126, %119
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8* %144, i8** %12, align 8
  br label %145

145:                                              ; preds = %140, %106
  br label %146

146:                                              ; preds = %145, %99
  %147 = load i8*, i8** %13, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %13, align 8
  br label %95

149:                                              ; preds = %95
  %150 = load i8*, i8** %11, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8* %153, i8** %15, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32 @strm_str_new(i8* %154, i32 %160)
  %162 = load i32*, i32** %19, align 8
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %20, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @strm_ary_value(i32 %167)
  %169 = load i32*, i32** %8, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* @STRM_OK, align 4
  ret i32 %170
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i8**, i32*, i8**, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strm_ary_new(i32*, i32) #1

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i32 @strm_str_new(i8*, i32) #1

declare dso_local i32 @strm_ary_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
