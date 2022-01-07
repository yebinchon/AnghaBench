; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_ParseThemeIni.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_ParseThemeIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_11__*, %struct.TYPE_11__* }

@MSSTYLES_ParseThemeIni.szSysMetrics = internal constant [11 x i8] c"SysMetrics\00", align 1
@MSSTYLES_ParseThemeIni.szGlobals = internal constant [8 x i8] c"globals\00", align 1
@MAX_THEME_APP_NAME = common dso_local global i32 0, align 4
@MAX_THEME_CLASS_NAME = common dso_local global i32 0, align 4
@MAX_THEME_VALUE_NAME = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unknown system metric %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown property %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"No overrides found for app %s class %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to parse theme ini\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSSTYLES_ParseThemeIni(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %21 = load i32, i32* @MAX_THEME_APP_NAME, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i32, i32* @MAX_THEME_CLASS_NAME, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %28 = load i32, i32* @MAX_THEME_VALUE_NAME, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 1, i32* %19, align 4
  br label %191

36:                                               ; preds = %1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = call i32 @MSSTYLES_GetActiveThemeIni(%struct.TYPE_10__* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %123, %77, %36
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @UXINI_GetNextSection(i32 %40, i64* %15)
  store i32 %41, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %124

43:                                               ; preds = %39
  %44 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %45 = load i32, i32* @NORM_IGNORECASE, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i64, i64* %15, align 8
  %48 = call i64 @CompareStringW(i32 %44, i32 %45, i32 %46, i64 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @MSSTYLES_ParseThemeIni.szSysMetrics, i64 0, i64 0), i32 -1)
  %49 = load i64, i64* @CSTR_EQUAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @UXINI_GetNextValue(i32 %53, i64* %15, i32* %18, i64* %17)
  store i32 %54, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32, i32* %16, align 4
  %58 = load i64, i64* %15, align 8
  %59 = add nsw i64 %58, 1
  %60 = udiv i64 %29, 1
  %61 = trunc i64 %60 to i32
  %62 = call i32 @min(i64 %59, i32 %61)
  %63 = call i32 @lstrcpynW(i8* %30, i32 %57, i32 %62)
  %64 = call i64 @MSSTYLES_LookupProperty(i8* %30, i32* %13, i32* %14)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i64, i64* %17, align 8
  %72 = call i32 @MSSTYLES_AddMetric(%struct.TYPE_10__* %67, i32 %68, i32 %69, i32 %70, i64 %71)
  br label %76

73:                                               ; preds = %56
  %74 = call i32 @debugstr_w(i8* %30)
  %75 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %66
  br label %52

77:                                               ; preds = %52
  br label %39

78:                                               ; preds = %43
  %79 = load i32, i32* %16, align 4
  %80 = load i64, i64* %15, align 8
  %81 = call i64 @MSSTYLES_ParseIniSectionName(i32 %79, i64 %80, i8* %24, i8* %27, i32* %11, i32* %12)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %123

