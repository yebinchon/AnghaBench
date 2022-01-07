; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_emit_destructor_code.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_emit_destructor_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i8*, i32, i32 }
%struct.lemon = type { i8*, i8*, i32, i32, i32 }

@TERMINAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"(yypminor->yy%d)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_destructor_code(i32* %0, %struct.symbol* %1, %struct.lemon* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.lemon*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.symbol* %1, %struct.symbol** %6, align 8
  store %struct.lemon* %2, %struct.lemon** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.symbol*, %struct.symbol** %6, align 8
  %11 = getelementptr inbounds %struct.symbol, %struct.symbol* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TERMINAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.lemon*, %struct.lemon** %7, align 8
  %17 = getelementptr inbounds %struct.lemon, %struct.lemon* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %149

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %81

28:                                               ; preds = %4
  %29 = load %struct.symbol*, %struct.symbol** %6, align 8
  %30 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load %struct.symbol*, %struct.symbol** %6, align 8
  %35 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.lemon*, %struct.lemon** %7, align 8
  %43 = getelementptr inbounds %struct.lemon, %struct.lemon* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %33
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.symbol*, %struct.symbol** %6, align 8
  %52 = getelementptr inbounds %struct.symbol, %struct.symbol* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.lemon*, %struct.lemon** %7, align 8
  %55 = getelementptr inbounds %struct.lemon, %struct.lemon* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @tplt_linedir(i32* %50, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %46, %33
  br label %80

59:                                               ; preds = %28
  %60 = load %struct.lemon*, %struct.lemon** %7, align 8
  %61 = getelementptr inbounds %struct.lemon, %struct.lemon* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.lemon*, %struct.lemon** %7, align 8
  %66 = getelementptr inbounds %struct.lemon, %struct.lemon* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %149

71:                                               ; preds = %64
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %79

77:                                               ; preds = %59
  %78 = call i32 @assert(i32 0)
  br label %79

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %22
  br label %82

82:                                               ; preds = %119, %81
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %122

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 36
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 36
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.symbol*, %struct.symbol** %6, align 8
  %100 = getelementptr inbounds %struct.symbol, %struct.symbol* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  br label %119

105:                                              ; preds = %91, %86
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i8*, i8** %9, align 8
  %116 = load i8, i8* %115, align 1
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @fputc(i8 signext %116, i32* %117)
  br label %119

119:                                              ; preds = %114, %97
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %9, align 8
  br label %82

122:                                              ; preds = %82
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.lemon*, %struct.lemon** %7, align 8
  %129 = getelementptr inbounds %struct.lemon, %struct.lemon* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %122
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.lemon*, %struct.lemon** %7, align 8
  %140 = getelementptr inbounds %struct.lemon, %struct.lemon* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @tplt_linedir(i32* %136, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %132, %122
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %70, %21
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @tplt_linedir(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
