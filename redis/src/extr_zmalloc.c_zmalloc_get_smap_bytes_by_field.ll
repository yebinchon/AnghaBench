; ModuleID = '/home/carl/AnghaBench/redis/src/extr_zmalloc.c_zmalloc_get_smap_bytes_by_field.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_zmalloc.c_zmalloc_get_smap_bytes_by_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"/proc/self/smaps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/proc/%ld/smaps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zmalloc_get_smap_bytes_by_field(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %9, align 8
  br label %24

18:                                               ; preds = %2
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @snprintf(i8* %19, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %62

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %57, %28
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %31 = load i32*, i32** %9, align 8
  %32 = call i32* @fgets(i8* %30, i32 1024, i32* %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @strncmp(i8* %35, i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %42 = call i8* @strchr(i8* %41, i8 signext 107)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i8*, i8** %11, align 8
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i32 @strtol(i8* %50, i32* null, i32 10)
  %52 = mul nsw i32 %51, 1024
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %45, %40
  br label %57

57:                                               ; preds = %56, %34
  br label %29

58:                                               ; preds = %29
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %58, %27
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
