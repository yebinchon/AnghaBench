; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_search_addchar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_search_addchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@search_pos = common dso_local global i64 0, align 8
@search_last = common dso_local global i64 0, align 8
@hist_pos = common dso_local global i64 0, align 8
@gl_buf = common dso_local global i8* null, align 8
@hist_last = common dso_local global i64 0, align 8
@hist_buf = common dso_local global i32* null, align 8
@search_string = common dso_local global i32 0, align 4
@search_prompt = common dso_local global i32 0, align 4
@search_forw_flg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @search_addchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_addchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @search_update(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i64, i64* @search_pos, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i64, i64* @search_last, align 8
  store i64 %12, i64* @hist_pos, align 8
  br label %17

13:                                               ; preds = %8
  %14 = load i8*, i8** @gl_buf, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = load i64, i64* @hist_last, align 8
  store i64 %16, i64* @hist_pos, align 8
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i8*, i8** @gl_buf, align 8
  %19 = load i32*, i32** @hist_buf, align 8
  %20 = load i64, i64* @hist_pos, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i8* %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i8*, i8** @gl_buf, align 8
  %26 = load i32, i32* @search_string, align 4
  %27 = call i8* @strstr(i8* %25, i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* @search_prompt, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** @gl_buf, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @gl_fixup(i32 %30, i32 0, i32 %36)
  br label %53

38:                                               ; preds = %24
  %39 = load i64, i64* @search_pos, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i64, i64* @search_forw_flg, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @search_forw(i32 0)
  br label %48

46:                                               ; preds = %41
  %47 = call i32 @search_back(i32 0)
  br label %48

48:                                               ; preds = %46, %44
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @search_prompt, align 4
  %51 = call i32 @gl_fixup(i32 %50, i32 0, i32 0)
  br label %52

52:                                               ; preds = %49, %48
  br label %53

53:                                               ; preds = %52, %29
  ret void
}

declare dso_local i32 @search_update(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i32 @gl_fixup(i32, i32, i32) #1

declare dso_local i32 @search_forw(i32) #1

declare dso_local i32 @search_back(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
