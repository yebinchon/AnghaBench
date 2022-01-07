; ModuleID = '/home/carl/AnghaBench/tig/src/extr_pager.c_pager_wrap_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_pager.c_pager_wrap_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i64, i32 }
%struct.view = type { i32, %struct.line*, i64 }

@opt_tab_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line* (%struct.view*, i8*, i32)* @pager_wrap_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line* @pager_wrap_line(%struct.view* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %73, %3
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ true, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %86

25:                                               ; preds = %23
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* @opt_tab_size, align 4
  %34 = load %struct.view*, %struct.view** %4, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %36, %42
  %44 = call i64 @string_expanded_length(i8* %31, i64 %32, i32 %33, i64 %43)
  store i64 %44, i64* %12, align 8
  %45 = load %struct.view*, %struct.view** %4, align 8
  %46 = load %struct.view*, %struct.view** %4, align 8
  %47 = getelementptr inbounds %struct.view, %struct.view* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.line* @add_line_text_at_(%struct.view* %45, i32 %48, i8* %49, i64 %50, i32 %51, i32 1, i32 %52)
  store %struct.line* %53, %struct.line** %13, align 8
  %54 = load %struct.line*, %struct.line** %13, align 8
  %55 = icmp ne %struct.line* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %25
  br label %86

57:                                               ; preds = %25
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load %struct.view*, %struct.view** %4, align 8
  %62 = getelementptr inbounds %struct.view, %struct.view* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load %struct.line*, %struct.line** %13, align 8
  %71 = getelementptr inbounds %struct.line, %struct.line* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.line*, %struct.line** %13, align 8
  %76 = getelementptr inbounds %struct.line, %struct.line* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.line*, %struct.line** %13, align 8
  %79 = getelementptr inbounds %struct.line, %struct.line* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %5, align 8
  br label %16

86:                                               ; preds = %56, %23
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.view*, %struct.view** %4, align 8
  %91 = getelementptr inbounds %struct.view, %struct.view* %90, i32 0, i32 1
  %92 = load %struct.line*, %struct.line** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.line, %struct.line* %92, i64 %93
  br label %96

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %89
  %97 = phi %struct.line* [ %94, %89 ], [ null, %95 ]
  ret %struct.line* %97
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @string_expanded_length(i8*, i64, i32, i64) #1

declare dso_local %struct.line* @add_line_text_at_(%struct.view*, i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
