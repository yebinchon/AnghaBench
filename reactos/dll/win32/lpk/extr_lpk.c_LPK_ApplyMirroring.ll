; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lpk/extr_lpk.c_LPK_ApplyMirroring.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lpk/extr_lpk.c_LPK_ApplyMirroring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPK_ApplyMirroring.translationW = internal constant [25 x i8] c"\\VarFileInfo\\Translation\00", align 16
@LPK_ApplyMirroring.filedescW = internal constant [41 x i8] c"\\StringFileInfo\\%04x%04x\\FileDescription\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"found description %s\0A\00", align 1
@LAYOUT_RTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @LPK_ApplyMirroring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LPK_ApplyMirroring() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %2, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %14 = call i32 (...) @GetUserDefaultLangID()
  store i32 %14, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = call i32 @GetModuleFileNameW(i32 0, i8* %13, i32 %15)
  %17 = call i32 @GetFileVersionInfoSizeW(i8* %13, i32* null)
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  br label %133

20:                                               ; preds = %0
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @HeapAlloc(i32 %21, i32 0, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %133

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @GetFileVersionInfoW(i8* %13, i32 0, i32 %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %133

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i32** %8 to i8**
  %35 = call i32 @VerQueryValueW(i8* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @LPK_ApplyMirroring.translationW, i64 0, i64 0), i8** %34, i32* %5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %32
  br label %133

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %62, %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @LOWORD(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %65

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %46

65:                                               ; preds = %60, %46
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @LOWORD(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @PRIMARYLANGID(i32 %81)
  %83 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %84 = call i64 @MAKELANGID(i32 %82, i32 %83)
  %85 = icmp eq i64 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %70

91:                                               ; preds = %86, %70
  br label %92

92:                                               ; preds = %91, %65
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @LOWORD(i32 %102)
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @HIWORD(i32 %108)
  %110 = call i32 @sprintfW(i8* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @LPK_ApplyMirroring.filedescW, i64 0, i64 0), i64 %103, i32 %109)
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @VerQueryValueW(i8* %111, i8* %13, i8** %1, i32* %5)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %97
  br label %133

115:                                              ; preds = %97
  %116 = load i8*, i8** %1, align 8
  %117 = call i32 @debugstr_w(i8* %116)
  %118 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %1, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 8206
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load i8*, i8** %1, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 8206
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @LAYOUT_RTL, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %124, %115
  br label %133

133:                                              ; preds = %132, %114, %40, %31, %25, %19
  %134 = call i32 (...) @GetProcessHeap()
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @HeapFree(i32 %134, i32 0, i8* %135)
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @SetProcessDefaultLayout(i32 %137)
  %139 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %139)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetUserDefaultLangID(...) #2

declare dso_local i32 @GetModuleFileNameW(i32, i8*, i32) #2

declare dso_local i32 @GetFileVersionInfoSizeW(i8*, i32*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @GetFileVersionInfoW(i8*, i32, i32, i8*) #2

declare dso_local i32 @VerQueryValueW(i8*, i8*, i8**, i32*) #2

declare dso_local i64 @LOWORD(i32) #2

declare dso_local i64 @MAKELANGID(i32, i32) #2

declare dso_local i32 @PRIMARYLANGID(i32) #2

declare dso_local i32 @sprintfW(i8*, i8*, i64, i32) #2

declare dso_local i32 @HIWORD(i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @SetProcessDefaultLayout(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
