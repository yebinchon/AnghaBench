; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_InsertString.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_InsertString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@LISTBOX_InsertString.empty_stringW = internal constant [1 x i32] zeroinitializer, align 4
@LBN_ERRSPACE = common dso_local global i32 0, align 4
@LB_ERRSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"[%p]: added item %d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*)* @LISTBOX_InsertString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_InsertString(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i64 @HAS_STRINGS(%struct.TYPE_6__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @LISTBOX_InsertString.empty_stringW, i64 0, i64 0), i32** %7, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @strlenW(i32* %20)
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32* @HeapAlloc(i32 %19, i32 0, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load i32, i32* @LBN_ERRSPACE, align 4
  %31 = call i32 @SEND_NOTIFICATION(%struct.TYPE_6__* %29, i32 %30)
  %32 = load i32, i32* @LB_ERRSPACE, align 4
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %18
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @strcpyW(i32* %34, i32* %35)
  br label %40

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  %39 = ptrtoint i32* %38 to i64
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @LISTBOX_InsertItem(%struct.TYPE_6__* %48, i32 %49, i32* %50, i64 %51)
  store i32 %52, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @HeapFree(i32 %55, i32 0, i32* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %75

59:                                               ; preds = %47
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = call i64 @HAS_STRINGS(%struct.TYPE_6__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32*, i32** %8, align 8
  %69 = call i8* @debugstr_w(i32* %68)
  br label %71

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i8* [ %69, %67 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %70 ]
  %73 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i8* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %54, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @HAS_STRINGS(%struct.TYPE_6__*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @SEND_NOTIFICATION(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @strcpyW(i32*, i32*) #1

declare dso_local i32 @LISTBOX_InsertItem(%struct.TYPE_6__*, i32, i32*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i8*) #1

declare dso_local i8* @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
