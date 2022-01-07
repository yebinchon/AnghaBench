; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_InsertEndParaFromCursor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_InsertEndParaFromCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32*, i64 }

@diRun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32, i32*, i32, i32)* @ME_InsertEndParaFromCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ME_InsertEndParaFromCursor(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32* @ME_GetInsertStyle(%struct.TYPE_8__* %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %13, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %30 = call i32 @ME_SplitRunSimple(%struct.TYPE_8__* %28, %struct.TYPE_9__* %29)
  br label %31

31:                                               ; preds = %27, %5
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32* @ME_SplitParagraph(%struct.TYPE_8__* %32, i32 %35, i32* %36, i32* %37, i32 %38, i32 %39)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @ME_ReleaseStyle(i32* %41)
  %43 = load i32*, i32** %12, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* @diRun, align 4
  %48 = call i32 @ME_FindItemFwd(i32* %46, i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %12, align 8
  ret i32* %51
}

declare dso_local i32* @ME_GetInsertStyle(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ME_SplitRunSimple(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32* @ME_SplitParagraph(%struct.TYPE_8__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @ME_ReleaseStyle(i32*) #1

declare dso_local i32 @ME_FindItemFwd(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
