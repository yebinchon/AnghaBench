; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/blast/extr_blast.c_blast.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/blast/extr_blast.c_blast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, i8*, i32, i64, i32, i8*, i64 (i8*, i32, i64)*, i32, i64, i64, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blast(i32 %0, i8* %1, i64 (i8*, i32, i64)* %2, i8* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i32, i64)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.state, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 (i8*, i32, i64)* %2, i64 (i8*, i32, i64)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 11
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 10
  store i8* %17, i8** %18, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %6
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i8**, i8*** %12, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  br label %34

32:                                               ; preds = %21, %6
  %33 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %32, %25
  %35 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 9
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 8
  store i64 0, i64* %36, align 8
  %37 = load i64 (i8*, i32, i64)*, i64 (i8*, i32, i64)** %9, align 8
  %38 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 6
  store i64 (i8*, i32, i64)* %37, i64 (i8*, i32, i64)** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 5
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @setjmp(i32 %44) #3
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 2, i32* %14, align 4
  br label %50

48:                                               ; preds = %34
  %49 = call i32 @decomp(%struct.state* %13)
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i8**, i8*** %12, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i8* [ %66, %64 ], [ null, %67 ]
  %70 = load i8**, i8*** %12, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 6
  %80 = load i64 (i8*, i32, i64)*, i64 (i8*, i32, i64)** %79, align 8
  %81 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i64 %80(i8* %82, i32 %84, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 1, i32* %14, align 4
  br label %93

93:                                               ; preds = %92, %89, %78, %74, %71
  %94 = load i32, i32* %14, align 4
  ret i32 %94
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @decomp(%struct.state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
