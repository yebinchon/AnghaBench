; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_wnetInit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_wnet.c_wnetInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64* }

@wnetInit.providerOrderKey = internal constant [55 x i8] c"System\\CurrentControlSet\\Control\\NetworkProvider\\Order\00", align 16
@wnetInit.providerOrder = internal constant [14 x i8] c"ProviderOrder\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"provider order is %s\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@providerTable = common dso_local global %struct.TYPE_2__* null, align 8
@IDS_ENTIRENETWORK = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wnetInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %13 = load i32, i32* @KEY_READ, align 4
  %14 = call i64 @RegOpenKeyExW(i32 %12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @wnetInit.providerOrderKey, i64 0, i64 0), i32 0, i32 %13, i32* %3)
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %133

17:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @RegQueryValueExW(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wnetInit.providerOrder, i64 0, i64 0), i32* null, i64* null, i32* null, i64* %4)
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %130

22:                                               ; preds = %17
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i64, i64* %4, align 8
  %25 = call i8* @HeapAlloc(i32 %23, i32 0, i64 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %129

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = call i64 @RegQueryValueExW(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @wnetInit.providerOrder, i64 0, i64 0), i32* null, i64* %6, i32* %31, i64* %4)
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %125

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @REG_SZ, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %125

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @debugstr_w(i8* %40)
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** %7, align 8
  store i64 1, i64* %8, align 8
  br label %44

44:                                               ; preds = %57, %39
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = call i8* @wcschr(i8* %48, i8 signext 44)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %52, %47
  br label %44

58:                                               ; preds = %44
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %61 = load i64, i64* %8, align 8
  %62 = sub nsw i64 %61, 1
  %63 = mul i64 %62, 4
  %64 = add i64 4, %63
  %65 = call i8* @HeapAlloc(i32 %59, i32 %60, i64 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** @providerTable, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @providerTable, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %124

69:                                               ; preds = %58
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @IDS_ENTIRENETWORK, align 4
  %72 = ptrtoint i32* %11 to i32
  %73 = call i32 @LoadStringW(i32 %70, i32 %71, i32 %72, i32 0)
  store i32 %73, i32* %10, align 4
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 1
  %79 = call i8* @HeapAlloc(i32 %74, i32 0, i64 %78)
  %80 = bitcast i8* %79 to i64*
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @providerTable, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i64* %80, i64** %82, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @providerTable, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %69
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @providerTable, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memcpy(i64* %90, i32 %91, i32 %95)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @providerTable, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %87, %69
  %104 = load i64, i64* %8, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @providerTable, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i8*, i8** %5, align 8
  store i8* %107, i8** %7, align 8
  br label %108

108:                                              ; preds = %120, %103
  %109 = load i8*, i8** %7, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i8*, i8** %7, align 8
  store i8* %112, i8** %9, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i8* @wcschr(i8* %113, i8 signext 44)
  store i8* %114, i8** %7, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  store i8 0, i8* %118, align 1
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @_tryLoadProvider(i8* %121)
  br label %108

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123, %58
  br label %125

125:                                              ; preds = %124, %35, %28
  %126 = call i32 (...) @GetProcessHeap()
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @HeapFree(i32 %126, i32 0, i8* %127)
  br label %129

129:                                              ; preds = %125, %22
  br label %130

130:                                              ; preds = %129, %17
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @RegCloseKey(i32 %131)
  br label %133

133:                                              ; preds = %130, %1
  ret void
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i64*, i32*, i64*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i8* @debugstr_w(i8*) #1

declare dso_local i8* @wcschr(i8*, i8 signext) #1

declare dso_local i32 @LoadStringW(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @_tryLoadProvider(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
