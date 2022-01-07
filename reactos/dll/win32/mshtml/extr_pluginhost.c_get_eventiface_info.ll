; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_get_eventiface_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_pluginhost.c_get_eventiface_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@TKIND_COCLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"not coclass\0A\00", align 1
@IMPLTYPEFLAG_FSOURCE = common dso_local global i32 0, align 4
@IMPLTYPEFLAG_FDEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Handle non-default source iface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @get_eventiface_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_eventiface_info(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @ITypeInfo_GetTypeAttr(i32* %13, %struct.TYPE_4__** %10)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TKIND_COCLASS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = call i32 @WARN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %27, %struct.TYPE_4__* %28)
  store i32* null, i32** %3, align 8
  br label %84

30:                                               ; preds = %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %34, %struct.TYPE_4__* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %79, %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ITypeInfo_GetImplTypeFlags(i32* %42, i32 %43, i32* %8)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %79

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IMPLTYPEFLAG_FSOURCE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IMPLTYPEFLAG_FDEFAULT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %79

61:                                               ; preds = %54
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ITypeInfo_GetRefTypeOfImplType(i32* %62, i32 %63, i32* %11)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %79

69:                                               ; preds = %61
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ITypeInfo_GetRefTypeInfo(i32* %70, i32 %71, i32** %9)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @FAILED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32* null, i32** %9, align 8
  br label %77

77:                                               ; preds = %76, %69
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78, %68, %59, %48
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %37

82:                                               ; preds = %37
  %83 = load i32*, i32** %9, align 8
  store i32* %83, i32** %3, align 8
  br label %84

84:                                               ; preds = %82, %25, %18
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_4__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ITypeInfo_GetImplTypeFlags(i32*, i32, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @ITypeInfo_GetRefTypeOfImplType(i32*, i32, i32*) #1

declare dso_local i32 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
