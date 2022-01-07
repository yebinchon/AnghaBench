; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_dup_metafilepict.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_dup_metafilepict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@GMEM_DDESHARE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @dup_metafilepict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dup_metafilepict(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load i32**, i32*** %5, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @GMEM_DDESHARE, align 4
  %12 = load i32, i32* @GMEM_MOVEABLE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @dup_global_mem(i32* %10, i32 %13, i32** %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_3__* @GlobalLock(i32* %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @E_FAIL, align 4
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @CopyMetaFileW(i64 %30, i32* null)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @GlobalUnlock(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32**, i32*** %5, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32, i32* @S_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %27
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @GlobalUnlock(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @GlobalFree(i32* %47)
  %49 = load i32, i32* @E_FAIL, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %38, %25, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dup_global_mem(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_3__* @GlobalLock(i32*) #1

declare dso_local i64 @CopyMetaFileW(i64, i32*) #1

declare dso_local i32 @GlobalUnlock(i32*) #1

declare dso_local i32 @GlobalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
