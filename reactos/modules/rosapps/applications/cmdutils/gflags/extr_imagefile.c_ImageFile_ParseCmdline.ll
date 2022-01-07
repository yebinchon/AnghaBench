; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_imagefile.c_ImageFile_ParseCmdline.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/gflags/extr_imagefile.c_ImageFile_ParseCmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ImageFile = common dso_local global i8* null, align 8
@OptionsSet = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i32] [i32 85, i32 110, i32 101, i32 120, i32 112, i32 101, i32 99, i32 116, i32 101, i32 100, i32 32, i32 97, i32 114, i32 103, i32 117, i32 109, i32 101, i32 110, i32 116, i32 32, i32 45, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@DEST_IMAGE = common dso_local global i32 0, align 4
@OptionsAdd = common dso_local global i32 0, align 4
@OptionsRemove = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i32] [i32 78, i32 111, i32 32, i32 73, i32 109, i32 97, i32 103, i32 101, i32 32, i32 115, i32 112, i32 101, i32 99, i32 105, i32 102, i32 105, i32 101, i32 100, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ImageFile_ParseCmdline(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  br label %8

8:                                                ; preds = %100, %3
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %103

12:                                               ; preds = %8
  %13 = load i8*, i8** @ImageFile, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i8**, i8*** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** @ImageFile, align 8
  br label %99

21:                                               ; preds = %12
  %22 = load i8**, i8*** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %31, label %53

31:                                               ; preds = %21
  %32 = load i64, i64* @OptionsSet, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8**, i8*** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @wprintf(i8* bitcast ([28 x i32]* @.str to i8*), i8* %39)
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %111

42:                                               ; preds = %31
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i32, i32* @DEST_IMAGE, align 4
  %50 = call i32 @FindFlag(i8* %48, i32 %49)
  %51 = load i32, i32* @OptionsAdd, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @OptionsAdd, align 4
  br label %98

53:                                               ; preds = %21
  %54 = load i8**, i8*** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br i1 %62, label %63, label %85

63:                                               ; preds = %53
  %64 = load i64, i64* @OptionsSet, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i8**, i8*** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, ...) @wprintf(i8* bitcast ([28 x i32]* @.str to i8*), i8* %71)
  %73 = load i64, i64* @FALSE, align 8
  store i64 %73, i64* %4, align 8
  br label %111

74:                                               ; preds = %63
  %75 = load i8**, i8*** %7, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i32, i32* @DEST_IMAGE, align 4
  %82 = call i32 @FindFlag(i8* %80, i32 %81)
  %83 = load i32, i32* @OptionsRemove, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* @OptionsRemove, align 4
  br label %97

85:                                               ; preds = %53
  %86 = load i64, i64* @TRUE, align 8
  store i64 %86, i64* @OptionsSet, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @wcstoul(i8* %91, i32* null, i32 16)
  store i32 %92, i32* @OptionsAdd, align 4
  %93 = load i32, i32* @OptionsAdd, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 0, i32* @OptionsAdd, align 4
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %42
  br label %99

99:                                               ; preds = %98, %15
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %8

103:                                              ; preds = %8
  %104 = load i8*, i8** @ImageFile, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = call i32 (i8*, ...) @wprintf(i8* bitcast ([20 x i32]* @.str.1 to i8*))
  %108 = load i64, i64* @FALSE, align 8
  store i64 %108, i64* %4, align 8
  br label %111

109:                                              ; preds = %103
  %110 = load i64, i64* @TRUE, align 8
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %109, %106, %66, %34
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i32 @FindFlag(i8*, i32) #1

declare dso_local i32 @wcstoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
