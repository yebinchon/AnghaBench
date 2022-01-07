; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_scriptCodeSqlFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_scriptCodeSqlFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@midClass = common dso_local global i64* null, align 8
@CCLASS_DIGIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @scriptCodeSqlFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scriptCodeSqlFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i8* @sqlite3_value_text(i32* %16)
  store i8* %17, i8** %7, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sqlite3_value_bytes(i32* %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %102, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @utf8Read(i8* %26, i32 %27, i32* %10)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 687
  br i1 %37, label %38, label %62

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 128
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i64*, i64** @midClass, align 8
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 127
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CCLASS_DIGIT, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41, %38
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %61

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 48
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp sle i32 %57, 57
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %56, %53
  br label %61

61:                                               ; preds = %60, %50
  br label %102

62:                                               ; preds = %25
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %63, 1024
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp sle i32 %66, 1279
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, 2
  store i32 %70, i32* %11, align 4
  br label %101

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %9, align 4
  %73 = icmp sge i32 %72, 902
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = icmp sle i32 %75, 974
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, 4
  store i32 %79, i32* %11, align 4
  br label %100

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 1424
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %84, 1535
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, 8
  store i32 %88, i32* %11, align 4
  br label %99

89:                                               ; preds = %83, %80
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %90, 1536
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp sle i32 %93, 1791
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, 16
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %95, %92, %89
  br label %99

99:                                               ; preds = %98, %86
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %68
  br label %102

102:                                              ; preds = %101, %61
  br label %22

103:                                              ; preds = %22
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 1, i32* %11, align 4
  br label %110

110:                                              ; preds = %109, %106, %103
  %111 = load i32, i32* %11, align 4
  switch i32 %111, label %118 [
    i32 0, label %112
    i32 1, label %113
    i32 2, label %114
    i32 4, label %115
    i32 8, label %116
    i32 16, label %117
  ]

112:                                              ; preds = %110
  store i32 999, i32* %12, align 4
  br label %119

113:                                              ; preds = %110
  store i32 215, i32* %12, align 4
  br label %119

114:                                              ; preds = %110
  store i32 220, i32* %12, align 4
  br label %119

115:                                              ; preds = %110
  store i32 200, i32* %12, align 4
  br label %119

116:                                              ; preds = %110
  store i32 125, i32* %12, align 4
  br label %119

117:                                              ; preds = %110
  store i32 160, i32* %12, align 4
  br label %119

118:                                              ; preds = %110
  store i32 998, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %117, %116, %115, %114, %113, %112
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @sqlite3_result_int(i32* %120, i32 %121)
  ret void
}

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @utf8Read(i8*, i32, i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
