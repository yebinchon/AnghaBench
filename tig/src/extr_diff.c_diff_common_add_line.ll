; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_add_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_add_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { %struct.box* }
%struct.box = type { i32, i32 }
%struct.view = type { i32 }
%struct.diff_stat_context = type { i32, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line* (%struct.view*, i8*, i32, %struct.diff_stat_context*)* @diff_common_add_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line* @diff_common_add_line(%struct.view* %0, i8* %1, i32 %2, %struct.diff_stat_context* %3) #0 {
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.view*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.diff_stat_context*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.line*, align 8
  %13 = alloca %struct.box*, align 8
  store %struct.view* %0, %struct.view** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.diff_stat_context* %3, %struct.diff_stat_context** %9, align 8
  %14 = load %struct.diff_stat_context*, %struct.diff_stat_context** %9, align 8
  %15 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.diff_stat_context*, %struct.diff_stat_context** %9, align 8
  %20 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @argv_to_string_alloc(i64 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i8* [ %22, %18 ], [ null, %23 ]
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %29, %28 ], [ %31, %30 ]
  store i8* %33, i8** %11, align 8
  %34 = load %struct.view*, %struct.view** %6, align 8
  %35 = load %struct.view*, %struct.view** %6, align 8
  %36 = getelementptr inbounds %struct.view, %struct.view* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.diff_stat_context*, %struct.diff_stat_context** %9, align 8
  %41 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.line* @add_line_text_at(%struct.view* %34, i32 %37, i8* %38, i32 %39, i32 %42)
  store %struct.line* %43, %struct.line** %12, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load %struct.diff_stat_context*, %struct.diff_stat_context** %9, align 8
  %47 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @argv_free(i64 %48)
  %50 = load %struct.line*, %struct.line** %12, align 8
  %51 = icmp ne %struct.line* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %32
  store %struct.line* null, %struct.line** %5, align 8
  br label %82

53:                                               ; preds = %32
  %54 = load %struct.line*, %struct.line** %12, align 8
  %55 = getelementptr inbounds %struct.line, %struct.line* %54, i32 0, i32 0
  %56 = load %struct.box*, %struct.box** %55, align 8
  store %struct.box* %56, %struct.box** %13, align 8
  %57 = load %struct.diff_stat_context*, %struct.diff_stat_context** %9, align 8
  %58 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.box*, %struct.box** %13, align 8
  %63 = getelementptr inbounds %struct.box, %struct.box* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.diff_stat_context*, %struct.diff_stat_context** %9, align 8
  %66 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.diff_stat_context*, %struct.diff_stat_context** %9, align 8
  %69 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memcpy(i32 %64, i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %61, %53
  %76 = load %struct.diff_stat_context*, %struct.diff_stat_context** %9, align 8
  %77 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.box*, %struct.box** %13, align 8
  %80 = getelementptr inbounds %struct.box, %struct.box* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.line*, %struct.line** %12, align 8
  store %struct.line* %81, %struct.line** %5, align 8
  br label %82

82:                                               ; preds = %75, %52
  %83 = load %struct.line*, %struct.line** %5, align 8
  ret %struct.line* %83
}

declare dso_local i8* @argv_to_string_alloc(i64, i8*) #1

declare dso_local %struct.line* @add_line_text_at(%struct.view*, i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @argv_free(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
