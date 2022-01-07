; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_media.c_source_matches_volume.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_media.c_source_matches_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to get volume information for %s (%u)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @source_matches_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @source_matches_volume(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @strcpyW(i32* %21, i32 %22)
  %24 = call i32 @PathStripToRootW(i32* %21)
  %25 = call i32 @PathAddBackslashW(i32* %21)
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @GetVolumeInformationW(i32* %21, i32* %17, i32 %27, i32* null, i32* null, i32* null, i32* null, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = call i32 @debugstr_w(i32* %21)
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

35:                                               ; preds = %2
  %36 = call i32 @strlenW(i32* %17)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @strlenW(i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %17, i64 %48
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32* %53, i32** %9, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @strcmpiW(i32* %56, i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %46, %44, %30
  %63 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpyW(i32*, i32) #2

declare dso_local i32 @PathStripToRootW(i32*) #2

declare dso_local i32 @PathAddBackslashW(i32*) #2

declare dso_local i32 @GetVolumeInformationW(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @WARN(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @strlenW(i32*) #2

declare dso_local i32 @strcmpiW(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
