; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_OnNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_OnNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"%p %x %p msg=%x\0A\00", align 1
@IDC_BROWSE_FOR_FOLDER_TREEVIEW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"unhandled (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @BrsFolder_OnNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BrsFolder_OnNotify(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %12, i64 %13, i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IDC_BROWSE_FOR_FOLDER_TREEVIEW, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %48 [
    i32 135, label %31
    i32 134, label %31
    i32 131, label %35
    i32 130, label %35
    i32 129, label %39
    i32 128, label %39
    i32 133, label %43
    i32 132, label %43
  ]

31:                                               ; preds = %26, %26
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = call i32 @BrsFolder_Treeview_Delete(i32* %32, %struct.TYPE_7__* %33)
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %26, %26
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = call i32 @BrsFolder_Treeview_Expand(i32* %36, %struct.TYPE_7__* %37)
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %26, %26
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = call i32 @BrsFolder_Treeview_Changed(i32* %40, %struct.TYPE_7__* %41)
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %26, %26
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = ptrtoint %struct.TYPE_7__* %45 to i32
  %47 = call i32 @BrsFolder_Treeview_Rename(i32* %44, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %55

48:                                               ; preds = %26
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %43, %39, %35, %31, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i64, i32) #1

declare dso_local i32 @BrsFolder_Treeview_Delete(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @BrsFolder_Treeview_Expand(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @BrsFolder_Treeview_Changed(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @BrsFolder_Treeview_Rename(i32*, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
