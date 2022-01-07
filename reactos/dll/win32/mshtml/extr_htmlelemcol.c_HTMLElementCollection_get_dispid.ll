; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelemcol.c_HTMLElementCollection_get_dispid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelemcol.c_HTMLElementCollection_get_dispid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@DISPID_ELEMCOL_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"ret %x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i64*)* @HTMLElementCollection_get_dispid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLElementCollection_get_dispid(i32* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_3__* @impl_from_DispatchEx(i32* %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %19, i32* %5, align 4
  br label %100

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %11, align 8
  br label %22

22:                                               ; preds = %40, %20
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @isdigitW(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br i1 %32, label %33, label %43

33:                                               ; preds = %31
  %34 = load i32, i32* %12, align 4
  %35 = mul nsw i32 %34, 10
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 48
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %11, align 8
  br label %22

43:                                               ; preds = %31
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @is_elem_id(i32 %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %54
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @is_elem_name(i32 %72, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65, %54
  br label %81

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %48

81:                                               ; preds = %76, %48
  br label %82

82:                                               ; preds = %81, %43
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %89, i32* %5, align 4
  br label %100

90:                                               ; preds = %82
  %91 = load i64, i64* @DISPID_ELEMCOL_0, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @S_OK, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %90, %88, %18
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_3__* @impl_from_DispatchEx(i32*) #1

declare dso_local i64 @isdigitW(i32) #1

declare dso_local i64 @is_elem_id(i32, i32*) #1

declare dso_local i64 @is_elem_name(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
