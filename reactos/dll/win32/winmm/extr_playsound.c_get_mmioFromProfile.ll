; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_playsound.c_get_mmioFromProfile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_playsound.c_get_mmioFromProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_mmioFromProfile.wszSounds = internal constant [7 x i8] c"Sounds\00", align 1
@get_mmioFromProfile.wszDefault = internal constant [8 x i8] c"Default\00", align 1
@get_mmioFromProfile.wszKey = internal constant [23 x i8] c"AppEvents\\Schemes\\Apps\00", align 16
@get_mmioFromProfile.wszDotDefault = internal constant [9 x i8] c".Default\00", align 1
@get_mmioFromProfile.wszDotCurrent = internal constant [9 x i8] c".Current\00", align 1
@get_mmioFromProfile.wszNull = internal constant [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [38 x i8] c"searching in SystemSound list for %s\0A\00", align 1
@SND_NODEFAULT = common dso_local global i32 0, align 4
@MMIO_ALLOCBUF = common dso_local global i32 0, align 4
@MMIO_READ = common dso_local global i32 0, align 4
@MMIO_DENYWRITE = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@SND_APPLICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"can't find SystemSound=%s !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @get_mmioFromProfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_mmioFromProfile(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @debugstr_w(i8* %17)
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %22 = call i32 @GetProfileStringW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @get_mmioFromProfile.wszSounds, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @get_mmioFromProfile.wszNull, i64 0, i64 0), i8* %21, i32 128)
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %24 = call i32 @lstrlenW(i8* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SND_NODEFAULT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %77

32:                                               ; preds = %26
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %34 = call i32 @GetProfileStringW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @get_mmioFromProfile.wszSounds, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_mmioFromProfile.wszDefault, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @get_mmioFromProfile.wszNull, i64 0, i64 0), i8* %33, i32 128)
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %36 = call i32 @lstrlenW(i8* %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %77

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %2
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %55, %40
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 44
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  br label %42

58:                                               ; preds = %52
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %58
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %66 = load i32, i32* @MMIO_ALLOCBUF, align 4
  %67 = load i32, i32* @MMIO_READ, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MMIO_DENYWRITE, align 4
  %70 = or i32 %68, %69
  %71 = call i64 @mmioOpenW(i8* %65, i32* null, i32 %70)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %3, align 8
  br label %193

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %38, %31
  %78 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %79 = call i32 @RegOpenKeyW(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @get_mmioFromProfile.wszKey, i64 0, i64 0), i32* %9)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %189

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @SND_APPLICATION, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %130

87:                                               ; preds = %82
  store i32 1, i32* %13, align 4
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %89 = call i32 @GetModuleFileNameW(i32 0, i8* %88, i32 128)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %87
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ult i64 %94, 128
  br i1 %95, label %96, label %129

96:                                               ; preds = %92
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %99 = call i32 @lstrlenW(i8* %98)
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = getelementptr inbounds i8, i8* %101, i64 -1
  store i8* %102, i8** %7, align 8
  br label %103

103:                                              ; preds = %125, %96
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %106 = icmp uge i8* %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 46
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i8*, i8** %7, align 8
  store i8 0, i8* %113, align 1
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i8*, i8** %7, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 92
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = call i32 @RegOpenKeyW(i32 %120, i8* %122, i32* %10)
  store i32 %123, i32* %13, align 4
  br label %128

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 -1
  store i8* %127, i8** %7, align 8
  br label %103

128:                                              ; preds = %119, %103
  br label %129

129:                                              ; preds = %128, %92, %87
  br label %133

130:                                              ; preds = %82
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @RegOpenKeyW(i32 %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @get_mmioFromProfile.wszDotDefault, i64 0, i64 0), i32* %10)
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %130, %129
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @RegCloseKey(i32 %134)
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %189

139:                                              ; preds = %133
  %140 = load i32, i32* %10, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @RegOpenKeyW(i32 %140, i8* %141, i32* %11)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @RegCloseKey(i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %189

148:                                              ; preds = %139
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @RegOpenKeyW(i32 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @get_mmioFromProfile.wszDotDefault, i64 0, i64 0), i32* %12)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @RegOpenKeyW(i32 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @get_mmioFromProfile.wszDotCurrent, i64 0, i64 0), i32* %12)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @RegCloseKey(i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %189

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %148
  store i32 128, i32* %15, align 4
  %163 = load i32, i32* %12, align 4
  %164 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %165 = ptrtoint i8* %164 to i32
  %166 = call i32 @RegQueryValueExW(i32 %163, i32* null, i32 0, i32* %14, i32 %165, i32* %15)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @RegCloseKey(i32 %167)
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %162
  %172 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %173 = load i8, i8* %172, align 16
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %171, %162
  br label %189

176:                                              ; preds = %171
  %177 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %178 = load i32, i32* @MMIO_ALLOCBUF, align 4
  %179 = load i32, i32* @MMIO_READ, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @MMIO_DENYWRITE, align 4
  %182 = or i32 %180, %181
  %183 = call i64 @mmioOpenW(i8* %177, i32* null, i32 %182)
  store i64 %183, i64* %8, align 8
  %184 = load i64, i64* %8, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = load i64, i64* %8, align 8
  store i64 %187, i64* %3, align 8
  br label %193

188:                                              ; preds = %176
  br label %189

189:                                              ; preds = %188, %175, %160, %147, %138, %81
  %190 = load i8*, i8** %5, align 8
  %191 = call i32 @debugstr_w(i8* %190)
  %192 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %191)
  store i64 0, i64* %3, align 8
  br label %193

193:                                              ; preds = %189, %186, %74
  %194 = load i64, i64* %3, align 8
  ret i64 %194
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @GetProfileStringW(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i64 @mmioOpenW(i8*, i32*, i32) #1

declare dso_local i32 @RegOpenKeyW(i32, i8*, i32*) #1

declare dso_local i32 @GetModuleFileNameW(i32, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @RegQueryValueExW(i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
