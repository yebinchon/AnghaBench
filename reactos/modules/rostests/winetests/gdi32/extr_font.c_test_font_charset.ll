; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_test_font_charset.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_test_font_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charset_data = type { i64, i32, [128 x i32], [128 x i32] }

@test_font_charset.cd = internal global [3 x %struct.charset_data] [%struct.charset_data { i64 131, i32 1252, [128 x i32] zeroinitializer, [128 x i32] zeroinitializer }, %struct.charset_data { i64 129, i32 1251, [128 x i32] zeroinitializer, [128 x i32] zeroinitializer }, %struct.charset_data { i64 128, i32 130, [128 x i32] zeroinitializer, [128 x i32] zeroinitializer }], align 16
@pGetGlyphIndicesA = common dso_local global i32 0, align 4
@pGetGlyphIndicesW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Skipping the font charset test on a Win9x platform\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Arial is not installed\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Wingdings\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Symbol or Wingdings is not installed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"%d: indices don't match\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"0 vs 1: indices shouldn't match\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"0 vs 2: indices shouldn't match\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"1 vs 2: indices shouldn't match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_font_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_font_charset() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @pGetGlyphIndicesA, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @pGetGlyphIndicesW, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4, %0
  %8 = call i32 @win_skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %106

9:                                                ; preds = %4
  %10 = call i32 @is_font_installed(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 @skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %106

14:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %91, %14
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 3
  br i1 %18, label %19, label %94

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 16
  %25 = icmp eq i64 %24, 128
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = call i32 @is_font_installed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = call i32 @is_font_installed(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %94

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 16
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds [128 x i32], [128 x i32]* %49, i64 0, i64 0
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i64 @get_glyph_indices(i64 %40, i32 %45, i32* %50, i32 128, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %35
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 16
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds [128 x i32], [128 x i32]* %68, i64 0, i64 0
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i64 @get_glyph_indices(i64 %59, i32 %64, i32* %69, i32 128, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %54
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds [128 x i32], [128 x i32]* %77, i64 0, i64 0
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.charset_data, %struct.charset_data* %81, i32 0, i32 3
  %83 = getelementptr inbounds [128 x i32], [128 x i32]* %82, i64 0, i64 0
  %84 = call i32 @memcmp(i32* %78, i32* %83, i32 512)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %1, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %73, %54, %35
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %15

94:                                               ; preds = %32, %15
  %95 = call i32 @memcmp(i32* getelementptr inbounds ([3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 0, i32 3, i64 0), i32* getelementptr inbounds ([3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 1, i32 3, i64 0), i32 512)
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %97 = load i32, i32* %1, align 4
  %98 = icmp sgt i32 %97, 2
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = call i32 @memcmp(i32* getelementptr inbounds ([3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 0, i32 3, i64 0), i32* getelementptr inbounds ([3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 2, i32 3, i64 0), i32 512)
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %102 = call i32 @memcmp(i32* getelementptr inbounds ([3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 1, i32 3, i64 0), i32* getelementptr inbounds ([3 x %struct.charset_data], [3 x %struct.charset_data]* @test_font_charset.cd, i64 0, i64 2, i32 3, i64 0), i32 512)
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %106

104:                                              ; preds = %94
  %105 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %7, %12, %104, %99
  ret void
}

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @is_font_installed(i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @get_glyph_indices(i64, i32, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
