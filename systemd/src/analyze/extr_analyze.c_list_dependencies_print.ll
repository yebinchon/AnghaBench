; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_list_dependencies_print.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_list_dependencies_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_times = type { i64, i64, i64 }
%struct.boot_times = type { i64 }

@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SPECIAL_GLYPH_TREE_VERTICAL = common dso_local global i32 0, align 4
@SPECIAL_GLYPH_TREE_SPACE = common dso_local global i32 0, align 4
@SPECIAL_GLYPH_TREE_RIGHT = common dso_local global i32 0, align 4
@SPECIAL_GLYPH_TREE_BRANCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s%s @%s +%s%s\00", align 1
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s @%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, %struct.unit_times*, %struct.boot_times*)* @list_dependencies_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_dependencies_print(i8* %0, i32 %1, i32 %2, i32 %3, %struct.unit_times* %4, %struct.boot_times* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.unit_times*, align 8
  %12 = alloca %struct.boot_times*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.unit_times* %4, %struct.unit_times** %11, align 8
  store %struct.boot_times* %5, %struct.boot_times** %12, align 8
  %17 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %43, %6
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sub i32 %30, 1
  %32 = shl i32 1, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SPECIAL_GLYPH_TREE_VERTICAL, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @SPECIAL_GLYPH_TREE_SPACE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i8* @special_glyph(i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %13, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @SPECIAL_GLYPH_TREE_RIGHT, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SPECIAL_GLYPH_TREE_BRANCH, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i8* @special_glyph(i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load %struct.unit_times*, %struct.unit_times** %11, align 8
  %58 = icmp ne %struct.unit_times* %57, null
  br i1 %58, label %59, label %111

59:                                               ; preds = %53
  %60 = load %struct.unit_times*, %struct.unit_times** %11, align 8
  %61 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = call i8* (...) @ansi_highlight_red()
  %66 = load i8*, i8** %7, align 8
  %67 = trunc i64 %18 to i32
  %68 = load %struct.unit_times*, %struct.unit_times** %11, align 8
  %69 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.boot_times*, %struct.boot_times** %12, align 8
  %72 = getelementptr inbounds %struct.boot_times, %struct.boot_times* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load i32, i32* @USEC_PER_MSEC, align 4
  %76 = call i8* @format_timespan(i8* %20, i32 %67, i64 %74, i32 %75)
  %77 = trunc i64 %22 to i32
  %78 = load %struct.unit_times*, %struct.unit_times** %11, align 8
  %79 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @USEC_PER_MSEC, align 4
  %82 = call i8* @format_timespan(i8* %23, i32 %77, i64 %80, i32 %81)
  %83 = call i32 (...) @ansi_normal()
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %66, i8* %76, i8* %82, i32 %83)
  br label %110

85:                                               ; preds = %59
  %86 = load %struct.unit_times*, %struct.unit_times** %11, align 8
  %87 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.boot_times*, %struct.boot_times** %12, align 8
  %90 = getelementptr inbounds %struct.boot_times, %struct.boot_times* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %85
  %94 = load i8*, i8** %7, align 8
  %95 = trunc i64 %18 to i32
  %96 = load %struct.unit_times*, %struct.unit_times** %11, align 8
  %97 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.boot_times*, %struct.boot_times** %12, align 8
  %100 = getelementptr inbounds %struct.boot_times, %struct.boot_times* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = load i32, i32* @USEC_PER_MSEC, align 4
  %104 = call i8* @format_timespan(i8* %20, i32 %95, i64 %102, i32 %103)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %94, i8* %104)
  br label %109

106:                                              ; preds = %85
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %93
  br label %110

110:                                              ; preds = %109, %64
  br label %114

111:                                              ; preds = %53
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %111, %110
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %116)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @special_glyph(i32) #2

declare dso_local i8* @ansi_highlight_red(...) #2

declare dso_local i8* @format_timespan(i8*, i32, i64, i32) #2

declare dso_local i32 @ansi_normal(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
