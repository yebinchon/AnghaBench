; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/midimap/extr_midimap.c_MIDIMAP_LoadSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/midimap/extr_midimap.c_MIDIMAP_LoadSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Multimedia\\MIDIMap\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"UseScheme\00", align 1
@MIDIMAP_LoadSettings.cs = internal constant [14 x i8] c"CurrentScheme\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Wrong registry: UseScheme is active, but no CurrentScheme found\0A\00", align 1
@MIDIMAP_LoadSettings.ci = internal constant [18 x i8] c"CurrentInstrument\00", align 16
@.str.3 = private unnamed_addr constant [8 x i32] [i32 115, i32 122, i32 80, i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@msacm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"chnMap[%2d] => %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @MIDIMAP_LoadSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MIDIMAP_LoadSettings(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %11 = call i64 @RegOpenKeyA(i32 %10, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = call i32 @MIDIMAP_LoadSettingsDefault(%struct.TYPE_7__* %14, i8* null)
  store i32 %15, i32* %4, align 4
  br label %78

16:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  store i32 4, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = bitcast i32* %7 to i8*
  %19 = call i32 @RegQueryValueExA(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %5, i8* %18, i32* %6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  store i32 256, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %27 = call i32 @RegQueryValueExW(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @MIDIMAP_LoadSettings.cs, i64 0, i64 0), i32 0, i32* %5, i8* %26, i32* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %32 = call i32 @MIDIMAP_LoadSettingsScheme(%struct.TYPE_7__* %30, i8* %31)
  store i32 %32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = call i32 @MIDIMAP_LoadSettingsDefault(%struct.TYPE_7__* %35, i8* null)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %40

38:                                               ; preds = %24
  %39 = call i32 @ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %37
  br label %41

41:                                               ; preds = %40, %21, %16
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  store i32 256, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %47 = call i32 @RegQueryValueExW(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @MIDIMAP_LoadSettings.ci, i64 0, i64 0), i32 0, i32* %5, i8* %46, i32* %6)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %57 = call i32 @MIDIMAP_LoadSettingsDefault(%struct.TYPE_7__* %55, i8* %56)
  store i32 %57, i32* %4, align 4
  br label %76

58:                                               ; preds = %49, %44
  %59 = load i32, i32* %3, align 4
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %61 = call i32 @RegQueryValueExW(i32 %59, i8* bitcast ([8 x i32]* @.str.3 to i8*), i32 0, i32* %5, i8* %60, i32* %6)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %71 = call i32 @MIDIMAP_LoadSettingsDefault(%struct.TYPE_7__* %69, i8* %70)
  store i32 %71, i32* %4, align 4
  br label %75

72:                                               ; preds = %63, %58
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = call i32 @MIDIMAP_LoadSettingsDefault(%struct.TYPE_7__* %73, i8* null)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %54
  br label %77

77:                                               ; preds = %76, %41
  br label %78

78:                                               ; preds = %77, %13
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @RegCloseKey(i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %78
  %84 = load i32, i32* @msacm, align 4
  %85 = call i64 @TRACE_ON(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %115, %87
  %89 = load i32, i32* %9, align 4
  %90 = icmp ult i32 %89, 16
  br i1 %90, label %91, label %118

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = icmp ne %struct.TYPE_6__* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %104, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  br label %112

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111, %101
  %113 = phi i32 [ %110, %101 ], [ -1, %111 ]
  %114 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %113)
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %88

118:                                              ; preds = %88
  br label %119

119:                                              ; preds = %118, %83, %78
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @MIDIMAP_LoadSettingsDefault(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @MIDIMAP_LoadSettingsScheme(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
