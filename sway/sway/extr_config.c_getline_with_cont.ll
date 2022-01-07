; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_getline_with_cont.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_getline_with_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*, i32*)* @getline_with_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getline_with_cont(i8** %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @getline(i8** %14, i64* %15, i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, -1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %84, %4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 35
  br label %42

42:                                               ; preds = %35, %26, %23
  %43 = phi i1 [ false, %26 ], [ false, %23 ], [ %41, %35 ]
  br i1 %43, label %44, label %94

44:                                               ; preds = %42
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @getline(i8** %9, i64* %10, i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %94

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 2
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %50
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %13, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @realloc(i8* %72, i64 %74)
  %76 = load i8**, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %64
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @free(i8* %81)
  store i32 -1, i32* %11, align 4
  br label %94

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %50
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @strcpy(i8* %91, i8* %92)
  br label %23

94:                                               ; preds = %80, %49, %42
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
