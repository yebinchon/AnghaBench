; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser_utils.c__synctex_copy_with_quoting_last_path_component.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser_utils.c__synctex_copy_with_quoting_last_path_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"!  _synctex_copy_with_quoting_last_path_component: Copy problem\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"!  _synctex_copy_with_quoting_last_path_component: Internal inconsistency\00", align 1
@dest = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_synctex_copy_with_quoting_last_path_component(i8* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %101

12:                                               ; preds = %3
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %101

15:                                               ; preds = %12
  %16 = load i8**, i8*** %6, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @_synctex_last_path_component(i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %100

22:                                               ; preds = %15
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strchr(i8* %23, i8 signext 32)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 34
  br i1 %31, label %32, label %99

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 34
  br i1 %40, label %41, label %99

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %41
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 2
  %49 = call i64 @malloc(i64 %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8**, i8*** %6, align 8
  store i8* %50, i8** %51, align 8
  %52 = icmp ne i8* %50, null
  br i1 %52, label %53, label %96

53:                                               ; preds = %46
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  store i8* %61, i8** %9, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i8* @strncpy(i8* %65, i8* %66, i64 %67)
  %69 = icmp ne i8* %63, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %53
  %71 = call i32 @_synctex_error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8**, i8*** %6, align 8
  store i8* null, i8** %75, align 8
  store i32 -2, i32* %4, align 4
  br label %102

76:                                               ; preds = %53
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = add i64 %81, 1
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memmove(i8* %78, i8* %79, i32 %83)
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 34, i8* %86, align 1
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 34, i8* %95, align 1
  store i32 0, i32* %4, align 4
  br label %102

96:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %102

97:                                               ; preds = %41
  %98 = call i32 @_synctex_error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %4, align 4
  br label %102

99:                                               ; preds = %32, %26, %22
  store i32 0, i32* %4, align 4
  br label %102

100:                                              ; preds = %15
  store i32 0, i32* %4, align 4
  br label %102

101:                                              ; preds = %12, %3
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %100, %99, %97, %96, %76, %70
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i8* @_synctex_last_path_component(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i8* @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @_synctex_error(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
