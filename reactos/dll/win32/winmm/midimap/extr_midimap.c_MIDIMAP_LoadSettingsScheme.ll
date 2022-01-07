; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/midimap/extr_midimap.c_MIDIMAP_LoadSettingsScheme.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/midimap/extr_midimap.c_MIDIMAP_LoadSettingsScheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"System\\CurrentControlSet\\Control\\MediaProperties\\PrivateProperties\\Midi\\Schemes\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Channels\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Quirks in registry, channel %u is mapped twice\0A\00", align 1
@midiOutPorts = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @MIDIMAP_LoadSettingsScheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MIDIMAP_LoadSettingsScheme(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i32], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %27, %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp ult i32 %18, 16
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %17

30:                                               ; preds = %17
  %31 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %32 = call i64 @RegOpenKeyA(i32 %31, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32* %6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %124

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @RegOpenKeyW(i32 %37, i32* %38, i32* %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @RegCloseKey(i32 %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %124

45:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %115, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %50 = call i32 @RegEnumKeyW(i32 %47, i32 %48, i32* %49, i32 1024)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %118

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %56 = call i64 @RegOpenKeyW(i32 %54, i32* %55, i32* %8)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %115

59:                                               ; preds = %53
  store i32 1024, i32* %15, align 4
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %62 = bitcast i32* %61 to i8*
  %63 = call i64 @RegQueryValueExW(i32 %60, i32* null, i32 0, i32* %14, i8* %62, i32* %15)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %115

66:                                               ; preds = %59
  %67 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %68 = call i32 @MIDIMAP_FindPort(i32* %67, i32* %11)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %115

71:                                               ; preds = %66
  store i32 4, i32* %15, align 4
  %72 = load i32, i32* %8, align 4
  %73 = bitcast i32* %16 to i8*
  %74 = call i64 @RegQueryValueExA(i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %14, i8* %73, i32* %15)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %115

77:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %111, %77
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %79, 16
  br i1 %80, label %81, label %114

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 1, %83
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %81
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %96, %87
  %100 = load i32*, i32** @midiOutPorts, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  store i32* %103, i32** %109, align 8
  br label %110

110:                                              ; preds = %99, %81
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %78

114:                                              ; preds = %78
  br label %115

115:                                              ; preds = %114, %76, %70, %65, %58
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %46

118:                                              ; preds = %46
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @RegCloseKey(i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @RegCloseKey(i32 %121)
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %41, %34
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i64 @RegOpenKeyW(i32, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @RegEnumKeyW(i32, i32, i32*, i32) #1

declare dso_local i64 @RegQueryValueExW(i32, i32*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @MIDIMAP_FindPort(i32*, i32*) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
