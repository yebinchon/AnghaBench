; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_han2zen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_han2zen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@han2zen.char1 = internal constant [63 x i8] c"\81\81\81\81\81\83\83\83\83\83\83\83\83\83\83\81\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\81\81", align 16
@han2zen.char2 = internal constant [63 x i8] c"BuvAE\92@BDFH\83\85\87b[ACEGIJLNPRTVXZ\\^`cegijklmnqtwz}~\80\81\82\84\86\88\89\8A\8B\8C\8D\8F\93JK", align 16
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @han2zen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @han2zen(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 222
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @ISNIGORI(i8 zeroext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 179
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %15
  %26 = load i64, i64* @TRUE, align 8
  store i64 %26, i64* %7, align 8
  br label %40

27:                                               ; preds = %20, %2
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 223
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @ISMARU(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %37, %32, %27
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sge i32 %43, 161
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sle i32 %48, 223
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, 161
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %8, align 1
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [63 x i8], [63 x i8]* @han2zen.char1, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %4, align 8
  store i8 %59, i8* %60, align 1
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds [63 x i8], [63 x i8]* @han2zen.char2, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %5, align 8
  store i8 %64, i8* %65, align 1
  br label %66

66:                                               ; preds = %50, %45, %40
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %69, %66
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %113

75:                                               ; preds = %72
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sge i32 %78, 74
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sle i32 %83, 103
  br i1 %84, label %95, label %85

85:                                               ; preds = %80, %75
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sge i32 %88, 110
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sle i32 %93, 122
  br i1 %94, label %95, label %99

95:                                               ; preds = %90, %80
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = add i8 %97, 1
  store i8 %98, i8* %96, align 1
  br label %112

99:                                               ; preds = %90, %85
  %100 = load i8*, i8** %4, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 131
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 69
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  store i8 -108, i8* %110, align 1
  br label %111

111:                                              ; preds = %109, %104, %99
  br label %112

112:                                              ; preds = %111, %95
  br label %133

113:                                              ; preds = %72
  %114 = load i64, i64* %6, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp sge i32 %119, 110
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp sle i32 %124, 122
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = add nsw i32 %129, 2
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %127, align 1
  br label %132

132:                                              ; preds = %126, %121, %116, %113
  br label %133

133:                                              ; preds = %132, %112
  store i32 1, i32* %3, align 4
  br label %135

134:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %133
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @ISNIGORI(i8 zeroext) #1

declare dso_local i64 @ISMARU(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
