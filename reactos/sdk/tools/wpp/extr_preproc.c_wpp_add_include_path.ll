; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_preproc.c_wpp_add_include_path.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_preproc.c_wpp_add_include_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INCLUDESEPARATOR = common dso_local global i32 0, align 4
@includepath = common dso_local global i8** null, align 8
@nincludepath = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpp_add_include_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @pp_xstrdup(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %92

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @INCLUDESEPARATOR, align 4
  %17 = call i8* @strtok(i8* %15, i32 %16)
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %86, %14
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %89

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @pp_xstrdup(i8* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @free(i8* %31)
  store i32 1, i32* %2, align 4
  br label %92

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %47, %33
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  store i8 47, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %39
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %35

50:                                               ; preds = %35
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  store i8* %56, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 47
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i8*, i8** %7, align 8
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %60, %50
  %63 = load i8**, i8*** @includepath, align 8
  %64 = load i32, i32* @nincludepath, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call i8** @pp_xrealloc(i8** %63, i32 %68)
  store i8** %69, i8*** %8, align 8
  %70 = load i8**, i8*** %8, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %62
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @free(i8* %75)
  store i32 1, i32* %2, align 4
  br label %92

77:                                               ; preds = %62
  %78 = load i8**, i8*** %8, align 8
  store i8** %78, i8*** @includepath, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8**, i8*** @includepath, align 8
  %81 = load i32, i32* @nincludepath, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %79, i8** %83, align 8
  %84 = load i32, i32* @nincludepath, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @nincludepath, align 4
  br label %86

86:                                               ; preds = %77, %21
  %87 = load i32, i32* @INCLUDESEPARATOR, align 4
  %88 = call i8* @strtok(i8* null, i32 %87)
  store i8* %88, i8** %4, align 8
  br label %18

89:                                               ; preds = %18
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @free(i8* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %72, %30, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @pp_xstrdup(i8*) #1

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8** @pp_xrealloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
