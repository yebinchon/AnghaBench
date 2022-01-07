; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbdisp.c_get_propput_arg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_vbdisp.c_get_propput_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64*, i32* }

@DISPID_PROPERTYPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"no value to set\0A\00", align 1
@DISP_E_PARAMNOTOPTIONAL = common dso_local global i32 0, align 4
@VT_VARIANT = common dso_local global i32 0, align 4
@VT_BYREF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VT_DISPATCH = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYPUTREF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%s can't be assigned without DISPATCH_PROPERTYPUT flag\0A\00", align 1
@DISP_E_EXCEPTION = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32*, i32*)* @get_propput_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_propput_arg(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %32, %5
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DISPID_PROPERTYPUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %12, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %14

35:                                               ; preds = %30, %14
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @DISP_E_PARAMNOTOPTIONAL, align 4
  store i32 %43, i32* %6, align 4
  br label %104

44:                                               ; preds = %35
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @V_VT(i32* %53)
  %55 = load i32, i32* @VT_VARIANT, align 4
  %56 = load i32, i32* @VT_BYREF, align 4
  %57 = or i32 %55, %56
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %44
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @V_VARIANTREF(i32* %60)
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %44
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @V_VT(i32* %67)
  %69 = load i32, i32* @VT_DISPATCH, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @DISPATCH_PROPERTYPUTREF, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @V_DISPATCH(i32* %78)
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @get_disp_value(i32* %77, i32 %79, i32* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %104

87:                                               ; preds = %76
  %88 = load i32, i32* @TRUE, align 4
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %71
  br label %102

91:                                               ; preds = %64
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @DISPATCH_PROPERTYPUT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @debugstr_variant(i32* %97)
  %99 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %100, i32* %6, align 4
  br label %104

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %90
  %103 = load i32, i32* @S_OK, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %96, %85, %41
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32* @V_VARIANTREF(i32*) #1

declare dso_local i32 @get_disp_value(i32*, i32, i32*) #1

declare dso_local i32 @V_DISPATCH(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
