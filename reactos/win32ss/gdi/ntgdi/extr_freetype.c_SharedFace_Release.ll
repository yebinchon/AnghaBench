; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_freetype.c_SharedFace_Release.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_freetype.c_SharedFace_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"Releasing SharedFace for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@TAG_FONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @SharedFace_Release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SharedFace_Release(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = call i32 (...) @IntLockFreeType()
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %15
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i8* [ %36, %31 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %37 ]
  %40 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = call i32 @RemoveCacheEntries(%struct.TYPE_7__* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 @FT_Done_Face(%struct.TYPE_7__* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @SharedMem_Release(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = call i32 @SharedFaceCache_Release(i32* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = call i32 @SharedFaceCache_Release(i32* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = load i32, i32* @TAG_FONT, align 4
  %61 = call i32 @ExFreePoolWithTag(%struct.TYPE_6__* %59, i32 %60)
  br label %62

62:                                               ; preds = %38, %15
  %63 = call i32 (...) @IntUnLockFreeType()
  br label %64

64:                                               ; preds = %62, %14
  ret void
}

declare dso_local i32 @IntLockFreeType(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DPRINT(i8*, i8*) #1

declare dso_local i32 @RemoveCacheEntries(%struct.TYPE_7__*) #1

declare dso_local i32 @FT_Done_Face(%struct.TYPE_7__*) #1

declare dso_local i32 @SharedMem_Release(i32) #1

declare dso_local i32 @SharedFaceCache_Release(i32*) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @IntUnLockFreeType(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
