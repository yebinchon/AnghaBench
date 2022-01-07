; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_get_protocol_cf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_get_protocol_cf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_protocol_cf.wszProtocolsKey = internal constant [18 x i8] c"PROTOCOLS\\Handler\\", align 16
@get_protocol_cf.wszCLSID = internal constant [6 x i8] c"CLSID\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not open protocol handler key\0A\00", align 1
@MK_E_SYNTAX = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not get protocol CLSID res=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"CLSIDFromString failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32**)* @get_protocol_cf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_protocol_cf(i8* %0, i32 %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* null, i32** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 1
  %22 = add i64 18, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @heap_alloc(i32 %23)
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %16, align 8
  %26 = call i32 @memcpy(i64 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @get_protocol_cf.wszProtocolsKey, i64 0, i64 0), i32 18)
  %27 = load i64, i64* %16, align 8
  %28 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @get_protocol_cf.wszProtocolsKey, i64 0, i64 0))
  %29 = add nsw i64 %27, %28
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(i64 %29, i8* %30, i32 %35)
  %37 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %38 = load i64, i64* %16, align 8
  %39 = call i32 @RegOpenKeyW(i32 %37, i64 %38, i32** %11)
  store i32 %39, i32* %12, align 4
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @heap_free(i64 %40)
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @ERROR_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @MK_E_SYNTAX, align 4
  store i32 %47, i32* %5, align 4
  br label %101

48:                                               ; preds = %4
  store i32 64, i32* %14, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %51 = ptrtoint i8* %50 to i32
  %52 = call i32 @RegQueryValueExW(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_protocol_cf.wszCLSID, i64 0, i64 0), i32* null, i32* %13, i32 %51, i32* %14)
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @RegCloseKey(i32* %53)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @ERROR_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @REG_SZ, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %48
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @MK_E_SYNTAX, align 4
  store i32 %65, i32* %5, align 4
  br label %101

66:                                               ; preds = %58
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %68 = call i32 @CLSIDFromString(i8* %67, i32* %15)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i64 @FAILED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %5, align 4
  br label %101

76:                                               ; preds = %66
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32**, i32*** %9, align 8
  %84 = icmp ne i32** %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @S_OK, align 4
  store i32 %86, i32* %5, align 4
  br label %101

87:                                               ; preds = %82
  %88 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %89 = load i32**, i32*** %9, align 8
  %90 = bitcast i32** %89 to i8**
  %91 = call i32 @CoGetClassObject(i32* %15, i32 %88, i32* null, i32* @IID_IClassFactory, i8** %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i64 @SUCCEEDED(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @S_OK, align 4
  br label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @MK_E_SYNTAX, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %85, %72, %62, %45
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @RegOpenKeyW(i32, i64, i32**) #1

declare dso_local i32 @heap_free(i64) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @RegQueryValueExW(i32*, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @CLSIDFromString(i8*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
