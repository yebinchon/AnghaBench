; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_GetNormalAndSelectedIcons.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_GetNormalAndSelectedIcons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@SHGFI_PIDL = common dso_local global i32 0, align 4
@SHGFI_SYSICONINDEX = common dso_local global i32 0, align 4
@SHGFI_SMALLICON = common dso_local global i32 0, align 4
@SHGFI_OPENICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @GetNormalAndSelectedIcons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetNormalAndSelectedIcons(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %7, %struct.TYPE_4__* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i32* (...) @_ILCreateDesktop()
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %3, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @SHGFI_PIDL, align 4
  %17 = load i32, i32* @SHGFI_SYSICONINDEX, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SHGFI_SMALLICON, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @GetIcon(i32* %21, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @SHGFI_PIDL, align 4
  %27 = load i32, i32* @SHGFI_SYSICONINDEX, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SHGFI_SMALLICON, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SHGFI_OPENICON, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @GetIcon(i32* %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %15
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @ILFree(i32* %41)
  br label %43

43:                                               ; preds = %40, %15
  ret void
}

declare dso_local i32 @TRACE(i8*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32* @_ILCreateDesktop(...) #1

declare dso_local i8* @GetIcon(i32*, i32) #1

declare dso_local i32 @ILFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
