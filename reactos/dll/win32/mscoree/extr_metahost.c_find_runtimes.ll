; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_metahost.c_find_runtimes.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_metahost.c_find_runtimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }

@find_runtimes.libmono = internal constant [11 x i8] c"\\lib\\mono\\\00", align 1
@find_runtimes.mscorlib = internal constant [14 x i8] c"\\mscorlib.dll\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@runtimes_initialized = common dso_local global i32 0, align 4
@runtime_list_cs = common dso_local global i32 0, align 4
@NUM_ABI_VERSIONS = common dso_local global i32 0, align 4
@NUM_RUNTIMES = common dso_local global i32 0, align 4
@runtimes = common dso_local global %struct.TYPE_2__* null, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_runtimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_runtimes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @runtimes_initialized, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  store i32 1, i32* %7, align 4
  br label %113

19:                                               ; preds = %0
  %20 = call i32 @EnterCriticalSection(i32* @runtime_list_cs)
  %21 = load i32, i32* @runtimes_initialized, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %111

24:                                               ; preds = %19
  %25 = load i32, i32* @NUM_ABI_VERSIONS, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %89, %24
  %27 = load i32, i32* %1, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @get_mono_path(i8* %11, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %89

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %85, %34
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @NUM_RUNTIMES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @runtimes, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %39
  %48 = call i32 @strcpyW(i8* %14, i8* %11)
  %49 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @find_runtimes.libmono, i64 0, i64 0))
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @runtimes, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcatW(i8* %14, i8* %55)
  %57 = call i32 @strcatW(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @find_runtimes.mscorlib, i64 0, i64 0))
  %58 = call i64 @GetFileAttributesW(i8* %14)
  %59 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %47
  %62 = load i32, i32* %1, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @runtimes, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @runtimes, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcpyW(i8* %73, i8* %11)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @runtimes, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcpyW(i8* %80, i8* %14)
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %61, %47
  br label %84

84:                                               ; preds = %83, %39
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %35

88:                                               ; preds = %35
  br label %89

89:                                               ; preds = %88, %33
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %1, align 4
  br label %26

92:                                               ; preds = %26
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %92
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %106, %95
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @NUM_RUNTIMES, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @runtimes, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 -1, i32* %105, align 8
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %96

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %92
  store i32 1, i32* @runtimes_initialized, align 4
  br label %111

111:                                              ; preds = %110, %23
  %112 = call i32 @LeaveCriticalSection(i32* @runtime_list_cs)
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %18
  %114 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %7, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EnterCriticalSection(i32*) #2

declare dso_local i32 @get_mono_path(i8*, i32) #2

declare dso_local i32 @strcpyW(i8*, i8*) #2

declare dso_local i32 @strcatW(i8*, i8*) #2

declare dso_local i64 @GetFileAttributesW(i8*) #2

declare dso_local i32 @LeaveCriticalSection(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