83:                                               ; preds = %78
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %20, align 4
  %85 = call i32 @lstrcmpiW(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @MSSTYLES_ParseThemeIni.szGlobals, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %20, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = call %struct.TYPE_11__* @MSSTYLES_AddClass(%struct.TYPE_10__* %90, i8* %24, i8* %27)
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %3, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @MSSTYLES_AddPartState(%struct.TYPE_11__* %92, i32 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %121, %89
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @UXINI_GetNextValue(i32 %97, i64* %15, i32* %18, i64* %17)
  store i32 %98, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i32, i32* %16, align 4
  %102 = load i64, i64* %15, align 8
  %103 = add nsw i64 %102, 1
  %104 = udiv i64 %29, 1
  %105 = trunc i64 %104 to i32
  %106 = call i32 @min(i64 %103, i32 %105)
  %107 = call i32 @lstrcpynW(i8* %30, i32 %101, i32 %106)
  %108 = call i64 @MSSTYLES_LookupProperty(i8* %30, i32* %13, i32* %14)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %100
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i64, i64* %17, align 8
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @MSSTYLES_AddProperty(i32 %111, i32 %112, i32 %113, i32 %114, i64 %115, i32 %116)
  br label %121

118:                                              ; preds = %100
  %119 = call i32 @debugstr_w(i8* %30)
  %120 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %110
  br label %96

122:                                              ; preds = %96
  br label %123

123:                                              ; preds = %122, %78
  br label %39

124:                                              ; preds = %39
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = call i8* @MSSTYLES_FindClass(%struct.TYPE_10__* %125, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @MSSTYLES_ParseThemeIni.szGlobals, i64 0, i64 0))
  %127 = bitcast i8* %126 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %127, %struct.TYPE_11__** %4, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %3, align 8
  br label %131

131:                                              ; preds = %177, %124
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = icmp ne %struct.TYPE_11__* %132, null
  br i1 %133, label %134, label %181

134:                                              ; preds = %131
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %140, label %168

140:                                              ; preds = %134
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @MSSTYLES_FindClass(%struct.TYPE_10__* %141, i32* null, i8* %144)
  %146 = bitcast i8* %145 to %struct.TYPE_11__*
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  store %struct.TYPE_11__* %146, %struct.TYPE_11__** %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = icmp ne %struct.TYPE_11__* %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %140
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @debugstr_w(i8* %156)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @debugstr_w(i8* %160)
  %162 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %157, i32 %161)
  br label %167

163:                                              ; preds = %140
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 3
  store %struct.TYPE_11__* %164, %struct.TYPE_11__** %166, align 8
  br label %167

167:                                              ; preds = %163, %153
  br label %177

168:                                              ; preds = %134
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %171 = icmp ne %struct.TYPE_11__* %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  store %struct.TYPE_11__* %173, %struct.TYPE_11__** %175, align 8
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %167
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  store %struct.TYPE_11__* %180, %struct.TYPE_11__** %3, align 8
  br label %131

181:                                              ; preds = %131
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @UXINI_CloseINI(i32 %182)
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = icmp ne %struct.TYPE_11__* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %181
  %189 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %181
  store i32 0, i32* %19, align 4
  br label %191

191:                                              ; preds = %190, %35
  %192 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %19, align 4
  switch i32 %193, label %195 [
    i32 0, label %194
    i32 1, label %194
  ]

194:                                              ; preds = %191, %191
  ret void

195:                                              ; preds = %191
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSSTYLES_GetActiveThemeIni(%struct.TYPE_10__*) #2

declare dso_local i32 @UXINI_GetNextSection(i32, i64*) #2

declare dso_local i64 @CompareStringW(i32, i32, i32, i64, i8*, i32) #2

declare dso_local i32 @UXINI_GetNextValue(i32, i64*, i32*, i64*) #2

declare dso_local i32 @lstrcpynW(i8*, i32, i32) #2

declare dso_local i32 @min(i64, i32) #2

declare dso_local i64 @MSSTYLES_LookupProperty(i8*, i32*, i32*) #2

declare dso_local i32 @MSSTYLES_AddMetric(%struct.TYPE_10__*, i32, i32, i32, i64) #2

declare dso_local i32 @TRACE(i8*, i32, ...) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i64 @MSSTYLES_ParseIniSectionName(i32, i64, i8*, i8*, i32*, i32*) #2

declare dso_local i32 @lstrcmpiW(i8*, i8*) #2

declare dso_local %struct.TYPE_11__* @MSSTYLES_AddClass(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i32 @MSSTYLES_AddPartState(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @MSSTYLES_AddProperty(i32, i32, i32, i32, i64, i32) #2

declare dso_local i8* @MSSTYLES_FindClass(%struct.TYPE_10__*, i32*, i8*) #2

declare dso_local i32 @UXINI_CloseINI(i32) #2

declare dso_local i32 @ERR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
