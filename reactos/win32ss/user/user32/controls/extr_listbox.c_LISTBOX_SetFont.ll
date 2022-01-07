; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_SetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_SetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@DCX_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"unable to get DC.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @LISTBOX_SetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_SetFont(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i64 %10, i64* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DCX_CACHE, align 4
  %17 = call i32 @GetDCEx(i32 %15, i32 0, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 16, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @SelectObject(i32 %25, i64 %26)
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @GetTextExtentPointA(i32 %29, i8* %30, i32 52, %struct.TYPE_7__* %9)
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @SelectObject(i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ReleaseDC(i32 %41, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 26
  %47 = add nsw i32 %46, 1
  %48 = sdiv i32 %47, 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = call i32 @IS_OWNERDRAW(%struct.TYPE_8__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %38
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @LISTBOX_SetItemHeight(%struct.TYPE_8__* %55, i32 0, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %38
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @GetDCEx(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @GetTextExtentPointA(i32, i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @IS_OWNERDRAW(%struct.TYPE_8__*) #1

declare dso_local i32 @LISTBOX_SetItemHeight(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
