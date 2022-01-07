; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_search_back.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_search_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@search_forw_flg = common dso_local global i64 0, align 8
@gl_search_mode = common dso_local global i32 0, align 4
@hist_last = common dso_local global i32 0, align 4
@hist_pos = common dso_local global i32 0, align 4
@search_last = common dso_local global i32 0, align 4
@gl_buf = common dso_local global i64* null, align 8
@search_prompt = common dso_local global i32 0, align 4
@search_pos = common dso_local global i64 0, align 8
@search_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @search_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_back(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i64 0, i64* @search_forw_flg, align 8
  %6 = load i32, i32* @gl_search_mode, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @hist_last, align 4
  store i32 %9, i32* @hist_pos, align 4
  store i32 %9, i32* @search_last, align 4
  %10 = call i32 @search_update(i32 0)
  store i32 1, i32* @gl_search_mode, align 4
  %11 = load i64*, i64** @gl_buf, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @search_prompt, align 4
  %14 = call i32 @gl_fixup(i32 %13, i32 0, i32 0)
  br label %62

15:                                               ; preds = %1
  %16 = load i64, i64* @search_pos, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %57, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = call i8* (...) @hist_prev()
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i64*, i64** @gl_buf, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @search_prompt, align 4
  %33 = call i32 @gl_fixup(i32 %32, i32 0, i32 0)
  store i32 1, i32* %3, align 4
  br label %57

34:                                               ; preds = %23
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @search_string, align 4
  %37 = call i8* @strstr(i8* %35, i32 %36)
  store i8* %37, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load i64*, i64** @gl_buf, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcpy(i64* %40, i8* %41)
  %43 = load i32, i32* @search_prompt, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @gl_fixup(i32 %43, i32 0, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @hist_pos, align 4
  store i32 %54, i32* @search_last, align 4
  br label %55

55:                                               ; preds = %53, %39
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %56, %29
  br label %19

58:                                               ; preds = %19
  br label %61

59:                                               ; preds = %15
  %60 = call i32 (...) @gl_beep()
  br label %61

61:                                               ; preds = %59, %58
  br label %62

62:                                               ; preds = %61, %8
  ret void
}

declare dso_local i32 @search_update(i32) #1

declare dso_local i32 @gl_fixup(i32, i32, i32) #1

declare dso_local i8* @hist_prev(...) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @gl_beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
