; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_MsgBox.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_MsgBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MB_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported arg_cnt %d\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32*)* @Global_MsgBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_MsgBox(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = load i32, i32* @MB_OK, align 4
  store i32 %14, i32* %12, align 4
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %8, align 4
  %17 = icmp ule i32 1, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ule i32 %19, 5
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @to_string(i32* %25, i32** %10)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  br label %82

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = call i32 @to_int(i32* %37, i32* %12)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @SUCCEEDED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = icmp ugt i32 %44, 2
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = call i32 @to_string(i32* %48, i32** %11)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %46, %43, %39
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @SUCCEEDED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %55, 3
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %57, %54, %50
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @SUCCEEDED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @show_msgbox(i32 %70, i32* %71, i32 %72, i32* %73, i32* %74)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %65, %61
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @SysFreeString(i32* %77)
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @SysFreeString(i32* %79)
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %30
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @to_string(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_int(i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @show_msgbox(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
