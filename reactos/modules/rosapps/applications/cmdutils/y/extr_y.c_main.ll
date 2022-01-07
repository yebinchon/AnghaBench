; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/y/extr_y.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/y/extr_y.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@BUFF_SIZE = common dso_local global i32 0, align 4
@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"copy stdin to stdout and then files to stdout\0A\0AY [files]\0A\0Afiles         files to copy to stdout\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"File not found - %s\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* @BUFF_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %23 = call i64 @GetStdHandle(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %25 = call i64 @GetStdHandle(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = call i64 @_tcsncmp(i8* %31, i32 %32, i32 2)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = call i32 @_T(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @ConOutPuts(i32 %36)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %137

38:                                               ; preds = %28, %2
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i64, i64* %8, align 8
  %41 = trunc i64 %19 to i32
  %42 = call i64 @ReadFile(i64 %40, i8* %21, i32 %41, i64* %13, i32* null)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @WriteFile(i64 %49, i8* %21, i64 %50, i64* %14, i32* null)
  br label %52

52:                                               ; preds = %48, %45, %39
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %13, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %15, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %39, label %61

61:                                               ; preds = %59
  %62 = call i32 @Sleep(i32 0)
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %133, %61
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %136

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @FindFirstFile(i8* %72, %struct.TYPE_4__* %16)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @ConErrPrintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %133

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %126, %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @GENERIC_READ, align 4
  %89 = load i32, i32* @FILE_SHARE_READ, align 4
  %90 = load i32, i32* @OPEN_EXISTING, align 4
  %91 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %92 = call i64 @CreateFile(i8* %87, i32 %88, i32 %89, i32* null, i32 %90, i32 %91, i32* null)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @ConErrPrintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  br label %126

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %121, %100
  %102 = load i64, i64* %10, align 8
  %103 = trunc i64 %19 to i32
  %104 = call i64 @ReadFile(i64 %102, i8* %21, i32 %103, i64* %13, i32* null)
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i64, i64* %15, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @WriteFile(i64 %111, i8* %21, i64 %112, i64* %14, i32* null)
  br label %114

114:                                              ; preds = %110, %107, %101
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %13, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i64, i64* %15, align 8
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ false, %115 ], [ %120, %118 ]
  br i1 %122, label %101, label %123

123:                                              ; preds = %121
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @CloseHandle(i64 %124)
  br label %126

126:                                              ; preds = %123, %96
  %127 = load i64, i64* %7, align 8
  %128 = call i64 @FindNextFile(i64 %127, %struct.TYPE_4__* %16)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %85, label %130

130:                                              ; preds = %126
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @FindClose(i64 %131)
  br label %133

133:                                              ; preds = %130, %77
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %63

136:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %137

137:                                              ; preds = %136, %35
  %138 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetStdHandle(i32) #2

declare dso_local i64 @_tcsncmp(i8*, i32, i32) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i32 @ConOutPuts(i32) #2

declare dso_local i64 @ReadFile(i64, i8*, i32, i64*, i32*) #2

declare dso_local i32 @WriteFile(i64, i8*, i64, i64*, i32*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @FindFirstFile(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @ConErrPrintf(i8*, i8*) #2

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @FindNextFile(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
