; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_str_handle_lines.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_str_handle_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str_handle_lines(i32* %0, i8* %1, i8** %2, i32 (i32*, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32 (i32*, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 (i32*, i8*, i8*)* %3, i32 (i32*, i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %16, align 8
  %19 = load i32, i32* @True, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %14, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %16, align 8
  br label %29

29:                                               ; preds = %25, %5
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* %14, align 8
  %32 = add i64 %30, %31
  %33 = add i64 %32, 1
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = call i64 @xmalloc(i64 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load i8*, i8** %11, align 8
  %44 = load i8**, i8*** %8, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @STRNCPY(i8* %43, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %42, %29
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @strncat(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %11, align 8
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %48, %75
  %55 = load i8*, i8** %12, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 10)
  store i8* %56, i8** %18, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load i8*, i8** %18, align 8
  store i8 0, i8* %60, align 1
  %61 = load i32 (i32*, i8*, i8*)*, i32 (i32*, i8*, i8*)** %9, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 %61(i32* %62, i8* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = load i8*, i8** %18, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %12, align 8
  %70 = load i32, i32* @False, align 4
  store i32 %70, i32* %17, align 4
  br label %76

71:                                               ; preds = %59
  %72 = load i8*, i8** %18, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %12, align 8
  br label %75

74:                                               ; preds = %54
  br label %76

75:                                               ; preds = %71
  br label %54

76:                                               ; preds = %74, %67
  %77 = load i8**, i8*** %8, align 8
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %13, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8*, i8** %12, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %16, align 8
  %87 = call i64 @xmalloc(i64 %86)
  %88 = inttoptr i64 %87 to i8*
  %89 = load i8**, i8*** %8, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8**, i8*** %8, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @STRNCPY(i8* %91, i8* %92, i64 %93)
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @xfree(i8* %95)
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @xfree(i8* %97)
  %99 = load i32, i32* %17, align 4
  ret i32 %99
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i32 @STRNCPY(i8*, i8*, i64) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
