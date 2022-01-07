; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_keypress.c_typeString.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_keypress.c_typeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typeString(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  br label %8

8:                                                ; preds = %117, %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %122

13:                                               ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  %16 = load i8, i8* %14, align 1
  %17 = sext i8 %16 to i16
  store i16 %17, i16* %3, align 2
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sle i32 %19, 127
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i16, i16* %3, align 2
  %23 = zext i16 %22 to i64
  store i64 %23, i64* %7, align 8
  br label %117

24:                                               ; preds = %13
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 224
  %28 = icmp eq i32 %27, 192
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %2, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = and i32 %33, 63
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %4, align 2
  %36 = load i16, i16* %3, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 31
  %39 = shl i32 %38, 6
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %7, align 8
  br label %116

44:                                               ; preds = %24
  %45 = load i16, i16* %3, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 240
  %48 = icmp eq i32 %47, 224
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %2, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = and i32 %53, 63
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %4, align 2
  %56 = load i8*, i8** %2, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %2, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = and i32 %59, 63
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %5, align 2
  %62 = load i16, i16* %3, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 15
  %65 = shl i32 %64, 12
  %66 = load i16, i16* %4, align 2
  %67 = zext i16 %66 to i32
  %68 = shl i32 %67, 6
  %69 = or i32 %65, %68
  %70 = load i16, i16* %5, align 2
  %71 = zext i16 %70 to i32
  %72 = or i32 %69, %71
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %7, align 8
  br label %115

74:                                               ; preds = %44
  %75 = load i16, i16* %3, align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 248
  %78 = icmp eq i32 %77, 240
  br i1 %78, label %79, label %114

79:                                               ; preds = %74
  %80 = load i8*, i8** %2, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %2, align 8
  %82 = load i8, i8* %80, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %83, 63
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %4, align 2
  %86 = load i8*, i8** %2, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %2, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  %90 = and i32 %89, 63
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %5, align 2
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %2, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  %96 = and i32 %95, 63
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %6, align 2
  %98 = load i16, i16* %3, align 2
  %99 = zext i16 %98 to i32
  %100 = and i32 %99, 7
  %101 = shl i32 %100, 18
  %102 = load i16, i16* %4, align 2
  %103 = zext i16 %102 to i32
  %104 = shl i32 %103, 12
  %105 = or i32 %101, %104
  %106 = load i16, i16* %5, align 2
  %107 = zext i16 %106 to i32
  %108 = shl i32 %107, 6
  %109 = or i32 %105, %108
  %110 = load i16, i16* %6, align 2
  %111 = zext i16 %110 to i32
  %112 = or i32 %109, %111
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %79, %74
  br label %115

115:                                              ; preds = %114, %49
  br label %116

116:                                              ; preds = %115, %29
  br label %117

117:                                              ; preds = %116, %21
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @toggleUniKey(i64 %118, i32 1)
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @toggleUniKey(i64 %120, i32 0)
  br label %8

122:                                              ; preds = %8
  ret void
}

declare dso_local i32 @toggleUniKey(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
