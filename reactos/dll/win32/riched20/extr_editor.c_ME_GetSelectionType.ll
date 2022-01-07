; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_GetSelectionType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_GetSelectionType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@SEL_EMPTY = common dso_local global i64 0, align 8
@SEL_TEXT = common dso_local global i64 0, align 8
@SEL_MULTICHAR = common dso_local global i64 0, align 8
@SEL_OBJECT = common dso_local global i64 0, align 8
@SEL_MULTIOBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @ME_GetSelectionType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ME_GetSelectionType(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i64, i64* @SEL_EMPTY, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ME_GetSelectionOfs(i32* %12, i64* %5, i64* %6)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* @SEL_EMPTY, align 8
  store i64 %18, i64* %4, align 8
  br label %94

19:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %62, %19
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 %23, %24
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %20
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @ME_CursorFromCharOfs(i32* %28, i64 %32, %struct.TYPE_9__* %10)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %47

44:                                               ; preds = %27
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* %8, align 8
  %49 = icmp sge i64 %48, 2
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = icmp sge i64 %51, 2
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i64, i64* @SEL_TEXT, align 8
  %55 = load i64, i64* @SEL_MULTICHAR, align 8
  %56 = or i64 %54, %55
  %57 = load i64, i64* @SEL_OBJECT, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* @SEL_MULTIOBJECT, align 8
  %60 = or i64 %58, %59
  store i64 %60, i64* %2, align 8
  br label %96

61:                                               ; preds = %50, %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %20

65:                                               ; preds = %20
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i64, i64* @SEL_TEXT, align 8
  %70 = load i64, i64* %4, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp sge i64 %72, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* @SEL_MULTICHAR, align 8
  %76 = load i64, i64* %4, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i64, i64* @SEL_OBJECT, align 8
  %84 = load i64, i64* %4, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %4, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp sge i64 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, i64* @SEL_MULTIOBJECT, align 8
  %90 = load i64, i64* %4, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %17
  %95 = load i64, i64* %4, align 8
  store i64 %95, i64* %2, align 8
  br label %96

96:                                               ; preds = %94, %53
  %97 = load i64, i64* %2, align 8
  ret i64 %97
}

declare dso_local i32 @ME_GetSelectionOfs(i32*, i64*, i64*) #1

declare dso_local i32 @ME_CursorFromCharOfs(i32*, i64, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
