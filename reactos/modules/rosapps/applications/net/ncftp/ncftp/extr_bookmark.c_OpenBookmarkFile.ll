; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_OpenBookmarkFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_OpenBookmarkFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gOurDirectoryPath = common dso_local global i8* null, align 8
@kBookmarkFileName = common dso_local global i32 0, align 4
@FOPEN_READ_TEXT = common dso_local global i32 0, align 4
@kOldBookmarkFileName = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: invalid format.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%*s %*s %*s %d\00", align 1
@kBookmarkMinVersion = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: invalid format, or bad version.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".v%d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: old version.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OpenBookmarkFile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i8*, i8** @gOurDirectoryPath, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %150

17:                                               ; preds = %1
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %19 = load i32, i32* @kBookmarkFileName, align 4
  %20 = call i32 @OurDirectoryPath(i8* %18, i32 256, i32 %19)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %22 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %23 = call i32* @fopen(i8* %21, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %28 = load i32, i32* @kOldBookmarkFileName, align 4
  %29 = call i32 @OurDirectoryPath(i8* %27, i32 256, i32 %28)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %32 = call i64 @rename(i8* %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %36 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %37 = call i32* @fopen(i8* %35, i32 %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32* null, i32** %2, align 8
  br label %150

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %26
  store i32* null, i32** %2, align 8
  br label %150

43:                                               ; preds = %17
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %45 = call i32 @_chmod(i8* %44, i32 384)
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @FGets(i8* %46, i32 256, i32* %47)
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @stderr, align 4
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @fclose(i32* %54)
  store i32* null, i32** %2, align 8
  br label %150

56:                                               ; preds = %43
  store i32 -1, i32* %8, align 4
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %58 = call i32 @sscanf(i8* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @kBookmarkMinVersion, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %68 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @fclose(i32* %69)
  store i32* null, i32** %2, align 8
  br label %150

71:                                               ; preds = %62
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %74 = call i32 @STRNCPY(i8* %72, i8* %73)
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @sprintf(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %80 = call i32 @STRNCAT(i8* %78, i8* %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %83 = call i64 @rename(i8* %81, i8* %82)
  %84 = load i32, i32* @stderr, align 4
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %86 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @fclose(i32* %87)
  store i32* null, i32** %2, align 8
  br label %150

89:                                               ; preds = %56
  store i32 -1, i32* %9, align 4
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %91 = load i32*, i32** %7, align 8
  %92 = call i32* @FGets(i8* %90, i32 256, i32* %91)
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %97 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %96)
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @fclose(i32* %98)
  store i32* null, i32** %2, align 8
  br label %150

100:                                              ; preds = %89
  %101 = load i32*, i32** %3, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  store i32* %104, i32** %2, align 8
  br label %150

105:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %112, %105
  %107 = load i32*, i32** %7, align 8
  %108 = call i64 @GetNextBookmark(i32* %107, i32* %10)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %115

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %106

115:                                              ; preds = %110
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @CloseBookmarkFile(i32* %116)
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %119 = load i32, i32* @FOPEN_READ_TEXT, align 4
  %120 = call i32* @fopen(i8* %118, i32 %119)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32* null, i32** %2, align 8
  br label %150

124:                                              ; preds = %115
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %126 = load i32*, i32** %7, align 8
  %127 = call i32* @FGets(i8* %125, i32 256, i32* %126)
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @stderr, align 4
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %132 = call i32 @fprintf(i32 %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @fclose(i32* %133)
  store i32* null, i32** %2, align 8
  br label %150

135:                                              ; preds = %124
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %137 = load i32*, i32** %7, align 8
  %138 = call i32* @FGets(i8* %136, i32 256, i32* %137)
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* @stderr, align 4
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %143 = call i32 @fprintf(i32 %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %142)
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @fclose(i32* %144)
  store i32* null, i32** %2, align 8
  br label %150

146:                                              ; preds = %135
  %147 = load i32, i32* %9, align 4
  %148 = load i32*, i32** %3, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32*, i32** %7, align 8
  store i32* %149, i32** %2, align 8
  br label %150

150:                                              ; preds = %146, %140, %129, %123, %103, %94, %71, %65, %50, %42, %40, %16
  %151 = load i32*, i32** %2, align 8
  ret i32* %151
}

declare dso_local i32 @OurDirectoryPath(i8*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @_chmod(i8*, i32) #1

declare dso_local i32* @FGets(i8*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i64 @GetNextBookmark(i32*, i32*) #1

declare dso_local i32 @CloseBookmarkFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
