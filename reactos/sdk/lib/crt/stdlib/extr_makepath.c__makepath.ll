; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_makepath.c__makepath.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_makepath.c__makepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_makepath(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %112

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %11, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %11, align 8
  store i8 58, i8* %33, align 1
  br label %35

35:                                               ; preds = %27, %21, %18
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @memmove(i8* %47, i8* %48, i64 %49)
  %51 = load i64, i64* %12, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 47
  br i1 %58, label %59, label %68

59:                                               ; preds = %44
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 92
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %11, align 8
  store i8 92, i8* %66, align 1
  br label %68

68:                                               ; preds = %65, %59, %44
  br label %69

69:                                               ; preds = %68, %38, %35
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = call i64 @strlen(i8* %79)
  store i64 %80, i64* %13, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @memmove(i8* %81, i8* %82, i64 %83)
  %85 = load i64, i64* %13, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %78, %72, %69
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 46
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %11, align 8
  store i8 46, i8* %104, align 1
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @strcpy(i8* %107, i8* %108)
  br label %112

110:                                              ; preds = %91, %88
  %111 = load i8*, i8** %11, align 8
  store i8 0, i8* %111, align 1
  br label %112

112:                                              ; preds = %17, %110, %106
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
