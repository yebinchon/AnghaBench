; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_ReportHeader.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_ReportHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i8*, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@LINESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"#define %s%-30s %3d\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReportHeader(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  %12 = load i32, i32* @LINESIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @LINESIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load %struct.lemon*, %struct.lemon** %2, align 8
  %20 = getelementptr inbounds %struct.lemon, %struct.lemon* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.lemon*, %struct.lemon** %2, align 8
  %25 = getelementptr inbounds %struct.lemon, %struct.lemon* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  br label %28

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %28

28:                                               ; preds = %27, %23
  %29 = load %struct.lemon*, %struct.lemon** %2, align 8
  %30 = call i32* @file_open(%struct.lemon* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.lemon*, %struct.lemon** %2, align 8
  %37 = getelementptr inbounds %struct.lemon, %struct.lemon* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @LINESIZE, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @fgets(i8* %15, i32 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i1 [ false, %34 ], [ %44, %40 ]
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.lemon*, %struct.lemon** %2, align 8
  %50 = getelementptr inbounds %struct.lemon, %struct.lemon* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @lemon_sprintf(i8* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %57, i32 %58)
  %60 = call i64 @strcmp(i8* %15, i8* %18)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %67

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %34

67:                                               ; preds = %62, %45
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @fgetc(i32* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fclose(i32* %70)
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.lemon*, %struct.lemon** %2, align 8
  %74 = getelementptr inbounds %struct.lemon, %struct.lemon* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @EOF, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %11, align 4
  br label %116

82:                                               ; preds = %77, %67
  br label %83

83:                                               ; preds = %82, %28
  %84 = load %struct.lemon*, %struct.lemon** %2, align 8
  %85 = call i32* @file_open(%struct.lemon* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %85, i32** %3, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %83
  store i32 1, i32* %9, align 4
  br label %89

89:                                               ; preds = %109, %88
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.lemon*, %struct.lemon** %2, align 8
  %92 = getelementptr inbounds %struct.lemon, %struct.lemon* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load i32*, i32** %3, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load %struct.lemon*, %struct.lemon** %2, align 8
  %99 = getelementptr inbounds %struct.lemon, %struct.lemon* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %100, i64 %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @fprintf(i32* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %97, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %89

112:                                              ; preds = %89
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @fclose(i32* %113)
  br label %115

115:                                              ; preds = %112, %83
  store i32 1, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %81
  %117 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @file_open(%struct.lemon*, i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @lemon_sprintf(i8*, i8*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fgetc(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
