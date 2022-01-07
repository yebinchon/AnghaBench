; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_log.c_EndLog.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_log.c_EndLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stat = type { i64 }

@gOurDirectoryPath = common dso_local global i8* null, align 8
@gMaxLogSize = common dso_local global double 0.000000e+00, align 8
@gLogFileName = common dso_local global i8* null, align 8
@FOPEN_READ_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"log.tmp\00", align 1
@FOPEN_WRITE_TEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EndLog() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.Stat, align 8
  %4 = alloca i64, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = load i8*, i8** @gOurDirectoryPath, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %114

13:                                               ; preds = %0
  %14 = load double, double* @gMaxLogSize, align 8
  %15 = fcmp ole double %14, 0.000000e+00
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** @gLogFileName, align 8
  %18 = call i64 @Stat(i8* %17, %struct.Stat* %3)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %13
  br label %114

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Stat, %struct.Stat* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load double, double* @gMaxLogSize, align 8
  %25 = fptoui double %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %114

28:                                               ; preds = %21
  %29 = load i8*, i8** @gLogFileName, align 8
  %30 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %31 = call i32* @fopen(i8* %29, i32 %30)
  store i32* %31, i32** %2, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %114

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.Stat, %struct.Stat* %3, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load double, double* @gMaxLogSize, align 8
  %38 = fptosi double %37 to i64
  %39 = sub nsw i64 %36, %38
  %40 = load double, double* @gMaxLogSize, align 8
  %41 = fmul double 3.000000e-01, %40
  %42 = fptosi double %41 to i64
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %53, %34
  %45 = load i64, i64* %4, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %49 = load i32*, i32** %2, align 8
  %50 = call i32* @fgets(i8* %48, i32 512, i32* %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %114

53:                                               ; preds = %47
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %55 = call i64 @strlen(i8* %54)
  %56 = load i64, i64* %4, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %4, align 8
  br label %44

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %75, %58
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %61 = load i32*, i32** %2, align 8
  %62 = call i32* @fgets(i8* %60, i32 512, i32* %61)
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i8*, i8** @gLogFileName, align 8
  %68 = call i64 @remove(i8* %67)
  br label %114

69:                                               ; preds = %59
  %70 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = call i32 @isspace(i8 signext %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %76

75:                                               ; preds = %69
  br label %59

76:                                               ; preds = %74
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %78 = call i32 @OurDirectoryPath(i8* %77, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %80 = load i32, i32* @FOPEN_WRITE_TEXT, align 4
  %81 = call i32* @fopen(i8* %79, i32 %80)
  store i32* %81, i32** %1, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @fclose(i32* %84)
  br label %114

86:                                               ; preds = %76
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @fputs(i8* %87, i32* %88)
  br label %90

90:                                               ; preds = %95, %86
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %92 = load i32*, i32** %2, align 8
  %93 = call i32* @fgets(i8* %91, i32 512, i32* %92)
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @fputs(i8* %96, i32* %97)
  br label %90

99:                                               ; preds = %90
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @fclose(i32* %100)
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @fclose(i32* %102)
  %104 = load i8*, i8** @gLogFileName, align 8
  %105 = call i64 @remove(i8* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %114

108:                                              ; preds = %99
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %110 = load i8*, i8** @gLogFileName, align 8
  %111 = call i64 @rename(i8* %109, i8* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %12, %20, %27, %33, %52, %64, %83, %107, %113, %108
  ret void
}

declare dso_local i64 @Stat(i8*, %struct.Stat*) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @remove(i8*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @OurDirectoryPath(i8*, i32, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
