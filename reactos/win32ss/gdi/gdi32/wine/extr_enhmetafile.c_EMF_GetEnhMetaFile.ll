; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_enhmetafile.c_EMF_GetEnhMetaFile.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_enhmetafile.c_EMF_GetEnhMetaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @EMF_GetEnhMetaFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EMF_GetEnhMetaFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PAGE_READONLY, align 4
  %9 = call i32 @CreateFileMappingA(i32 %7, i32* null, i32 %8, i32 0, i32 0, i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FILE_MAP_READ, align 4
  %12 = call i32* @MapViewOfFile(i32 %10, i32 %11, i32 0, i32 0, i32 0)
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @CloseHandle(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @EMF_Create_HENHMETAFILE(i32* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @UnmapViewOfFile(i32* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @CreateFileMappingA(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @MapViewOfFile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @EMF_Create_HENHMETAFILE(i32*, i32) #1

declare dso_local i32 @UnmapViewOfFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
