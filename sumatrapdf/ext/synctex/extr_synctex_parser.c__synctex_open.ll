; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_open.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_synctex_open(i8* %0, i8* %1, i8** %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @__synctex_open(i8* %19, i8** %20, i32* %21, i64 %22, i32* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %6
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %123, label %31

31:                                               ; preds = %27, %6
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %123

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %123

38:                                               ; preds = %34
  store i8* null, i8** %15, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @_synctex_last_path_component(i8* %39)
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = load i8*, i8** %16, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %42, %44
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %17, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @_synctex_path_is_absolute(i8* %48)
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %38
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %17, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %52, %38
  %59 = load i64, i64* %17, align 8
  %60 = call i64 @malloc(i64 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %15, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %122

63:                                               ; preds = %58
  %64 = load i64, i64* %18, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %15, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 0, i8* %68, align 1
  br label %84

69:                                               ; preds = %63
  %70 = load i8*, i8** %15, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i8* @strcpy(i8* %71, i8* %72)
  %74 = icmp ne i8* %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 -4, i32* %7, align 4
  br label %125

76:                                               ; preds = %69
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = getelementptr inbounds i8, i8* %77, i64 %82
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %76, %66
  %85 = load i8*, i8** %15, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i8* @strcat(i8* %86, i8* %87)
  %89 = icmp eq i8* %85, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %84
  %91 = load i8*, i8** %15, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @SYNCTEX_IS_PATH_SEPARATOR(i8 signext %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %90
  %101 = load i8*, i8** %15, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = call i8* @strcat(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %104 = icmp ne i8* %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 -2, i32* %7, align 4
  br label %125

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = call i8* @strcat(i8* %109, i8* %110)
  %112 = icmp ne i8* %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 -3, i32* %7, align 4
  br label %125

114:                                              ; preds = %107
  %115 = load i8*, i8** %15, align 8
  %116 = load i8**, i8*** %10, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @__synctex_open(i8* %115, i8** %116, i32* %117, i64 %118, i32* %119)
  store i32 %120, i32* %7, align 4
  br label %125

121:                                              ; preds = %84
  br label %122

122:                                              ; preds = %121, %58
  store i32 -1, i32* %7, align 4
  br label %125

123:                                              ; preds = %34, %31, %27
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %123, %122, %114, %113, %105, %75
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @__synctex_open(i8*, i8**, i32*, i64, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @_synctex_last_path_component(i8*) #1

declare dso_local i64 @_synctex_path_is_absolute(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i8* @strcat(i8*, i8*) #1

declare dso_local i32 @SYNCTEX_IS_PATH_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
