; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_StreamToFile.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_StreamToFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, i32*, i32, i32*)* }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_TEMPORARY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*)* @StreamToFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @StreamToFile(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @BLOCK_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @FILE_READ_DATA, align 4
  %17 = load i32, i32* @FILE_WRITE_DATA, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FILE_SHARE_READ, align 4
  %20 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CREATE_ALWAYS, align 4
  %23 = load i32, i32* @FILE_ATTRIBUTE_TEMPORARY, align 4
  %24 = call i64 @CreateFile(i32* %15, i32 %18, i32 %21, i32* null, i32 %22, i32 %23, i32* null)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %61, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_6__*, i32*, i32, i32*)*, i64 (%struct.TYPE_6__*, i32*, i32, i32*)** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = load i32, i32* @BLOCK_SIZE, align 4
  %37 = call i64 %34(%struct.TYPE_6__* %35, i32* %14, i32 %36, i32* %7)
  store i64 %37, i64* %9, align 8
  store i32 0, i32* %8, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @SUCCEEDED(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @WriteFile(i64 %45, i32* %14, i32 %46, i32* %8, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = call i32 (...) @GetLastError()
  %51 = call i64 @HRESULT_FROM_WIN32(i32 %50)
  store i64 %51, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %41, %29
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* @S_OK, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ]
  br i1 %62, label %29, label %63

63:                                               ; preds = %61
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @CloseHandle(i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @FAILED(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @DeleteFile(i32* %70)
  br label %74

72:                                               ; preds = %63
  %73 = load i64, i64* @S_OK, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %72, %69
  br label %78

75:                                               ; preds = %2
  %76 = call i32 (...) @GetLastError()
  %77 = call i64 @HRESULT_FROM_WIN32(i32 %76)
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i64, i64* %9, align 8
  %80 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i64 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @SUCCEEDED(i64) #2

declare dso_local i32 @WriteFile(i64, i32*, i32, i32*, i32*) #2

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i32 @DeleteFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
