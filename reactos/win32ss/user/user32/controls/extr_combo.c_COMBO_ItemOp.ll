; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_ItemOp.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_ItemOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i8*, i8* }
%struct.TYPE_11__ = type { i32, i8*, i8* }
%struct.TYPE_7__ = type { i32, i8* }

@GWLP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"[%p]: ownerdraw op %04x\0A\00", align 1
@ODT_COMBOBOX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i64)* @COMBO_ItemOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_ItemOp(%struct.TYPE_8__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @GWLP_ID, align 4
  %18 = call i32 @GetWindowLongPtrW(i8* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %70 [
    i32 130, label %25
    i32 129, label %37
    i32 131, label %49
    i32 128, label %61
  ]

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %9, align 8
  %28 = load i8*, i8** @ODT_COMBOBOX, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %70

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %10, align 8
  %40 = load i8*, i8** @ODT_COMBOBOX, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  br label %70

49:                                               ; preds = %3
  %50 = load i64, i64* %6, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %11, align 8
  %52 = load i8*, i8** @ODT_COMBOBOX, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %70

61:                                               ; preds = %3
  %62 = load i64, i64* %6, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %12, align 8
  %64 = load i8*, i8** @ODT_COMBOBOX, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %3, %61, %49, %37, %25
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @SendMessageW(i32 %73, i32 %74, i32 %75, i64 %76)
  ret i32 %77
}

declare dso_local i32 @GetWindowLongPtrW(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i8*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
