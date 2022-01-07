; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoiseHistoryAdd.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_linenoiseHistoryAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@history_max_len = common dso_local global i32 0, align 4
@history = common dso_local global i8** null, align 8
@history_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linenoiseHistoryAdd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @history_max_len, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

8:                                                ; preds = %1
  %9 = load i8**, i8*** @history, align 8
  %10 = icmp eq i8** %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i32, i32* @history_max_len, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call i8** @malloc(i32 %15)
  store i8** %16, i8*** @history, align 8
  %17 = load i8**, i8*** @history, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %75

20:                                               ; preds = %11
  %21 = load i8**, i8*** @history, align 8
  %22 = load i32, i32* @history_max_len, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i8** %21, i32 0, i32 %25)
  br label %27

27:                                               ; preds = %20, %8
  %28 = load i32, i32* @history_len, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i8**, i8*** @history, align 8
  %32 = load i32, i32* @history_len, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %75

41:                                               ; preds = %30, %27
  %42 = load i8*, i8** %3, align 8
  %43 = call i8* @strdup(i8* %42)
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %75

47:                                               ; preds = %41
  %48 = load i32, i32* @history_len, align 4
  %49 = load i32, i32* @history_max_len, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i8**, i8*** @history, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8**, i8*** @history, align 8
  %57 = load i8**, i8*** @history, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i32, i32* @history_max_len, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 8, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memmove(i8** %56, i8** %58, i32 %63)
  %65 = load i32, i32* @history_len, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* @history_len, align 4
  br label %67

67:                                               ; preds = %51, %47
  %68 = load i8*, i8** %4, align 8
  %69 = load i8**, i8*** @history, align 8
  %70 = load i32, i32* @history_len, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %68, i8** %72, align 8
  %73 = load i32, i32* @history_len, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @history_len, align 4
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %67, %46, %40, %19, %7
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
