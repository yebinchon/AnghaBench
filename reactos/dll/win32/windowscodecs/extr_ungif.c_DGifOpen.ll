; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_ungif.c_DGifOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_ungif.c_DGifOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i8* }

@GIF_STAMP_LEN = common dso_local global i32 0, align 4
@GIF_STAMP = common dso_local global i32 0, align 4
@GIF_VERSION_POS = common dso_local global i32 0, align 4
@GIF_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @DGifOpen(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @GIF_STAMP_LEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = call %struct.TYPE_9__* @ungif_alloc(i32 24)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = call i32 @memset(%struct.TYPE_9__* %21, i8 signext 0, i32 24)
  %23 = call %struct.TYPE_9__* @ungif_alloc(i32 24)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = call i32 @ungif_free(%struct.TYPE_9__* %27)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %75

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = bitcast %struct.TYPE_9__* %30 to i8*
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = load i32, i32* @GIF_STAMP_LEN, align 4
  %42 = call i32 @READ(%struct.TYPE_9__* %40, i8* %15, i32 %41)
  %43 = load i32, i32* @GIF_STAMP_LEN, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = call i32 @ungif_free(%struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = call i32 @ungif_free(%struct.TYPE_9__* %48)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %75

50:                                               ; preds = %29
  %51 = load i32, i32* @GIF_STAMP_LEN, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %15, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* @GIF_STAMP, align 4
  %55 = load i32, i32* @GIF_VERSION_POS, align 4
  %56 = call i64 @memcmp(i32 %54, i8* %15, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = call i32 @ungif_free(%struct.TYPE_9__* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = call i32 @ungif_free(%struct.TYPE_9__* %61)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %75

63:                                               ; preds = %50
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = call i64 @DGifGetScreenDesc(%struct.TYPE_9__* %64)
  %66 = load i64, i64* @GIF_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = call i32 @ungif_free(%struct.TYPE_9__* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = call i32 @ungif_free(%struct.TYPE_9__* %71)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %68, %58, %45, %26, %19
  %76 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @ungif_alloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_9__*, i8 signext, i32) #2

declare dso_local i32 @ungif_free(%struct.TYPE_9__*) #2

declare dso_local i32 @READ(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i64 @DGifGetScreenDesc(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
