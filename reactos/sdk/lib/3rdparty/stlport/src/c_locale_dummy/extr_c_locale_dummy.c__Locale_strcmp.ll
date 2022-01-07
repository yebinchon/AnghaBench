; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_dummy/extr_c_locale_dummy.c__Locale_strcmp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_dummy/extr_c_locale_dummy.c__Locale_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Locale_collate = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Locale_strcmp(%struct._Locale_collate* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._Locale_collate*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct._Locale_collate* %0, %struct._Locale_collate** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %62, %5
  %18 = load i64, i64* %9, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %11, align 8
  %22 = icmp ugt i64 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ true, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %75

25:                                               ; preds = %23
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %26, 63
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* %9, align 8
  br label %31

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i64 [ %29, %28 ], [ 63, %30 ]
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %33, 63
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* %11, align 8
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i64 [ %36, %35 ], [ 63, %37 ]
  store i64 %39, i64* %16, align 8
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @_STLP_STRNCPY(i8* %40, i32 64, i8* %41, i64 %42)
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @_STLP_STRNCPY(i8* %46, i32 64, i8* %47, i64 %48)
  %50 = load i64, i64* %16, align 8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %54 = call i32 @strcmp(i8* %52, i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %38
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 -1, i32 1
  store i32 %61, i32* %6, align 4
  br label %86

62:                                               ; preds = %38
  %63 = load i64, i64* %15, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %8, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %16, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %10, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %11, align 8
  br label %17

75:                                               ; preds = %23
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 -1, i32 1
  br label %84

84:                                               ; preds = %79, %78
  %85 = phi i32 [ 0, %78 ], [ %83, %79 ]
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %57
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @_STLP_STRNCPY(i8*, i32, i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
