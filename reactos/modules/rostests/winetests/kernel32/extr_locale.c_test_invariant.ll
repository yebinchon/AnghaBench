; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_invariant.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_invariant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.invariant_entry = type { i32, i8*, i8*, i64 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@invariant_list = common dso_local global %struct.invariant_entry* null, align 8
@LOCALE_INVARIANT = common dso_local global i32 0, align 4
@NUO = common dso_local global i32 0, align 4
@LOCALE_SLANGUAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"GetLocaleInfoA(LOCALE_INVARIANT) not supported\0A\00", align 1
@LOCALE_SNAME = common dso_local global i32 0, align 4
@LOCALE_SSCRIPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"For id %d, expected ret == %d, got %d, error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"For id %d, Expected %s, got '%s'\0A\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Non US-English locale\0A\00", align 1
@test_invariant.lang = internal constant [39 x i8] c"Invariant Language (Invariant Country)\00", align 16
@test_invariant.cntry = internal constant [18 x i8] c"Invariant Country\00", align 16
@test_invariant.sortm = internal constant [19 x i8] c"Math Alphanumerics\00", align 16
@test_invariant.sortd = internal constant [8 x i8] c"Default\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Expected ret == %d, got %d, error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Expected %s, got '%s'\0A\00", align 1
@LOCALE_SCOUNTRY = common dso_local global i32 0, align 4
@LOCALE_SSORTNAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Expected ret == %d or %d, got %d, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_invariant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invariant() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.invariant_entry*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @BUFFER_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.invariant_entry*, %struct.invariant_entry** @invariant_list, align 8
  store %struct.invariant_entry* %11, %struct.invariant_entry** %5, align 8
  %12 = load i32, i32* @LOCALE_INVARIANT, align 4
  %13 = load i32, i32* @NUO, align 4
  %14 = load i32, i32* @LOCALE_SLANGUAGE, align 4
  %15 = or i32 %13, %14
  %16 = trunc i64 %8 to i32
  %17 = call i32 @GetLocaleInfoA(i32 %12, i32 %15, i8* %10, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %0
  %20 = call i32 @win_skip(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %215

21:                                               ; preds = %0
  br label %22

22:                                               ; preds = %115, %21
  %23 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %24 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %118

27:                                               ; preds = %22
  %28 = load i32, i32* @LOCALE_INVARIANT, align 4
  %29 = load i32, i32* @NUO, align 4
  %30 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %31 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %29, %32
  %34 = trunc i64 %8 to i32
  %35 = call i32 @GetLocaleInfoA(i32 %28, i32 %33, i8* %10, i32 %34)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %27
  %39 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %40 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @LOCALE_SNAME, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %46 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @LOCALE_SSCRIPTS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38
  %51 = call i32 @win_skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %115

52:                                               ; preds = %44, %27
  %53 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %54 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %76, label %61

61:                                               ; preds = %52
  %62 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %63 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* %1, align 4
  %68 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %69 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = add nsw i32 %71, 1
  %73 = icmp eq i32 %67, %72
  br label %74

74:                                               ; preds = %66, %61
  %75 = phi i1 [ false, %61 ], [ %73, %66 ]
  br label %76

76:                                               ; preds = %74, %52
  %77 = phi i1 [ true, %52 ], [ %75, %74 ]
  %78 = zext i1 %77 to i32
  %79 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %80 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* %1, align 4
  %84 = call i32 (...) @GetLastError()
  %85 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %87 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcmp(i8* %10, i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %76
  %92 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %93 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %98 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* %10, i8* %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %96, %91
  %104 = phi i1 [ false, %91 ], [ %102, %96 ]
  br label %105

105:                                              ; preds = %103, %76
  %106 = phi i1 [ true, %76 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  %108 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %109 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %112 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %110, i8* %113, i8* %10)
  br label %115

115:                                              ; preds = %105, %50
  %116 = load %struct.invariant_entry*, %struct.invariant_entry** %5, align 8
  %117 = getelementptr inbounds %struct.invariant_entry, %struct.invariant_entry* %116, i32 1
  store %struct.invariant_entry* %117, %struct.invariant_entry** %5, align 8
  br label %22

118:                                              ; preds = %22
  %119 = call i32 (...) @GetSystemDefaultLCID()
  %120 = call i64 @LANGIDFROMLCID(i32 %119)
  %121 = load i32, i32* @LANG_ENGLISH, align 4
  %122 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %123 = call i64 @MAKELANGID(i32 %121, i32 %122)
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = call i32 (...) @GetThreadLocale()
  %127 = call i64 @LANGIDFROMLCID(i32 %126)
  %128 = load i32, i32* @LANG_ENGLISH, align 4
  %129 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %130 = call i64 @MAKELANGID(i32 %128, i32 %129)
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %125, %118
  %133 = call i32 @skip(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %214

134:                                              ; preds = %125
  %135 = load i32, i32* @LOCALE_INVARIANT, align 4
  %136 = load i32, i32* @NUO, align 4
  %137 = load i32, i32* @LOCALE_SLANGUAGE, align 4
  %138 = or i32 %136, %137
  %139 = trunc i64 %8 to i32
  %140 = call i32 @GetLocaleInfoA(i32 %135, i32 %138, i8* %10, i32 %139)
  store i32 %140, i32* %1, align 4
  %141 = call i32 @lstrlenA(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_invariant.lang, i64 0, i64 0))
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  %143 = load i32, i32* %1, align 4
  %144 = load i32, i32* %2, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* %1, align 4
  %149 = call i32 (...) @GetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %147, i32 %148, i32 %149)
  %151 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_invariant.lang, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @test_invariant.lang, i64 0, i64 0), i8* %10)
  %156 = load i32, i32* @LOCALE_INVARIANT, align 4
  %157 = load i32, i32* @NUO, align 4
  %158 = load i32, i32* @LOCALE_SCOUNTRY, align 4
  %159 = or i32 %157, %158
  %160 = trunc i64 %8 to i32
  %161 = call i32 @GetLocaleInfoA(i32 %156, i32 %159, i8* %10, i32 %160)
  store i32 %161, i32* %1, align 4
  %162 = call i32 @lstrlenA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_invariant.cntry, i64 0, i64 0))
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %2, align 4
  %164 = load i32, i32* %1, align 4
  %165 = load i32, i32* %2, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %2, align 4
  %169 = load i32, i32* %1, align 4
  %170 = call i32 (...) @GetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  %172 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_invariant.cntry, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_invariant.cntry, i64 0, i64 0), i8* %10)
  %177 = load i32, i32* @LOCALE_INVARIANT, align 4
  %178 = load i32, i32* @NUO, align 4
  %179 = load i32, i32* @LOCALE_SSORTNAME, align 4
  %180 = or i32 %178, %179
  %181 = trunc i64 %8 to i32
  %182 = call i32 @GetLocaleInfoA(i32 %177, i32 %180, i8* %10, i32 %181)
  store i32 %182, i32* %1, align 4
  %183 = load i32, i32* %1, align 4
  %184 = call i32 @lstrlenA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_invariant.sortm, i64 0, i64 0))
  %185 = add nsw i32 %184, 1
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %134
  %188 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_invariant.sortm, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_invariant.sortm, i64 0, i64 0), i8* %10)
  br label %213

