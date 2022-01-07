; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsncmp.c__mbsncmp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsncmp.c__mbsncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mbsncmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %106, %19
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %109

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @_ismbblead(i8 zeroext %28)
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @_ismbblead(i8 zeroext %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %4, align 4
  br label %110

54:                                               ; preds = %38
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %9, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %54
  br label %105

62:                                               ; preds = %35, %26
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = bitcast i8* %69 to i16*
  store i16* %70, i16** %10, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = bitcast i8* %71 to i16*
  store i16* %72, i16** %11, align 8
  %73 = load i16*, i16** %10, align 8
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16*, i16** %11, align 8
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %68
  %81 = load i16*, i16** %10, align 8
  %82 = load i16, i16* %81, align 2
  %83 = zext i16 %82 to i32
  %84 = load i16*, i16** %11, align 8
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = sub nsw i32 %83, %86
  store i32 %87, i32* %4, align 4
  br label %110

88:                                               ; preds = %68
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  store i8* %92, i8** %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %88
  br label %104

96:                                               ; preds = %65, %62
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8*, i8** %9, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = sub nsw i32 %99, %102
  store i32 %103, i32* %4, align 4
  br label %110

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %61
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %7, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %20, label %109

109:                                              ; preds = %106, %25
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %96, %80, %46, %18
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @_ismbblead(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
