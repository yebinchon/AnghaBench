; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_wlocale_win32.c__Locale_codecvt_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_wlocale_win32.c__Locale_codecvt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }

@MAX_CP_LEN = common dso_local global i32 0, align 4
@_STLP_LOC_NO_MEMORY = common dso_local global i32 0, align 4
@_STLP_LOC_UNKNOWN_NAME = common dso_local global i32 0, align 4
@CP_UTF7 = common dso_local global i64 0, align 8
@CP_UTF8 = common dso_local global i64 0, align 8
@MB_PRECOMPOSED = common dso_local global i32 0, align 4
@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@WC_SEPCHARS = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @_Locale_codecvt_create(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @MAX_CP_LEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = call i64 @malloc(i32 32)
  %21 = inttoptr i64 %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %13, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %137

28:                                               ; preds = %3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %30 = call i32 @memset(%struct.TYPE_9__* %29, i32 0, i32 32)
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @__GetLCIDFromName(i8* %31, i32* %34, i8* %19, i32* %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = call i32 @free(%struct.TYPE_9__* %39)
  %41 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %137

43:                                               ; preds = %28
  %44 = call i64 @atoi(i8* %19)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @GetCPInfo(i64 %49, %struct.TYPE_10__* %11)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %54 = call i32 @free(%struct.TYPE_9__* %53)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %137

55:                                               ; preds = %43
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CP_UTF7, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CP_UTF8, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i32, i32* @MB_PRECOMPOSED, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %72 = load i32, i32* @WC_SEPCHARS, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %67, %61, %55
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %135

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %131, %84
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %93, %88
  %100 = phi i1 [ false, %88 ], [ %98, %93 ]
  br i1 %100, label %101, label %134

101:                                              ; preds = %99
  %102 = load i8*, i8** %10, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %127, %101
  %106 = load i32, i32* %12, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp sle i32 %106, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @CHAR_BIT, align 4
  %115 = srem i32 %113, %114
  %116 = shl i32 1, %115
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @CHAR_BIT, align 4
  %122 = sdiv i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %116
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %112
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %105

130:                                              ; preds = %105
  br label %131

131:                                              ; preds = %130
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  store i8* %133, i8** %10, align 8
  br label %88

134:                                              ; preds = %99
  br label %135

135:                                              ; preds = %134, %76
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %136, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %137

137:                                              ; preds = %135, %52, %38, %24
  %138 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @__GetLCIDFromName(i8*, i32*, i8*, i32*) #2

declare dso_local i32 @free(%struct.TYPE_9__*) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i32 @GetCPInfo(i64, %struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