193:                                              ; preds = %134
  %194 = load i32, i32* %1, align 4
  %195 = call i32 @lstrlenA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_invariant.sortd, i64 0, i64 0))
  %196 = add nsw i32 %195, 1
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_invariant.sortd, i64 0, i64 0))
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_invariant.sortd, i64 0, i64 0), i8* %10)
  br label %212

204:                                              ; preds = %193
  %205 = call i32 @lstrlenA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_invariant.sortm, i64 0, i64 0))
  %206 = add nsw i32 %205, 1
  %207 = call i32 @lstrlenA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_invariant.sortd, i64 0, i64 0))
  %208 = add nsw i32 %207, 1
  %209 = load i32, i32* %1, align 4
  %210 = call i32 (...) @GetLastError()
  %211 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %206, i32 %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %204, %198
  br label %213

213:                                              ; preds = %212, %187
  br label %214

214:                                              ; preds = %213, %132
  store i32 0, i32* %6, align 4
  br label %215

215:                                              ; preds = %214, %19
  %216 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %6, align 4
  switch i32 %217, label %219 [
    i32 0, label %218
    i32 1, label %218
  ]

218:                                              ; preds = %215, %215
  ret void

219:                                              ; preds = %215
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetLocaleInfoA(i32, i32, i8*, i32) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @LANGIDFROMLCID(i32) #2

declare dso_local i32 @GetSystemDefaultLCID(...) #2

declare dso_local i64 @MAKELANGID(i32, i32) #2

declare dso_local i32 @GetThreadLocale(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @lstrlenA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
