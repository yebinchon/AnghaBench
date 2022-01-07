; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_CreateDropFiles.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_CreateDropFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@GMEM_DDESHARE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@GMEM_ZEROINIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CreateDropFiles(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  store i32 8, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %26, %3
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @COUNTOF(i32* %19)
  %24 = call i32 @GetNextFile(i32 %22, i32* %19, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = call i32 @QualifyPath(i32* %19)
  %28 = call i32 @wcslen(i32* %19)
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load i32, i32* @GMEM_DDESHARE, align 4
  %38 = load i32, i32* @GMEM_MOVEABLE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @GMEM_ZEROINIT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = call i32* @GlobalAlloc(i32 %41, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  store i32* null, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %86

47:                                               ; preds = %36
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @GlobalLock(i32* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %12, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %63 = ptrtoint %struct.TYPE_2__* %62 to i64
  %64 = add i64 %63, 4
  store i64 %64, i64* %9, align 8
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %71, %47
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @COUNTOF(i32* %19)
  %69 = call i32 @GetNextFile(i32 %67, i32* %19, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = call i32 @QualifyPath(i32* %19)
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @lstrcpy(i32 %74, i32* %19)
  %76 = call i32 @wcslen(i32* %19)
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %9, align 8
  br label %66

82:                                               ; preds = %66
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @GlobalUnlock(i32* %83)
  %85 = load i32*, i32** %8, align 8
  store i32* %85, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %86

86:                                               ; preds = %82, %46
  %87 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32*, i32** %4, align 8
  ret i32* %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetNextFile(i32, i32*, i32) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i32 @QualifyPath(i32*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i32* @GlobalAlloc(i32, i32) #2

declare dso_local i64 @GlobalLock(i32*) #2

declare dso_local i32 @lstrcpy(i32, i32*) #2

declare dso_local i32 @GlobalUnlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
