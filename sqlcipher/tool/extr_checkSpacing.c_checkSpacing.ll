; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_checkSpacing.c_checkSpacing.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_checkSpacing.c_checkSpacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cannot open %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s:%d: tab (\\t) character\0A\00", align 1
@CR_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s:%d: carriage-return (\\r) character\0A\00", align 1
@WSEOL_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s:%d: whitespace at end-of-line\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"%s:%d: blank lines at end of file (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @checkSpacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkSpacing(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2000 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %115

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %101, %19
  %21 = getelementptr inbounds [2000 x i8], [2000 x i8]* %11, i64 0, i64 0
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @fgets(i8* %21, i32 2000, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %102

25:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %86, %25
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2000 x i8], [2000 x i8]* %11, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %89

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2000 x i8], [2000 x i8]* %11, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 %46)
  store i32 1, i32* %8, align 4
  br label %85

48:                                               ; preds = %41, %34
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2000 x i8], [2000 x i8]* %11, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 13
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @CR_OK, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %55
  br label %84

65:                                               ; preds = %48
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2000 x i8], [2000 x i8]* %11, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  br label %83

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2000 x i8], [2000 x i8]* %11, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 10
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %73
  br label %83

83:                                               ; preds = %82, %72
  br label %84

84:                                               ; preds = %83, %64
  br label %85

85:                                               ; preds = %84, %44
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %28

89:                                               ; preds = %28
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @WSEOL_OK, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %92, %89
  br label %20

102:                                              ; preds = %20
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @fclose(i32* %103)
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %109, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %16, %108, %102
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
