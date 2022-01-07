; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_strftime.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_strftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_strftime(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %54

15:                                               ; preds = %1
  %16 = call i32 @time(i32* %4)
  %17 = call i32 @localtime_r(i32* %4, %struct.tm* %5)
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 32
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %51, %15
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* null, i8** %2, align 8
  br label %54

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @strftime(i8* %29, i64 %30, i8* %31, %struct.tm* %5)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  %39 = call i8* @realloc(i8* %36, i64 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  br label %46

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i8* [ %43, %42 ], [ %45, %44 ]
  store i8* %47, i8** %2, align 8
  br label %54

48:                                               ; preds = %28
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 32
  store i64 %53, i64* %6, align 8
  br label %22

54:                                               ; preds = %46, %27, %13
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
