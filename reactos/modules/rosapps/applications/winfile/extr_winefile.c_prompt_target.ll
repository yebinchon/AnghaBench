; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_prompt_target.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_prompt_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@MAX_PATH = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@IDD_SELECT_DESTINATION = common dso_local global i32 0, align 4
@DestinationDlgProc = common dso_local global i32 0, align 4
@IDOK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@_MAX_FNAME = common dso_local global i32 0, align 4
@_MAX_EXT = common dso_local global i32 0, align 4
@prompt_target.sAppend = internal constant [8 x i8] c"%s/%s%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*)* @prompt_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompt_target(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 @get_path(%struct.TYPE_6__* %21, i8* %18)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 4
  %24 = load i32, i32* @IDD_SELECT_DESTINATION, align 4
  %25 = call i32 @MAKEINTRESOURCEW(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DestinationDlgProc, align 4
  %30 = ptrtoint i8* %18 to i32
  %31 = call i64 @DialogBoxParamW(i32 %23, i32 %25, i32 %28, i32 %29, i32 %30)
  %32 = load i64, i64* @IDOK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %111

36:                                               ; preds = %3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @get_path(%struct.TYPE_6__* %39, i8* %40)
  %42 = getelementptr inbounds i8, i8* %18, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 47
  br i1 %45, label %46, label %90

46:                                               ; preds = %36
  %47 = getelementptr inbounds i8, i8* %18, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 58
  br i1 %50, label %51, label %90

51:                                               ; preds = %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @get_path(%struct.TYPE_6__* %56, i8* %57)
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @lstrlenW(i8* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 92
  br i1 %68, label %69, label %84

69:                                               ; preds = %51
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 47
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 47, i8* %83, align 1
  br label %84

84:                                               ; preds = %78, %69, %51
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = call i32 @lstrcpyW(i8* %88, i8* %18)
  br label %93

90:                                               ; preds = %46, %36
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @lstrcpyW(i8* %91, i8* %18)
  br label %93

93:                                               ; preds = %90, %84
  %94 = call i64 @is_directory(i8* %18)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i32, i32* @_MAX_FNAME, align 4
  %98 = zext i32 %97 to i64
  %99 = call i8* @llvm.stacksave()
  store i8* %99, i8** %12, align 8
  %100 = alloca i8, i64 %98, align 16
  store i64 %98, i64* %13, align 8
  %101 = load i32, i32* @_MAX_EXT, align 4
  %102 = zext i32 %101 to i64
  %103 = alloca i8, i64 %102, align 16
  store i64 %102, i64* %14, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @_wsplitpath(i8* %104, i32* null, i32* null, i8* %100, i8* %103)
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @wsprintfW(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @prompt_target.sAppend, i64 0, i64 0), i8* %18, i8* %100, i8* %103)
  %108 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %108)
  br label %109

109:                                              ; preds = %96, %93
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %111

111:                                              ; preds = %109, %34
  %112 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_path(%struct.TYPE_6__*, i8*) #2

declare dso_local i64 @DialogBoxParamW(i32, i32, i32, i32, i32) #2

declare dso_local i32 @MAKEINTRESOURCEW(i32) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i64 @is_directory(i8*) #2

declare dso_local i32 @_wsplitpath(i8*, i32*, i32*, i8*, i8*) #2

declare dso_local i32 @wsprintfW(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
