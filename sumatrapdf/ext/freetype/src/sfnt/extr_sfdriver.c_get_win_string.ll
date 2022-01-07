; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/sfnt/extr_sfdriver.c_get_win_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/sfnt/extr_sfdriver.c_get_win_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i8*, i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"get_win_string: Character 0x%X invalid in PS name string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 (i64)*, i64)* @get_win_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_win_string(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i64 (i64)* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64 (i64)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i64 (i64)* %3, i64 (i64)** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %17, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @FT_UNUSED(i32 %18)
  %20 = load i8*, i8** %13, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 2
  %25 = add nsw i32 %24, 1
  %26 = call i64 @FT_ALLOC(i8* %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %121

29:                                               ; preds = %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @FT_STREAM_SEEK(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @FT_FRAME_ENTER(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  br label %110

42:                                               ; preds = %35
  %43 = load i8*, i8** %13, align 8
  store i8* %43, i8** %14, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i64*
  store i64* %47, i64** %15, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %93, %42
  %53 = load i32, i32* %16, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %52
  %56 = load i64*, i64** %15, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i64 (i64)*, i64 (i64)** %10, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 %61(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i64*, i64** %15, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i8
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %14, align 8
  store i8 %71, i8* %72, align 1
  br label %92

74:                                               ; preds = %60, %55
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i64*, i64** %15, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = mul i32 %81, 256
  %83 = load i64*, i64** %15, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = add i32 %82, %86
  %88 = zext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @FT_TRACE0(i8* %89)
  br label %91

91:                                               ; preds = %77, %74
  br label %98

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %16, align 4
  %96 = load i64*, i64** %15, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 2
  store i64* %97, i64** %15, align 8
  br label %52

98:                                               ; preds = %91, %52
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %14, align 8
  store i8 0, i8* %102, align 1
  br label %103

103:                                              ; preds = %101, %98
  %104 = call i32 (...) @FT_FRAME_EXIT()
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %13, align 8
  store i8* %108, i8** %6, align 8
  br label %121

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %41
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @FT_FREE(i8* %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @FT_FREE(i8* %119)
  store i8* null, i8** %6, align 8
  br label %121

121:                                              ; preds = %110, %107, %28
  %122 = load i8*, i8** %6, align 8
  ret i8* %122
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i64 @FT_ALLOC(i8*, i32) #1

declare dso_local i64 @FT_STREAM_SEEK(i64) #1

declare dso_local i64 @FT_FRAME_ENTER(i32) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @FT_FRAME_EXIT(...) #1

declare dso_local i32 @FT_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
