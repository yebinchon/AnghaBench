; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_file_cvt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_file_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"*?<>|\22/\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Invalid character in name. Use \\ooo for special characters.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Duplicate dots in name.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Expected three octal digits.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_cvt(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 8, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %105, %47, %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %108

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %6, align 1
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sgt i32 %22, 126
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8, i8* %6, align 1
  %26 = call i64 @strchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20, %14
  %29 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %138

30:                                               ; preds = %24
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %138

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  store i8 32, i8* %45, align 1
  br label %40

47:                                               ; preds = %40
  store i32 3, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  br label %10

50:                                               ; preds = %30
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  store i8 0, i8* %6, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  store i32 3, i32* %9, align 4
  br label %57

57:                                               ; preds = %83, %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp slt i32 %63, 48
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sgt i32 %68, 55
  br i1 %69, label %70, label %72

70:                                               ; preds = %65, %60
  %71 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %138

72:                                               ; preds = %65
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = mul nsw i32 %74, 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %75, %79
  %81 = sub nsw i32 %80, 48
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %6, align 1
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  br label %57

86:                                               ; preds = %57
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %4, align 8
  br label %89

89:                                               ; preds = %86, %50
  %90 = load i8, i8* %6, align 1
  %91 = call i64 @islower(i8 zeroext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8, i8* %6, align 1
  %95 = call zeroext i8 @toupper(i8 zeroext %94)
  store i8 %95, i8* %6, align 1
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i8, i8* %6, align 1
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %4, align 8
  br label %10

108:                                              ; preds = %10
  %109 = load i8*, i8** %4, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %108
  store i32 0, i32* %3, align 4
  br label %138

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %125, %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %7, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %5, align 8
  store i8 32, i8* %126, align 1
  br label %121

128:                                              ; preds = %121
  store i32 3, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %117
  br label %130

130:                                              ; preds = %134, %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %7, align 4
  %133 = icmp ne i32 %131, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %5, align 8
  store i8 32, i8* %135, align 1
  br label %130

137:                                              ; preds = %130
  store i32 1, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %116, %70, %37, %28
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @strchr(i8*, i8 zeroext) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local zeroext i8 @toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
