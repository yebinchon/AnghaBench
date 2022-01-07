; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHGetObjectCompatFlags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHGetObjectCompatFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_value = type { [30 x i8], i64 }
%struct.compat_value.0 = type opaque

@__const.test_SHGetObjectCompatFlags.values = private unnamed_addr constant [13 x %struct.compat_value] [%struct.compat_value { [30 x i8] c"OTNEEDSSFCACHE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 1 }, %struct.compat_value { [30 x i8] c"NO_WEBVIEW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 2 }, %struct.compat_value { [30 x i8] c"UNBINDABLE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 4 }, %struct.compat_value { [30 x i8] c"PINDLL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 8 }, %struct.compat_value { [30 x i8] c"NEEDSFILESYSANCESTOR\00\00\00\00\00\00\00\00\00\00", i64 16 }, %struct.compat_value { [30 x i8] c"NOTAFILESYSTEM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 32 }, %struct.compat_value { [30 x i8] c"CTXMENU_NOVERBS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 64 }, %struct.compat_value { [30 x i8] c"CTXMENU_LIMITEDQI\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 128 }, %struct.compat_value { [30 x i8] c"COCREATESHELLFOLDERONLY\00\00\00\00\00\00\00", i64 256 }, %struct.compat_value { [30 x i8] c"NEEDSSTORAGEANCESTOR\00\00\00\00\00\00\00\00\00\00", i64 512 }, %struct.compat_value { [30 x i8] c"NOLEGACYWEBVIEW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 1024 }, %struct.compat_value { [30 x i8] c"CTXMENU_XPQCMFLAGS\00\00\00\00\00\00\00\00\00\00\00\00", i64 4096 }, %struct.compat_value { [30 x i8] c"NOIPROPERTYSTORE\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 8192 }], align 16
@test_SHGetObjectCompatFlags.compat_path = internal constant [69 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\ShellCompatibility\\Objects\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"No compatibility class data found\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"got 0x%08x, expected 0x%08x. Key %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHGetObjectCompatFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHGetObjectCompatFlags() #0 {
  %1 = alloca [13 x %struct.compat_value], align 16
  %2 = alloca [39 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [30 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast [13 x %struct.compat_value]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([13 x %struct.compat_value], [13 x %struct.compat_value]* @__const.test_SHGetObjectCompatFlags.values, i32 0, i32 0, i32 0, i32 0), i64 520, i1 false)
  %15 = call i64 @pSHGetObjectCompatFlags(i32* null, i32* null)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %22 = call i64 @RegOpenKeyA(i32 %21, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @test_SHGetObjectCompatFlags.compat_path, i64 0, i64 0), i32* %3)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  %27 = call i32 @skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %103

28:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %97, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds [39 x i8], [39 x i8]* %2, i64 0, i64 0
  %33 = call i64 @RegEnumKeyA(i32 %30, i32 %31, i8* %32, i32 39)
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = getelementptr inbounds [39 x i8], [39 x i8]* %2, i64 0, i64 0
  %39 = call i64 @RegOpenKeyA(i32 %37, i8* %38, i32* %6)
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %96

42:                                               ; preds = %36
  store i64 0, i64* %8, align 8
  store i64 30, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %47 = call i64 @RegEnumValueA(i32 %44, i32 %45, i8* %46, i64* %10, i32* null, i32* null, i32* null, i32* null)
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %75, %50
  %52 = load i32, i32* %13, align 4
  %53 = getelementptr inbounds [13 x %struct.compat_value], [13 x %struct.compat_value]* %1, i64 0, i64 0
  %54 = bitcast %struct.compat_value* %53 to %struct.compat_value.0*
  %55 = call i32 @ARRAY_SIZE(%struct.compat_value.0* %54)
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [13 x %struct.compat_value], [13 x %struct.compat_value]* %1, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.compat_value, %struct.compat_value* %60, i32 0, i32 0
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %61, i64 0, i64 0
  %63 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %64 = call i64 @lstrcmpA(i8* %62, i8* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [13 x %struct.compat_value], [13 x %struct.compat_value]* %1, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.compat_value, %struct.compat_value* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %8, align 8
  br label %78

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %51

78:                                               ; preds = %66, %51
  store i64 30, i64* %10, align 8
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %43

82:                                               ; preds = %43
  %83 = getelementptr inbounds [39 x i8], [39 x i8]* %2, i64 0, i64 0
  %84 = call i32 @pGUIDFromStringA(i8* %83, i32* %11)
  %85 = call i64 @pSHGetObjectCompatFlags(i32* null, i32* %11)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds [39 x i8], [39 x i8]* %2, i64 0, i64 0
  %93 = call i32 (i32, i8*, i64, ...) @ok(i32 %89, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %90, i64 %91, i8* %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @RegCloseKey(i32 %94)
  br label %96

96:                                               ; preds = %82, %36
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %29

100:                                              ; preds = %29
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @RegCloseKey(i32 %101)
  br label %103

103:                                              ; preds = %100, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pSHGetObjectCompatFlags(i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @RegEnumKeyA(i32, i32, i8*, i32) #2

declare dso_local i64 @RegEnumValueA(i32, i32, i8*, i64*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.compat_value.0*) #2

declare dso_local i64 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @pGUIDFromStringA(i8*, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
