; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxwriter.c_get_escaped_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxwriter.c_get_escaped_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_escaped_string.ltW = internal constant [4 x i8] c"&lt;", align 1
@get_escaped_string.ampW = internal constant [5 x i8] c"&amp;", align 1
@get_escaped_string.equotW = internal constant [6 x i8] c"&quot;", align 1
@get_escaped_string.gtW = internal constant [4 x i8] c"&gt;", align 1
@EscapeValue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32*)* @get_escaped_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_escaped_string(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 100, i32* %7, align 4
  store i32 10, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 2, %17
  %19 = call i32 @max(i32 %18, i32 100)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = call i8* @heap_alloc(i32 %23)
  store i8* %24, i8** %12, align 8
  store i8* %24, i8** %11, align 8
  br label %25

25:                                               ; preds = %99, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %104

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 10
  %36 = sext i32 %35 to i64
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %28
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = call i8* @heap_realloc(i8* %47, i32 %51)
  store i8* %52, i8** %12, align 8
  store i8* %52, i8** %11, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %11, align 8
  br label %57

57:                                               ; preds = %38, %28
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %94 [
    i32 60, label %61
    i32 38, label %68
    i32 62, label %75
    i32 34, label %82
  ]

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @memcpy(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_escaped_string.ltW, i64 0, i64 0), i32 4)
  %64 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_escaped_string.ltW, i64 0, i64 0))
  %65 = load i8*, i8** %11, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %11, align 8
  br label %99

68:                                               ; preds = %57
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @memcpy(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_escaped_string.ampW, i64 0, i64 0), i32 5)
  %71 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_escaped_string.ampW, i64 0, i64 0))
  %72 = load i8*, i8** %11, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %11, align 8
  br label %99

75:                                               ; preds = %57
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @memcpy(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_escaped_string.gtW, i64 0, i64 0), i32 4)
  %78 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_escaped_string.gtW, i64 0, i64 0))
  %79 = load i8*, i8** %11, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %11, align 8
  br label %99

82:                                               ; preds = %57
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @EscapeValue, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @memcpy(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_escaped_string.equotW, i64 0, i64 0), i32 6)
  %89 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_escaped_string.equotW, i64 0, i64 0))
  %90 = load i8*, i8** %11, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %11, align 8
  br label %99

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %57, %93
  %95 = load i8*, i8** %4, align 8
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  store i8 %96, i8* %97, align 1
  br label %99

99:                                               ; preds = %94, %86, %75, %68, %61
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %9, align 4
  br label %25

104:                                              ; preds = %25
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = load i32*, i32** %6, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %11, align 8
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %12, align 8
  ret i8* %114
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i8* @heap_realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
