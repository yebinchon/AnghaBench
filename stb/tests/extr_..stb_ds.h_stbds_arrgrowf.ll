; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_arrgrowf.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_arrgrowf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@stbds_array_grow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stbds_arrgrowf(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @stbds_arrlen(i8* %12)
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i64, i64* %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @stbds_arrcap(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp ule i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %5, align 8
  br label %81

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @stbds_arrcap(i8* %31)
  %33 = mul nsw i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @stbds_arrcap(i8* %37)
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  br label %46

41:                                               ; preds = %29
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i64 4, i64* %9, align 8
  br label %45

45:                                               ; preds = %44, %41
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = call %struct.TYPE_3__* @stbds_header(i8* %50)
  br label %53

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi %struct.TYPE_3__* [ %51, %49 ], [ null, %52 ]
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = mul i64 %55, %56
  %58 = add i64 %57, 4
  %59 = call i8* @STBDS_REALLOC(i32* null, %struct.TYPE_3__* %54, i64 %58)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load i8*, i8** %10, align 8
  %66 = call %struct.TYPE_3__* @stbds_header(i8* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call %struct.TYPE_3__* @stbds_header(i8* %68)
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %75

71:                                               ; preds = %53
  %72 = load i32, i32* @stbds_array_grow, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @stbds_array_grow, align 4
  %74 = call i32 @STBDS_STATS(i32 %73)
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i64, i64* %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call %struct.TYPE_3__* @stbds_header(i8* %77)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  %80 = load i8*, i8** %10, align 8
  store i8* %80, i8** %5, align 8
  br label %81

81:                                               ; preds = %75, %27
  %82 = load i8*, i8** %5, align 8
  ret i8* %82
}

declare dso_local i64 @stbds_arrlen(i8*) #1

declare dso_local i32 @stbds_arrcap(i8*) #1

declare dso_local i8* @STBDS_REALLOC(i32*, %struct.TYPE_3__*, i64) #1

declare dso_local %struct.TYPE_3__* @stbds_header(i8*) #1

declare dso_local i32 @STBDS_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
