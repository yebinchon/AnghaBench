; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_getargs.c_wexpand.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_getargs.c_wexpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 42, i32 63, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wexpand(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %99

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @wcspbrk(i32* %22, i8* bitcast ([3 x i32]* @.str to i8*))
  store i32* %23, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %99

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @FindFirstFileW(i32* %26, %struct.TYPE_4__* %7)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %98

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 47
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 92
  br label %44

44:                                               ; preds = %40, %36, %32
  %45 = phi i1 [ false, %36 ], [ false, %32 ], [ %43, %40 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 -1
  store i32* %48, i32** %6, align 8
  br label %32

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  store i64 %55, i64* %12, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 47
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %49
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @wcsncpy(i32* %18, i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %91, %66
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %70
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i32, i32* %18, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @wcscpy(i32* %78, i32 %80)
  %82 = call i32* @_wcsdup(i32* %18)
  %83 = call i64 @wadd(i32* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @FindClose(i64 %86)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %112

88:                                               ; preds = %76
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %70
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %8, align 8
  %93 = call i64 @FindNextFileW(i64 %92, %struct.TYPE_4__* %7)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %70, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @FindClose(i64 %96)
  br label %98

98:                                               ; preds = %95, %25
  br label %99

99:                                               ; preds = %98, %21, %2
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32*, i32** %4, align 8
  %104 = call i64 @wadd(i32* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %112

107:                                              ; preds = %102
  br label %111

108:                                              ; preds = %99
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @free(i32* %109)
  br label %111

111:                                              ; preds = %108, %107
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %112

112:                                              ; preds = %111, %106, %85
  %113 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @wcspbrk(i32*, i8*) #2

declare dso_local i64 @FindFirstFileW(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @wcsncpy(i32*, i32*, i64) #2

declare dso_local i32 @wcscpy(i32*, i32) #2

declare dso_local i64 @wadd(i32*) #2

declare dso_local i32* @_wcsdup(i32*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i64 @FindNextFileW(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
