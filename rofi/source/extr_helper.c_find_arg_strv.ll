; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_find_arg_strv.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_find_arg_strv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stored_argc = common dso_local global i32 0, align 4
@stored_argv = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @find_arg_strv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8** null, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @stored_argc, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @stored_argc, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i8**, i8*** @stored_argv, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @strcasecmp(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %17, %12
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i8** @g_malloc0(i32 %41)
  store i8** %42, i8*** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %74, %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @stored_argc, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @stored_argc, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load i8**, i8*** @stored_argv, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = call i64 @strcasecmp(i8* %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load i8**, i8*** @stored_argv, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  store i8* %67, i8** %72, align 8
  br label %73

73:                                               ; preds = %61, %52, %47
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %43

77:                                               ; preds = %43
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i8**, i8*** %3, align 8
  ret i8** %79
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8** @g_malloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
