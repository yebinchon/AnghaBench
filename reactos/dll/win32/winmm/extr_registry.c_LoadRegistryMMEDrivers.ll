; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_registry.c_LoadRegistryMMEDrivers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_registry.c_LoadRegistryMMEDrivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"ERROR: Could not open: HKEY_LOCAL_MACHINE\\%s\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@REG_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"wavemapper\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Found a Wave-mapper: %s\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"midimapper\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Found a MIDI-mapper: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"wave\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Found a Wave driver: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Found a MIDI driver: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Found a mixer driver: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Found an aux driver: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Not supported: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"FAILED when initializing %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Invalid data format\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Found a total of %d drivers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @LoadRegistryMMEDrivers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i64 256, i64* %7, align 8
  store i64 256, i64* %9, align 8
  %16 = bitcast [256 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 256, i1 false)
  %17 = bitcast [256 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 256, i1 false)
  %18 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @RegOpenKeyA(i32 %18, i8* %19, i32* %6)
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i8* null, i8** %2, align 8
  br label %171

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %132, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %32 = ptrtoint i8* %31 to i32
  %33 = call i64 @RegEnumValue(i32 %28, i8* %29, i8* %30, i64* %7, i32* null, i64* %13, i32 %32, i64* %9)
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %141

36:                                               ; preds = %27
  %37 = load i8*, i8** @FALSE, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** @FALSE, align 8
  store i8* %38, i8** %15, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @REG_SZ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %130

42:                                               ; preds = %36
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %44 = call i32 @stricmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %48 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %51 = call i32 @strcpy(i8* %49, i8* %50)
  %52 = load i8*, i8** @TRUE, align 8
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  br label %116

55:                                               ; preds = %42
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %57 = call i32 @stricmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %61 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %64 = call i32 @strcpy(i8* %62, i8* %63)
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  br label %115

68:                                               ; preds = %55
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %70 = call i32 @_strnicmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %69, i32 4)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %74 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** @TRUE, align 8
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  br label %114

78:                                               ; preds = %68
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %80 = call i32 @_strnicmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %79, i32 4)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %84 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %83)
  %85 = load i8*, i8** @TRUE, align 8
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %4, align 8
  br label %113

88:                                               ; preds = %78
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %90 = call i32 @_strnicmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %89, i32 5)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %94 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %93)
  %95 = load i8*, i8** @TRUE, align 8
  store i8* %95, i8** %14, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %4, align 8
  br label %112

98:                                               ; preds = %88
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %100 = call i32 @_strnicmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %99, i32 4)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %104 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %103)
  %105 = load i8*, i8** @TRUE, align 8
  store i8* %105, i8** %14, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %4, align 8
  br label %111

108:                                              ; preds = %98
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %110 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %102
  br label %112

112:                                              ; preds = %111, %92
  br label %113

113:                                              ; preds = %112, %82
  br label %114

114:                                              ; preds = %113, %72
  br label %115

115:                                              ; preds = %114, %59
  br label %116

116:                                              ; preds = %115, %46
  %117 = load i8*, i8** %14, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @MMDRV_Install(i8* %120, i8* %121, i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %127 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %125, %119
  br label %129

129:                                              ; preds = %128, %116
  br label %132

130:                                              ; preds = %36
  %131 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %129
  store i64 256, i64* %7, align 8
  store i64 256, i64* %9, align 8
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @memset(i8* %133, i32 0, i64 %134)
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @memset(i8* %136, i32 0, i64 %137)
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  br label %27

141:                                              ; preds = %27
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %143 = load i8, i8* %142, align 16
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %147 = load i8*, i8** @TRUE, align 8
  %148 = call i32 @MMDRV_Install(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %146, i8* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %152 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %150, %145
  br label %154

154:                                              ; preds = %153, %141
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %156 = load i8, i8* %155, align 16
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %160 = load i8*, i8** @TRUE, align 8
  %161 = call i32 @MMDRV_Install(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %159, i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %165 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %163, %158
  br label %167

167:                                              ; preds = %166, %154
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %168)
  %170 = load i8*, i8** %4, align 8
  store i8* %170, i8** %2, align 8
  br label %171

171:                                              ; preds = %167, %23
  %172 = load i8*, i8** %2, align 8
  ret i8* %172
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i64 @RegEnumValue(i32, i8*, i8*, i64*, i32*, i64*, i32, i64*) #2

declare dso_local i32 @stricmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @_strnicmp(i8*, i8*, i32) #2

declare dso_local i32 @MMDRV_Install(i8*, i8*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
