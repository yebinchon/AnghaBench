; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regcmds.c_ProcessCmdLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regcmds.c_ProcessCmdLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACTION_UNDEF = common dso_local global i64 0, align 8
@ACTION_DELETE = common dso_local global i64 0, align 8
@ACTION_EXPORT = common dso_local global i64 0, align 8
@ACTION_VIEW = common dso_local global i64 0, align 8
@usage = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@ACTION_ADD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessCmdLine(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %9 = load i64, i64* @ACTION_UNDEF, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %6, align 1
  br label %13

13:                                               ; preds = %131, %1
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i8, i8* %6, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ true, %17 ], [ %24, %21 ]
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi i1 [ false, %13 ], [ %26, %25 ]
  br i1 %28, label %29, label %132

29:                                               ; preds = %27
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %6, align 1
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %8, align 1
  %37 = load i8, i8* %6, align 1
  %38 = call signext i8 @toupper(i8 signext %37)
  store i8 %38, i8* %7, align 1
  %39 = load i8, i8* %8, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i8, i8* %8, align 1
  %43 = call i64 @isspace(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %41, %29
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 83
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 86
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45
  br label %73

54:                                               ; preds = %49
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %67 [
    i32 68, label %57
    i32 69, label %59
    i32 86, label %61
    i32 63, label %63
  ]

57:                                               ; preds = %54
  %58 = load i64, i64* @ACTION_DELETE, align 8
  store i64 %58, i64* %4, align 8
  br label %72

59:                                               ; preds = %54
  %60 = load i64, i64* @ACTION_EXPORT, align 8
  store i64 %60, i64* %4, align 8
  br label %72

61:                                               ; preds = %54
  %62 = load i64, i64* @ACTION_VIEW, align 8
  store i64 %62, i64* %4, align 8
  br label %72

63:                                               ; preds = %54
  %64 = load i8*, i8** @usage, align 8
  %65 = call i32 @printf(i8* %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %2, align 4
  br label %142

67:                                               ; preds = %54
  %68 = load i8, i8* %7, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @error_unknown_switch(i8 signext %68, i8* %69)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %2, align 4
  br label %142

72:                                               ; preds = %61, %59, %57
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  br label %113

76:                                               ; preds = %41
  %77 = load i8, i8* %8, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 58
  br i1 %79, label %80, label %109

80:                                               ; preds = %76
  %81 = load i8, i8* %7, align 1
  %82 = sext i8 %81 to i32
  switch i32 %82, label %103 [
    i32 76, label %83
    i32 82, label %83
  ]

83:                                               ; preds = %80, %80
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %85, i8** %5, align 8
  br label %86

86:                                               ; preds = %99, %83
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isspace(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %91, %86
  %98 = phi i1 [ false, %86 ], [ %96, %91 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  br label %86

102:                                              ; preds = %97
  br label %108

103:                                              ; preds = %80
  %104 = load i8, i8* %7, align 1
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @error_unknown_switch(i8 signext %104, i8* %105)
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %2, align 4
  br label %142

108:                                              ; preds = %102
  br label %112

109:                                              ; preds = %76
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %111, i8** %5, align 8
  br label %132

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %73
  %114 = load i8*, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  store i8 %115, i8* %6, align 1
  br label %116

116:                                              ; preds = %126, %113
  %117 = load i8, i8* %6, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i8, i8* %6, align 1
  %122 = call i64 @isspace(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i1 [ false, %116 ], [ %123, %120 ]
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %5, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  store i8 %130, i8* %6, align 1
  br label %116

131:                                              ; preds = %124
  br label %13

132:                                              ; preds = %109, %27
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @ACTION_UNDEF, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i64, i64* @ACTION_ADD, align 8
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i64, i64* %4, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @PerformRegAction(i64 %139, i8* %140)
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %103, %67, %63
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @error_unknown_switch(i8 signext, i8*) #1

declare dso_local i32 @PerformRegAction(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
