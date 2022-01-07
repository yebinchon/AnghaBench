; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_search_update.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_search_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@search_pos = common dso_local global i64 0, align 8
@search_string = common dso_local global i8* null, align 8
@search_prompt = common dso_local global i8* null, align 8
@hist_last = common dso_local global i32 0, align 4
@hist_pos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @search_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  store i64 0, i64* @search_pos, align 8
  %6 = load i8*, i8** @search_string, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** @search_prompt, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 63, i8* %9, align 1
  %10 = load i8*, i8** @search_prompt, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 32, i8* %11, align 1
  %12 = load i8*, i8** @search_prompt, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 0, i8* %13, align 1
  br label %71

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** @search_string, align 8
  %21 = load i64, i64* @search_pos, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %22, align 1
  %23 = load i8*, i8** @search_string, align 8
  %24 = load i64, i64* @search_pos, align 8
  %25 = add i64 %24, 1
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* %2, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** @search_prompt, align 8
  %30 = load i64, i64* @search_pos, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 %28, i8* %31, align 1
  %32 = load i8*, i8** @search_prompt, align 8
  %33 = load i64, i64* @search_pos, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 63, i8* %35, align 1
  %36 = load i8*, i8** @search_prompt, align 8
  %37 = load i64, i64* @search_pos, align 8
  %38 = add i64 %37, 2
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 32, i8* %39, align 1
  %40 = load i8*, i8** @search_prompt, align 8
  %41 = load i64, i64* @search_pos, align 8
  %42 = add i64 %41, 3
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i64, i64* @search_pos, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* @search_pos, align 8
  br label %70

46:                                               ; preds = %14
  %47 = load i64, i64* @search_pos, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i64, i64* @search_pos, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* @search_pos, align 8
  %52 = load i8*, i8** @search_string, align 8
  %53 = load i64, i64* @search_pos, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** @search_prompt, align 8
  %56 = load i64, i64* @search_pos, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 63, i8* %57, align 1
  %58 = load i8*, i8** @search_prompt, align 8
  %59 = load i64, i64* @search_pos, align 8
  %60 = add i64 %59, 1
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 32, i8* %61, align 1
  %62 = load i8*, i8** @search_prompt, align 8
  %63 = load i64, i64* @search_pos, align 8
  %64 = add i64 %63, 2
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  br label %69

66:                                               ; preds = %46
  %67 = call i32 (...) @gl_beep()
  %68 = load i32, i32* @hist_last, align 4
  store i32 %68, i32* @hist_pos, align 4
  br label %69

69:                                               ; preds = %66, %49
  br label %70

70:                                               ; preds = %69, %17
  br label %71

71:                                               ; preds = %70, %5
  ret void
}

declare dso_local i32 @gl_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
