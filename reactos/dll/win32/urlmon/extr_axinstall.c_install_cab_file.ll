; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_install_cab_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_install_cab_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Using temporary directory %s\0A\00", align 1
@BINDSTATUS_INSTALLINGCOMPONENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Installing DLL, registering in temporary location\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @install_cab_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_cab_file(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %8, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %15)
  %22 = call i32 @GetTempPathW(i32 %21, i32* %15)
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %39, %1
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 100
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = call i64 (...) @GetTickCount()
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 17037
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @GetTempFileNameW(i32* %15, i32* null, i64 %36, i32* %18)
  %38 = call i64 @CreateDirectoryW(i32* %18, i32* null)
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %23

42:                                               ; preds = %29
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @E_FAIL, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %101

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32* %18, i32** %49, align 8
  %50 = call i32 @debugstr_w(i32* %18)
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = call i32 @extract_cab_file(%struct.TYPE_6__* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @SUCCEEDED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @BINDSTATUS_INSTALLINGCOMPONENTS, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @IBindStatusCallback_OnProgress(i64 %65, i32 0, i32 0, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %62, %57
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %88 [
    i32 128, label %75
    i32 129, label %78
  ]

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = call i32 @install_inf_file(%struct.TYPE_6__* %76)
  store i32 %77, i32* %10, align 4
  br label %90

78:                                               ; preds = %71
  %79 = call i32 @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = call i32 @setup_dll(%struct.TYPE_6__* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @SUCCEEDED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i64, i64* @TRUE, align 8
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %85, %78
  br label %90

88:                                               ; preds = %71
  %89 = call i32 @assert(i32 0)
  br label %90

90:                                               ; preds = %88, %87, %75
  br label %91

91:                                               ; preds = %90, %47
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @RemoveDirectoryW(i32* %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %45
  %102 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @GetTempFileNameW(i32*, i32*, i64, i32*) #2

declare dso_local i64 @GetTickCount(...) #2

declare dso_local i64 @CreateDirectoryW(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @extract_cab_file(%struct.TYPE_6__*) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @IBindStatusCallback_OnProgress(i64, i32, i32, i32, i32) #2

declare dso_local i32 @install_inf_file(%struct.TYPE_6__*) #2

declare dso_local i32 @FIXME(i8*) #2

declare dso_local i32 @setup_dll(%struct.TYPE_6__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @RemoveDirectoryW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
