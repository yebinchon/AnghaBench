; ModuleID = '/home/carl/AnghaBench/tig/compat/extr_wordexp.c_compat_wordexp.c'
source_filename = "/home/carl/AnghaBench/tig/compat/extr_wordexp.c_compat_wordexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8** }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compat_wordexp(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %11 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 126
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %26, %20
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %34, %37
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i8* @malloc(i64 %41)
  store i8* %42, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %32
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i32 @snprintf(i8* %45, i64 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  store i32 -1, i32* %4, align 4
  br label %80

55:                                               ; preds = %44, %32
  br label %59

56:                                               ; preds = %26, %14, %3
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @strdup(i8* %57)
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %56, %55
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %80

63:                                               ; preds = %59
  %64 = call i8** @calloc(i32 2, i32 8)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i8** %64, i8*** %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @free(i8* %72)
  store i32 -1, i32* %4, align 4
  br label %80

74:                                               ; preds = %63
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %75, i8** %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %74, %71, %62, %52
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8** @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
