; ModuleID = '/home/carl/AnghaBench/tig/src/extr_draw.c_draw_text_overflow.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_draw.c_draw_text_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }

@LINE_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i8*, i32, i32, i32)* @draw_text_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @draw_text_overflow(%struct.view* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.view*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.view*, %struct.view** %7, align 8
  %29 = call i64 @VIEW_MAX_LEN(%struct.view* %28)
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @MIN(i64 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i64 @utf8_length(i8** %15, i32 -1, i32 0, i32* %16, i32 %33, i32* %17, i32 0, i32 1)
  store i64 %34, i64* %18, align 8
  %35 = load %struct.view*, %struct.view** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @draw_text_expanded(%struct.view* %35, i32 %36, i8* %37, i32 -1, i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %68

46:                                               ; preds = %24
  %47 = load i64, i64* %18, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %49, i8** %8, align 8
  %50 = load i32, i32* @LINE_OVERFLOW, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %5
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.view*, %struct.view** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @draw_text(%struct.view* %57, i32 %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %68

63:                                               ; preds = %56, %51
  %64 = load %struct.view*, %struct.view** %7, align 8
  %65 = call i64 @VIEW_MAX_LEN(%struct.view* %64)
  %66 = icmp sle i64 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %63, %62, %45
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i64 @VIEW_MAX_LEN(%struct.view*) #1

declare dso_local i64 @utf8_length(i8**, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @draw_text_expanded(%struct.view*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @draw_text(%struct.view*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
