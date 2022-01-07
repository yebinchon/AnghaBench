; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_getargs.c_aexpand.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/misc/extr_getargs.c_aexpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"*?\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aexpand(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %102

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @strpbrk(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %102

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @FindFirstFileA(i8* %26, %struct.TYPE_4__* %7)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %101

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 92
  br label %46

46:                                               ; preds = %41, %36, %32
  %47 = phi i1 [ false, %36 ], [ false, %32 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %6, align 8
  br label %32

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %12, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %66, label %61

61:                                               ; preds = %51
  %62 = load i8*, i8** %6, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 92
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %51
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @strncpy(i8* %18, i8* %70, i64 %71)
  br label %73

73:                                               ; preds = %94, %69
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i8, i8* %18, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @strcpy(i8* %81, i32 %83)
  %85 = call i8* @_strdup(i8* %18)
  %86 = call i64 @aadd(i8* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @FindClose(i64 %89)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %115

91:                                               ; preds = %79
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %91, %73
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @FindNextFileA(i64 %95, %struct.TYPE_4__* %7)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %73, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @FindClose(i64 %99)
  br label %101

101:                                              ; preds = %98, %25
  br label %102

102:                                              ; preds = %101, %21, %2
  %103 = load i64, i64* %9, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i8*, i8** %4, align 8
  %107 = call i64 @aadd(i8* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %115

110:                                              ; preds = %105
  br label %114

111:                                              ; preds = %102
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @free(i8* %112)
  br label %114

114:                                              ; preds = %111, %110
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %115

115:                                              ; preds = %114, %109, %88
  %116 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i64 @FindFirstFileA(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i64 @aadd(i8*) #2

declare dso_local i8* @_strdup(i8*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i64 @FindNextFileA(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
