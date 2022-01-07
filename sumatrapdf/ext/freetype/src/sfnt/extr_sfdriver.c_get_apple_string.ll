; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/sfnt/extr_sfdriver.c_get_apple_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/sfnt/extr_sfdriver.c_get_apple_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i8*, i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"get_apple_string: Character `%c' (0x%X) invalid in PS name string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 (i32)*, i64)* @get_apple_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_apple_string(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i64 (i32)* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64 (i32)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i64 (i32)* %3, i64 (i32)** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %17, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @FT_UNUSED(i32 %18)
  %20 = load i8*, i8** %13, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i64 @FT_ALLOC(i8* %20, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %106

28:                                               ; preds = %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @FT_STREAM_SEEK(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @FT_FRAME_ENTER(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28
  br label %95

41:                                               ; preds = %34
  %42 = load i8*, i8** %13, align 8
  store i8* %42, i8** %14, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %15, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %16, align 8
  br label %50

50:                                               ; preds = %78, %41
  %51 = load i64, i64* %16, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = load i64 (i32)*, i64 (i32)** %10, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i64 %54(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %14, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %14, align 8
  store i8 %62, i8* %63, align 1
  br label %77

65:                                               ; preds = %53
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @FT_TRACE0(i8* %74)
  br label %76

76:                                               ; preds = %68, %65
  br label %83

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %16, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %16, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %15, align 8
  br label %50

83:                                               ; preds = %76, %50
  %84 = load i64, i64* %16, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %14, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %86, %83
  %89 = call i32 (...) @FT_FRAME_EXIT()
  %90 = load i64, i64* %16, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %13, align 8
  store i8* %93, i8** %6, align 8
  br label %106

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %40
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @FT_FREE(i8* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @FT_FREE(i8* %104)
  store i8* null, i8** %6, align 8
  br label %106

106:                                              ; preds = %95, %92, %27
  %107 = load i8*, i8** %6, align 8
  ret i8* %107
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i64 @FT_ALLOC(i8*, i64) #1

declare dso_local i64 @FT_STREAM_SEEK(i64) #1

declare dso_local i64 @FT_FRAME_ENTER(i64) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @FT_FRAME_EXIT(...) #1

declare dso_local i32 @FT_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
