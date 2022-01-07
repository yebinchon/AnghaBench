; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_exec_query.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_exec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_query.captionW = internal constant [8 x i8] c"Caption\00", align 1
@exec_query.descriptionW = internal constant [12 x i8] c"Description\00", align 1
@wqlW = common dso_local global i8* null, align 8
@WBEM_FLAG_RETURN_IMMEDIATELY = common dso_local global i32 0, align 4
@WBEM_FLAG_FORWARD_ONLY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@WBEM_S_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"caption: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"description: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32**)* @exec_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exec_query(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32** %2, i32*** %6, align 8
  %14 = load i8*, i8** @wqlW, align 8
  %15 = call i32 @SysAllocString(i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @SysAllocString(i8* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @WBEM_FLAG_RETURN_IMMEDIATELY, align 4
  %19 = load i32, i32* @WBEM_FLAG_FORWARD_ONLY, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32**, i32*** %6, align 8
  %26 = call i64 @IWbemServices_ExecQuery(i32* %21, i32 %22, i32 %23, i32 %24, i32* null, i32** %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @wine_dbgstr_w(i8* %31)
  %33 = call i32 @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %61, %30
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @IEnumWbemClassObject_Next(i32* %36, i32 10000, i32 1, i32** %8, i32* %12)
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %64

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @IWbemClassObject_Get(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @exec_query.captionW, i64 0, i64 0), i32 0, i32* %13, i32* null, i32* null)
  %44 = load i64, i64* @WBEM_S_NO_ERROR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = call i8* @V_BSTR(i32* %13)
  %48 = call i32 @wine_dbgstr_w(i8* %47)
  %49 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = call i32 @VariantClear(i32* %13)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @IWbemClassObject_Get(i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @exec_query.descriptionW, i64 0, i64 0), i32 0, i32* %13, i32* null, i32* null)
  %54 = load i64, i64* @WBEM_S_NO_ERROR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = call i8* @V_BSTR(i32* %13)
  %58 = call i32 @wine_dbgstr_w(i8* %57)
  %59 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = call i32 @VariantClear(i32* %13)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @IWbemClassObject_Release(i32* %62)
  br label %34

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64, %3
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @SysFreeString(i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @SysFreeString(i32 %68)
  %70 = load i64, i64* %7, align 8
  ret i64 %70
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i64 @IWbemServices_ExecQuery(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i64 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i8* @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
