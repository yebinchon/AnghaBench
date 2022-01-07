; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_lang.c_combine_file_extensions.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_lang.c_combine_file_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }

@SINGLE_EXT_LEN = common dso_local global i64 0, align 8
@langs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @combine_file_extensions(i64* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** %2, i8*** %6, align 8
  store i64 100, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @SINGLE_EXT_LEN, align 8
  %15 = mul i64 %13, %14
  %16 = call i64 @ag_malloc(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = load i8**, i8*** %6, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @SINGLE_EXT_LEN, align 8
  %23 = mul i64 %21, %22
  %24 = call i32 @memset(i8* %20, i32 0, i64 %23)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %76, %3
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @langs, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %72, %29
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %75

46:                                               ; preds = %41
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @SINGLE_EXT_LEN, align 8
  %51 = mul i64 %49, %50
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i32 @strncpy(i8* %53, i8* %54, i32 %56)
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @langs, align 8
  %61 = load i64*, i64** %4, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %46
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %41, label %75

75:                                               ; preds = %72, %45
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %25

79:                                               ; preds = %25
  %80 = load i64, i64* %8, align 8
  ret i64 %80
}

declare dso_local i64 @ag_malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
