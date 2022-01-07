; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c__StrError.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c__StrError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@MSG_050 = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i64 0, align 8
@MSG_051 = common dso_local global i32 0, align 4
@MSG_052 = common dso_local global i32 0, align 4
@MSG_053 = common dso_local global i32 0, align 4
@MSG_054 = common dso_local global i32 0, align 4
@MSG_055 = common dso_local global i32 0, align 4
@MSG_056 = common dso_local global i32 0, align 4
@MSG_057 = common dso_local global i32 0, align 4
@MSG_058 = common dso_local global i32 0, align 4
@MSG_059 = common dso_local global i32 0, align 4
@MSG_060 = common dso_local global i32 0, align 4
@MSG_061 = common dso_local global i32 0, align 4
@MSG_062 = common dso_local global i32 0, align 4
@MSG_063 = common dso_local global i32 0, align 4
@MSG_064 = common dso_local global i32 0, align 4
@MSG_065 = common dso_local global i32 0, align 4
@MSG_066 = common dso_local global i32 0, align 4
@MSG_067 = common dso_local global i32 0, align 4
@MSG_068 = common dso_local global i32 0, align 4
@MSG_069 = common dso_local global i32 0, align 4
@MSG_070 = common dso_local global i32 0, align 4
@MSG_071 = common dso_local global i32 0, align 4
@MSG_072 = common dso_local global i32 0, align 4
@MSG_073 = common dso_local global i32 0, align 4
@MSG_074 = common dso_local global i32 0, align 4
@MSG_075 = common dso_local global i32 0, align 4
@MSG_076 = common dso_local global i32 0, align 4
@MSG_077 = common dso_local global i32 0, align 4
@MSG_078 = common dso_local global i32 0, align 4
@MSG_079 = common dso_local global i32 0, align 4
@MSG_172 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_StrError(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @IS_ERROR(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @SCODE_CODE(i32 %8)
  %10 = load i32, i32* @ERROR_SUCCESS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @MSG_050, align 4
  %14 = call i8* @lmprintf(i32 %13)
  store i8* %14, i8** %2, align 8
  br label %121

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @SCODE_FACILITY(i32 %16)
  %18 = load i64, i64* @FACILITY_STORAGE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SetLastError(i32 %21)
  %23 = call i8* (...) @WindowsErrorString()
  store i8* %23, i8** %2, align 8
  br label %121

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @SCODE_CODE(i32 %25)
  switch i32 %26, label %117 [
    i32 145, label %27
    i32 144, label %30
    i32 157, label %33
    i32 128, label %36
    i32 146, label %39
    i32 149, label %42
    i32 137, label %45
    i32 141, label %48
    i32 142, label %51
    i32 140, label %54
    i32 133, label %57
    i32 134, label %60
    i32 136, label %63
    i32 130, label %66
    i32 129, label %69
    i32 143, label %72
    i32 132, label %75
    i32 131, label %78
    i32 153, label %81
    i32 154, label %84
    i32 147, label %87
    i32 156, label %90
    i32 138, label %93
    i32 139, label %96
    i32 148, label %99
    i32 150, label %102
    i32 152, label %105
    i32 151, label %108
    i32 135, label %111
    i32 155, label %114
  ]

27:                                               ; preds = %24
  %28 = load i32, i32* @MSG_051, align 4
  %29 = call i8* @lmprintf(i32 %28)
  store i8* %29, i8** %2, align 8
  br label %121

30:                                               ; preds = %24
  %31 = load i32, i32* @MSG_052, align 4
  %32 = call i8* @lmprintf(i32 %31)
  store i8* %32, i8** %2, align 8
  br label %121

33:                                               ; preds = %24
  %34 = load i32, i32* @MSG_053, align 4
  %35 = call i8* @lmprintf(i32 %34)
  store i8* %35, i8** %2, align 8
  br label %121

36:                                               ; preds = %24
  %37 = load i32, i32* @MSG_054, align 4
  %38 = call i8* @lmprintf(i32 %37)
  store i8* %38, i8** %2, align 8
  br label %121

39:                                               ; preds = %24
  %40 = load i32, i32* @MSG_055, align 4
  %41 = call i8* @lmprintf(i32 %40)
  store i8* %41, i8** %2, align 8
  br label %121

42:                                               ; preds = %24
  %43 = load i32, i32* @MSG_056, align 4
  %44 = call i8* @lmprintf(i32 %43)
  store i8* %44, i8** %2, align 8
  br label %121

45:                                               ; preds = %24
  %46 = load i32, i32* @MSG_057, align 4
  %47 = call i8* @lmprintf(i32 %46)
  store i8* %47, i8** %2, align 8
  br label %121

48:                                               ; preds = %24
  %49 = load i32, i32* @MSG_058, align 4
  %50 = call i8* @lmprintf(i32 %49)
  store i8* %50, i8** %2, align 8
  br label %121

51:                                               ; preds = %24
  %52 = load i32, i32* @MSG_059, align 4
  %53 = call i8* @lmprintf(i32 %52)
  store i8* %53, i8** %2, align 8
  br label %121

54:                                               ; preds = %24
  %55 = load i32, i32* @MSG_060, align 4
  %56 = call i8* @lmprintf(i32 %55)
  store i8* %56, i8** %2, align 8
  br label %121

57:                                               ; preds = %24
  %58 = load i32, i32* @MSG_061, align 4
  %59 = call i8* @lmprintf(i32 %58)
  store i8* %59, i8** %2, align 8
  br label %121

60:                                               ; preds = %24
  %61 = load i32, i32* @MSG_062, align 4
  %62 = call i8* @lmprintf(i32 %61)
  store i8* %62, i8** %2, align 8
  br label %121

63:                                               ; preds = %24
  %64 = load i32, i32* @MSG_063, align 4
  %65 = call i8* @lmprintf(i32 %64)
  store i8* %65, i8** %2, align 8
  br label %121

66:                                               ; preds = %24
  %67 = load i32, i32* @MSG_064, align 4
  %68 = call i8* @lmprintf(i32 %67)
  store i8* %68, i8** %2, align 8
  br label %121

69:                                               ; preds = %24
  %70 = load i32, i32* @MSG_065, align 4
  %71 = call i8* @lmprintf(i32 %70)
  store i8* %71, i8** %2, align 8
  br label %121

72:                                               ; preds = %24
  %73 = load i32, i32* @MSG_066, align 4
  %74 = call i8* @lmprintf(i32 %73)
  store i8* %74, i8** %2, align 8
  br label %121

75:                                               ; preds = %24
  %76 = load i32, i32* @MSG_067, align 4
  %77 = call i8* @lmprintf(i32 %76)
  store i8* %77, i8** %2, align 8
  br label %121

78:                                               ; preds = %24
  %79 = load i32, i32* @MSG_068, align 4
  %80 = call i8* @lmprintf(i32 %79)
  store i8* %80, i8** %2, align 8
  br label %121

81:                                               ; preds = %24
  %82 = load i32, i32* @MSG_069, align 4
  %83 = call i8* @lmprintf(i32 %82)
  store i8* %83, i8** %2, align 8
  br label %121

84:                                               ; preds = %24
  %85 = load i32, i32* @MSG_070, align 4
  %86 = call i8* @lmprintf(i32 %85)
  store i8* %86, i8** %2, align 8
  br label %121

87:                                               ; preds = %24
  %88 = load i32, i32* @MSG_071, align 4
  %89 = call i8* @lmprintf(i32 %88)
  store i8* %89, i8** %2, align 8
  br label %121

90:                                               ; preds = %24
  %91 = load i32, i32* @MSG_072, align 4
  %92 = call i8* @lmprintf(i32 %91)
  store i8* %92, i8** %2, align 8
  br label %121

93:                                               ; preds = %24
  %94 = load i32, i32* @MSG_073, align 4
  %95 = call i8* @lmprintf(i32 %94)
  store i8* %95, i8** %2, align 8
  br label %121

96:                                               ; preds = %24
  %97 = load i32, i32* @MSG_074, align 4
  %98 = call i8* @lmprintf(i32 %97)
  store i8* %98, i8** %2, align 8
  br label %121

99:                                               ; preds = %24
  %100 = load i32, i32* @MSG_075, align 4
  %101 = call i8* @lmprintf(i32 %100)
  store i8* %101, i8** %2, align 8
  br label %121

102:                                              ; preds = %24
  %103 = load i32, i32* @MSG_076, align 4
  %104 = call i8* @lmprintf(i32 %103)
  store i8* %104, i8** %2, align 8
  br label %121

105:                                              ; preds = %24
  %106 = load i32, i32* @MSG_077, align 4
  %107 = call i8* @lmprintf(i32 %106)
  store i8* %107, i8** %2, align 8
  br label %121

108:                                              ; preds = %24
  %109 = load i32, i32* @MSG_078, align 4
  %110 = call i8* @lmprintf(i32 %109)
  store i8* %110, i8** %2, align 8
  br label %121

111:                                              ; preds = %24
  %112 = load i32, i32* @MSG_079, align 4
  %113 = call i8* @lmprintf(i32 %112)
  store i8* %113, i8** %2, align 8
  br label %121

114:                                              ; preds = %24
  %115 = load i32, i32* @MSG_172, align 4
  %116 = call i8* @lmprintf(i32 %115)
  store i8* %116, i8** %2, align 8
  br label %121

117:                                              ; preds = %24
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @SetLastError(i32 %118)
  %120 = call i8* (...) @WindowsErrorString()
  store i8* %120, i8** %2, align 8
  br label %121

121:                                              ; preds = %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %20, %12
  %122 = load i8*, i8** %2, align 8
  ret i8* %122
}

declare dso_local i32 @IS_ERROR(i32) #1

declare dso_local i32 @SCODE_CODE(i32) #1

declare dso_local i8* @lmprintf(i32) #1

declare dso_local i64 @SCODE_FACILITY(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i8* @WindowsErrorString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
