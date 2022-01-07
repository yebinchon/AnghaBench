; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_misc2.c_newenv.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_misc2.c_newenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = common dso_local global i8** null, align 8
@EXTRASIZE = common dso_local global i32 0, align 4
@envsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @newenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newenv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i8**, i8*** @environ, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %7, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %6

17:                                               ; preds = %6
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EXTRASIZE, align 4
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @alloc(i32 %25)
  %27 = inttoptr i64 %26 to i8**
  store i8** %27, i8*** %2, align 8
  %28 = load i8**, i8*** %2, align 8
  %29 = icmp eq i8** %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 -1, i32* %1, align 4
  br label %76

31:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %66, %31
  %33 = load i8**, i8*** @environ, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %32
  %40 = load i8**, i8*** @environ, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = add nsw i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = call i64 @alloc(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 -1, i32* %1, align 4
  br label %76

53:                                               ; preds = %39
  %54 = load i8*, i8** %3, align 8
  %55 = load i8**, i8*** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %54, i8** %58, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i8**, i8*** @environ, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcpy(i8* %59, i8* %64)
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %32

69:                                               ; preds = %32
  %70 = load i8**, i8*** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* null, i8** %73, align 8
  %74 = load i8**, i8*** %2, align 8
  store i8** %74, i8*** @environ, align 8
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* @envsize, align 4
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %69, %52, %30
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i64 @alloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
