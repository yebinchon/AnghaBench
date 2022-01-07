; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_register_dlls_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_register_dlls_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.register_dll_info = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*)* @register_dlls_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @register_dlls_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.register_dll_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.register_dll_info*
  store %struct.register_dll_info* %20, %struct.register_dll_info** %7, align 8
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @SetupFindFirstLineW(i32 %22, i32 %23, i32* null, i32* %8)
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %110, %3
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %112

28:                                               ; preds = %25
  %29 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %14, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %33 = call i8* @PARSER_get_dest_dir(i32* %8)
  store i8* %33, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 4, i32* %18, align 4
  br label %106

36:                                               ; preds = %28
  %37 = udiv i64 %30, 1
  %38 = trunc i64 %37 to i32
  %39 = call i64 @SetupGetStringFieldW(i32* %8, i32 3, i8* %32, i32 %38, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %98

42:                                               ; preds = %36
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @strlenW(i8* %45)
  %47 = call i32 @strlenW(i8* %32)
  %48 = add nsw i32 %46, %47
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = call i8* @HeapReAlloc(i32 %43, i32 0, i8* %44, i32 %52)
  store i8* %53, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  br label %98

56:                                               ; preds = %42
  %57 = load i8*, i8** %13, align 8
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @strlenW(i8* %58)
  %60 = load i8*, i8** %13, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %56
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 92
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %56
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %13, align 8
  store i8 92, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @strcpyW(i8* %76, i8* %32)
  %78 = call i32 @SetupGetIntField(i32* %8, i32 4, i32* %16)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  br label %81

81:                                               ; preds = %80, %75
  %82 = call i32 @SetupGetIntField(i32* %8, i32 5, i32* %17)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 60, i32* %17, align 4
  br label %85

85:                                               ; preds = %84, %81
  store i8* null, i8** %12, align 8
  %86 = udiv i64 %30, 1
  %87 = trunc i64 %86 to i32
  %88 = call i64 @SetupGetStringFieldW(i32* %8, i32 6, i8* %32, i32 %87, i32* null)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i8* %32, i8** %12, align 8
  br label %91

91:                                               ; preds = %90, %85
  %92 = load %struct.register_dll_info*, %struct.register_dll_info** %7, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = call i64 @do_register_dll(%struct.register_dll_info* %92, i8* %93, i32 %94, i32 %95, i8* %96)
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %91, %55, %41
  %99 = call i32 (...) @GetProcessHeap()
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @HeapFree(i32 %99, i32 0, i8* %100)
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  store i32 2, i32* %18, align 4
  br label %106

105:                                              ; preds = %98
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %105, %104, %35
  %107 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %18, align 4
  switch i32 %108, label %114 [
    i32 0, label %109
    i32 4, label %110
    i32 2, label %112
  ]

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %106
  %111 = call i64 @SetupFindNextLine(i32* %8, i32* %8)
  store i64 %111, i64* %10, align 8
  br label %25

112:                                              ; preds = %106, %25
  %113 = load i64, i64* %9, align 8
  ret i64 %113

114:                                              ; preds = %106
  unreachable
}

declare dso_local i64 @SetupFindFirstLineW(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @PARSER_get_dest_dir(i32*) #1

declare dso_local i64 @SetupGetStringFieldW(i32*, i32, i8*, i32, i32*) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @SetupGetIntField(i32*, i32, i32*) #1

declare dso_local i64 @do_register_dll(%struct.register_dll_info*, i8*, i32, i32, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
