; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_process_hook_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_process_hook_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@process_hook_section.runW = internal constant [4 x i8] c"run\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Run %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unsupported hook %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @process_hook_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_hook_section(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2048 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = mul nsw i32 2, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i8* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @GetPrivateProfileStringW(i8* %20, i8* null, i32* null, i8* %21, i32 %23, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @S_OK, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %95

32:                                               ; preds = %2
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %87, %32
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strcmpiW(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @process_hook_section.runW, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %81, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @ARRAY_SIZE(i8* %19)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @GetPrivateProfileStringW(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @process_hook_section.runW, i64 0, i64 0), i32* null, i8* %19, i32 %44, i32 %47)
  store i64 %48, i64* %10, align 8
  %49 = call i32 @debugstr_w(i8* %19)
  %50 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = call i32 @expand_command(%struct.TYPE_4__* %51, i8* %19, i8* null, i64* %14)
  %53 = load i64, i64* %14, align 8
  %54 = mul i64 %53, 1
  %55 = call i8* @heap_alloc(i64 %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %42
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @heap_free(i8* %59)
  br label %61

61:                                               ; preds = %58, %42
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @expand_command(%struct.TYPE_4__* %62, i8* %19, i8* %63, i64* %14)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @RunSetupCommandW(i32 %67, i8* %68, i32* null, i32 %71, i32* null, i32* null, i32 0, i32* null)
  store i32 %72, i32* %11, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @heap_free(i8* %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @FAILED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %95

80:                                               ; preds = %61
  br label %86

81:                                               ; preds = %38
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @debugstr_w(i8* %82)
  %84 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %95

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @strlenW(i8* %88)
  %90 = add nsw i64 %89, 1
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %9, align 8
  br label %34

93:                                               ; preds = %34
  %94 = load i32, i32* @S_OK, align 4
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %93, %81, %78, %30
  %96 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetPrivateProfileStringW(i8*, i8*, i32*, i8*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @strcmpiW(i8*, i8*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @expand_command(%struct.TYPE_4__*, i8*, i8*, i64*) #2

declare dso_local i8* @heap_alloc(i64) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i32 @RunSetupCommandW(i32, i8*, i32*, i32, i32*, i32*, i32, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @FIXME(i8*, i32) #2

declare dso_local i64 @strlenW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
