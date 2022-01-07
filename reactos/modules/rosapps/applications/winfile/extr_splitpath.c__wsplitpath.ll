; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_splitpath.c__wsplitpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_splitpath.c__wsplitpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_wsplitpath(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %5
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 58
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  store i8 %31, i8* %32, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  %36 = load i8, i8* %34, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i8*, i8** %7, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %28, %25
  br label %47

41:                                               ; preds = %19, %5
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @lstrlenW(i8* %49)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %78, %47
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ugt i8* %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %12, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 92
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br label %69

69:                                               ; preds = %64, %58, %54
  %70 = phi i1 [ false, %58 ], [ false, %54 ], [ %68, %64 ]
  br i1 %70, label %71, label %79

71:                                               ; preds = %69
  %72 = load i8*, i8** %12, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 46
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i8*, i8** %12, align 8
  store i8* %77, i8** %11, align 8
  br label %79

78:                                               ; preds = %71
  br label %54

79:                                               ; preds = %76, %69
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i8*, i8** %11, align 8
  store i8* %83, i8** %13, align 8
  br label %84

84:                                               ; preds = %90, %82
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %13, align 8
  %87 = load i8, i8* %85, align 1
  %88 = load i8*, i8** %10, align 8
  store i8 %87, i8* %88, align 1
  %89 = icmp ne i8 %87, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  br label %84

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %79
  %95 = load i8*, i8** %11, align 8
  store i8* %95, i8** %12, align 8
  br label %96

96:                                               ; preds = %114, %94
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = icmp ugt i8* %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %12, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 92
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load i8*, i8** %12, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %114

111:                                              ; preds = %106, %100
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %12, align 8
  br label %115

114:                                              ; preds = %106
  br label %96

115:                                              ; preds = %111, %96
  %116 = load i8*, i8** %9, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load i8*, i8** %12, align 8
  store i8* %119, i8** %13, align 8
  br label %120

120:                                              ; preds = %124, %118
  %121 = load i8*, i8** %13, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = icmp ult i8* %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %13, align 8
  %127 = load i8, i8* %125, align 1
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %9, align 8
  store i8 %127, i8* %128, align 1
  br label %120

130:                                              ; preds = %120
  %131 = load i8*, i8** %9, align 8
  store i8 0, i8* %131, align 1
  br label %132

132:                                              ; preds = %130, %115
  %133 = load i8*, i8** %8, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  %136 = load i8*, i8** %6, align 8
  store i8* %136, i8** %13, align 8
  br label %137

137:                                              ; preds = %141, %135
  %138 = load i8*, i8** %13, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = icmp ult i8* %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8*, i8** %13, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %13, align 8
  %144 = load i8, i8* %142, align 1
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %8, align 8
  store i8 %144, i8* %145, align 1
  br label %137

147:                                              ; preds = %137
  %148 = load i8*, i8** %8, align 8
  store i8 0, i8* %148, align 1
  br label %149

149:                                              ; preds = %147, %132
  ret void
}

declare dso_local i32 @lstrlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
