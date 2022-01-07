; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_ptrChngFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_ptrChngFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"text16\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bytes16\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @ptrChngFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptrChngFunction(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %139

13:                                               ; preds = %3
  %14 = load i32**, i32*** %6, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @sqlite3_value_text(i32* %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %139

22:                                               ; preds = %13
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @sqlite3_value_text(i32* %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %7, align 8
  br label %55

32:                                               ; preds = %22
  %33 = load i8*, i8** %9, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32**, i32*** %6, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @sqlite3_value_text16(i32* %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %7, align 8
  br label %54

42:                                               ; preds = %32
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32**, i32*** %6, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @sqlite3_value_blob(i32* %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %7, align 8
  br label %53

52:                                               ; preds = %42
  br label %139

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i32**, i32*** %6, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @sqlite3_value_text(i32* %58)
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %139

64:                                               ; preds = %55
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32**, i32*** %6, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @sqlite3_value_bytes(i32* %71)
  br label %90

73:                                               ; preds = %64
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32**, i32*** %6, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @sqlite3_value_bytes16(i32* %80)
  br label %89

82:                                               ; preds = %73
  %83 = load i8*, i8** %9, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %88

87:                                               ; preds = %82
  br label %139

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i32**, i32*** %6, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 3
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @sqlite3_value_text(i32* %93)
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %139

99:                                               ; preds = %90
  %100 = load i8*, i8** %9, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32**, i32*** %6, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @sqlite3_value_text(i32* %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %8, align 8
  br label %132

109:                                              ; preds = %99
  %110 = load i8*, i8** %9, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32**, i32*** %6, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @sqlite3_value_text16(i32* %116)
  %118 = inttoptr i64 %117 to i8*
  store i8* %118, i8** %8, align 8
  br label %131

119:                                              ; preds = %109
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32**, i32*** %6, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i64 @sqlite3_value_blob(i32* %126)
  %128 = inttoptr i64 %127 to i8*
  store i8* %128, i8** %8, align 8
  br label %130

129:                                              ; preds = %119
  br label %139

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %113
  br label %132

132:                                              ; preds = %131, %103
  %133 = load i32*, i32** %4, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = icmp ne i8* %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @sqlite3_result_int(i32* %133, i32 %137)
  br label %139

139:                                              ; preds = %132, %129, %98, %87, %63, %52, %21, %12
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @sqlite3_value_text16(i32*) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_value_bytes16(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
