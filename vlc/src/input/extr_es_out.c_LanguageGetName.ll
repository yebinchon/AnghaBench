; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_es_out.c_LanguageGetName.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_es_out.c_LanguageGetName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"und\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @LanguageGetName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @LanguageGetName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %1
  %13 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  br label %60

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = call %struct.TYPE_5__* @GetLang_1(i8* %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %4, align 8
  br label %45

21:                                               ; preds = %14
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call %struct.TYPE_5__* @GetLang_2B(i8* %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i8*, i8** %3, align 8
  %35 = call %struct.TYPE_5__* @GetLang_2T(i8* %34)
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %4, align 8
  br label %36

36:                                               ; preds = %33, %25
  br label %44

37:                                               ; preds = %21
  %38 = load i8*, i8** %3, align 8
  %39 = call i8* @LanguageGetCode(i8* %38)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call %struct.TYPE_5__* @GetLang_1(i8* %40)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @free(i8* %42)
  br label %44

44:                                               ; preds = %37, %36
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @strdup(i8* %52)
  store i8* %53, i8** %2, align 8
  br label %60

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @vlc_gettext(i32 %57)
  %59 = call i8* @strdup(i8* %58)
  store i8* %59, i8** %2, align 8
  br label %60

60:                                               ; preds = %54, %51, %12
  %61 = load i8*, i8** %2, align 8
  ret i8* %61
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @GetLang_1(i8*) #1

declare dso_local %struct.TYPE_5__* @GetLang_2B(i8*) #1

declare dso_local %struct.TYPE_5__* @GetLang_2T(i8*) #1

declare dso_local i8* @LanguageGetCode(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @vlc_gettext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
