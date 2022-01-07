; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_StrComp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_StrComp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"(%s %s ...)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown compare mode = %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_StrComp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_StrComp(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @debugstr_variant(i32* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = call i32 @debugstr_variant(i32* %19)
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 3
  br label %27

27:                                               ; preds = %24, %4
  %28 = phi i1 [ true, %4 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = call i32 @to_int(i32* %35, i32* %12)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %5, align 4
  br label %104

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @E_FAIL, align 4
  store i32 %51, i32* %5, align 4
  br label %104

52:                                               ; preds = %45, %42
  br label %54

53:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @to_string(i32* %55, i32* %10)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %5, align 4
  br label %104

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = call i32 @to_string(i32* %64, i32* %11)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i64 @FAILED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @SysFreeString(i32 %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %5, align 4
  br label %104

73:                                               ; preds = %62
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @strcmpiW(i32 %77, i32 %78)
  br label %84

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @strcmpW(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %79, %76 ], [ %83, %80 ]
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %94

89:                                               ; preds = %84
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  br label %94

94:                                               ; preds = %89, %88
  %95 = phi i32 [ -1, %88 ], [ %93, %89 ]
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %15, align 2
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @SysFreeString(i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @SysFreeString(i32 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load i16, i16* %15, align 2
  %103 = call i32 @return_short(i32* %101, i16 signext %102)
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %94, %69, %60, %48, %40
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @to_int(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @to_string(i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @strcmpiW(i32, i32) #1

declare dso_local i32 @strcmpW(i32, i32) #1

declare dso_local i32 @return_short(i32*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
