; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_headerline.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_is_headerline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @is_headerline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_headerline(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 61
  br i1 %12, label %13, label %63

13:                                               ; preds = %2
  store i64 1, i64* %6, align 8
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 61
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i1 [ false, %14 ], [ %24, %18 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %14

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br label %43

43:                                               ; preds = %36, %32
  %44 = phi i1 [ false, %32 ], [ %42, %36 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %32

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ true, %48 ], [ %58, %52 ]
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* %3, align 4
  br label %121

63:                                               ; preds = %2
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %120

70:                                               ; preds = %63
  store i64 1, i64* %6, align 8
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 45
  br label %82

82:                                               ; preds = %75, %71
  %83 = phi i1 [ false, %71 ], [ %81, %75 ]
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %71

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %102, %88
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %5, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i8*, i8** %4, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br label %100

100:                                              ; preds = %93, %89
  %101 = phi i1 [ false, %89 ], [ %99, %93 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %89

105:                                              ; preds = %100
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %5, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = load i8*, i8** %4, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 10
  br label %116

116:                                              ; preds = %109, %105
  %117 = phi i1 [ true, %105 ], [ %115, %109 ]
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 2, i32 0
  store i32 %119, i32* %3, align 4
  br label %121

120:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %116, %59
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
