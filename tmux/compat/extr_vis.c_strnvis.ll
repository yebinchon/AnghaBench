; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_vis.c_strnvis.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_vis.c_strnvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIS_DQ = common dso_local global i32 0, align 4
@VIS_NOSLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strnvis(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %99, %4
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ult i8* %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %100

30:                                               ; preds = %28
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @isvisible(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 34
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @VIS_DQ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @VIS_NOSLASH, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %38
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8*, i8** %10, align 8
  %55 = icmp uge i8* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 2, i32* %13, align 4
  br label %100

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  store i8 92, i8* %58, align 1
  br label %60

60:                                               ; preds = %57, %46, %43
  store i32 1, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  br label %99

67:                                               ; preds = %30
  %68 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i8* @vis(i8* %68, i32 %69, i32 %70, i8 signext %73)
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %13, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ule i8* %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %67
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @memcpy(i8* %87, i8* %88, i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = load i8*, i8** %5, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %5, align 8
  br label %98

95:                                               ; preds = %67
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %97, i8** %6, align 8
  br label %100

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %60
  br label %19

100:                                              ; preds = %95, %56, %28
  %101 = load i64, i64* %7, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i8*, i8** %5, align 8
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ugt i8* %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %118, %112
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  %124 = load i8, i8* %123, align 1
  %125 = call i8* @vis(i8* %119, i32 %120, i32 %121, i8 signext %124)
  %126 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 %129
  store i8* %131, i8** %5, align 8
  br label %113

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132, %105
  %134 = load i8*, i8** %5, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  ret i32 %139
}

declare dso_local i64 @isvisible(i32, i32) #1

declare dso_local i8* @vis(i8*, i32, i32, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
