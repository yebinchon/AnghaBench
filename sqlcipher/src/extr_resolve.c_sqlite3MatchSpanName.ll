; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_resolve.c_sqlite3MatchSpanName.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_resolve.c_sqlite3MatchSpanName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3MatchSpanName(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %30, %4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @ALWAYS(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 46
  br label %27

27:                                               ; preds = %19, %11
  %28 = phi i1 [ false, %11 ], [ %26, %19 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %11

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @sqlite3StrNICmp(i8* %37, i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42, %36
  store i32 0, i32* %5, align 4
  br label %112

51:                                               ; preds = %42, %33
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i8*, i8** %6, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %76, %51
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @ALWAYS(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 46
  br label %73

73:                                               ; preds = %65, %57
  %74 = phi i1 [ false, %57 ], [ %72, %65 ]
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %57

79:                                               ; preds = %73
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @sqlite3StrNICmp(i8* %83, i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %82
  store i32 0, i32* %5, align 4
  br label %112

97:                                               ; preds = %88, %79
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i8*, i8** %6, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i64 @sqlite3StrICmp(i8* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %112

111:                                              ; preds = %105, %97
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %110, %96, %50
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @ALWAYS(i8 signext) #1

declare dso_local i64 @sqlite3StrNICmp(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
