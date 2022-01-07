; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetLocaleInfoA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetLocaleInfoA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wrong LCID calculated - %d\0A\00", align 1
@LOCALE_ILANGUAGE = common dso_local global i32 0, align 4
@LOCALE_RETURN_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SLANGUAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"got %d with '%s' (expected %d with '%s')\0A\00", align 1
@LANG_ARABIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"LANG_ARABIC not installed\0A\00", align 1
@LANG_GERMAN = common dso_local global i32 0, align 4
@NUO = common dso_local global i32 0, align 4
@LOCALE_SDAYNAME1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Expected len=7, got %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"Expected ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Expected 'Mon', got '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Expected ret == 7, got %d, error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Monday\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Expected 'Monday', got '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetLocaleInfoA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetLocaleInfoA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @LANG_ENGLISH, align 4
  %9 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %10 = call i32 @MAKELANGID(i32 %8, i32 %9)
  %11 = load i32, i32* @SORT_DEFAULT, align 4
  %12 = call i32 @MAKELCID(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @BUFFER_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @BUFFER_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1033
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @LOCALE_ILANGUAGE, align 4
  %27 = load i32, i32* @LOCALE_RETURN_NUMBER, align 4
  %28 = or i32 %26, %27
  %29 = bitcast i32* %7 to i8*
  %30 = call i32 @GetLocaleInfoA(i32 %25, i32 %28, i8* %29, i32 4)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @COUNTOF(i8* %19)
  %41 = call i32 @memset(i8* %19, i32 0, i32 %40)
  %42 = load i32, i32* @LANG_ENGLISH, align 4
  %43 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %44 = call i32 @MAKELANGID(i32 %42, i32 %43)
  %45 = load i32, i32* @LOCALE_SLANGUAGE, align 4
  %46 = call i32 @COUNTOF(i8* %19)
  %47 = call i32 @GetLocaleInfoA(i32 %44, i32 %45, i8* %19, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = call i32 @SetLastError(i32 -559038737)
  %49 = call i32 @COUNTOF(i8* %16)
  %50 = call i32 @memset(i8* %16, i32 0, i32 %49)
  %51 = load i32, i32* @LANG_ENGLISH, align 4
  %52 = load i32, i32* @LOCALE_SLANGUAGE, align 4
  %53 = call i32 @COUNTOF(i8* %16)
  %54 = call i32 @GetLocaleInfoA(i32 %51, i32 %52, i8* %16, i32 %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %0
  %59 = call i32 @lstrcmpA(i8* %16, i8* %19)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %58, %0
  %63 = phi i1 [ false, %0 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %65, i8* %16, i32 %66, i8* %19)
  %68 = call i32 @COUNTOF(i8* %19)
  %69 = call i32 @memset(i8* %19, i32 0, i32 %68)
  %70 = load i32, i32* @LANG_ARABIC, align 4
  %71 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %72 = call i32 @MAKELANGID(i32 %70, i32 %71)
  %73 = load i32, i32* @LOCALE_SLANGUAGE, align 4
  %74 = call i32 @COUNTOF(i8* %19)
  %75 = call i32 @GetLocaleInfoA(i32 %72, i32 %73, i8* %19, i32 %74)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %62
  %79 = call i32 @SetLastError(i32 -559038737)
  %80 = call i32 @COUNTOF(i8* %16)
  %81 = call i32 @memset(i8* %16, i32 0, i32 %80)
  %82 = load i32, i32* @LANG_ARABIC, align 4
  %83 = load i32, i32* @LOCALE_SLANGUAGE, align 4
  %84 = call i32 @COUNTOF(i8* %16)
  %85 = call i32 @GetLocaleInfoA(i32 %82, i32 %83, i8* %16, i32 %84)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* %2, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = call i32 @lstrcmpA(i8* %16, i8* %19)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %89, %78
  %94 = phi i1 [ false, %78 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %96, i8* %16, i32 %97, i8* %19)
  br label %101

99:                                               ; preds = %62
  %100 = call i32 @win_skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %93
  %102 = call i32 @COUNTOF(i8* %19)
  %103 = call i32 @memset(i8* %19, i32 0, i32 %102)
  %104 = load i32, i32* @LANG_GERMAN, align 4
  %105 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %106 = call i32 @MAKELANGID(i32 %104, i32 %105)
  %107 = load i32, i32* @LOCALE_SLANGUAGE, align 4
  %108 = call i32 @COUNTOF(i8* %19)
  %109 = call i32 @GetLocaleInfoA(i32 %106, i32 %107, i8* %19, i32 %108)
  store i32 %109, i32* %2, align 4
  %110 = call i32 @SetLastError(i32 -559038737)
  %111 = call i32 @COUNTOF(i8* %16)
  %112 = call i32 @memset(i8* %16, i32 0, i32 %111)
  %113 = load i32, i32* @LANG_GERMAN, align 4
  %114 = load i32, i32* @LOCALE_SLANGUAGE, align 4
  %115 = call i32 @COUNTOF(i8* %16)
  %116 = call i32 @GetLocaleInfoA(i32 %113, i32 %114, i8* %16, i32 %115)
  store i32 %116, i32* %1, align 4
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* %2, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %101
  %121 = call i32 @lstrcmpA(i8* %16, i8* %19)
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %120, %101
  %125 = phi i1 [ false, %101 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* %2, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %127, i8* %16, i32 %128, i8* %19)
  %130 = call i32 @SetLastError(i32 -559038737)
  %131 = call i32 @COUNTOF(i8* %16)
  %132 = call i32 @memset(i8* %16, i32 0, i32 %131)
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @NUO, align 4
  %135 = load i32, i32* @LOCALE_SDAYNAME1, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @GetLocaleInfoA(i32 %133, i32 %136, i8* %16, i32 0)
  store i32 %137, i32* %1, align 4
  %138 = load i32, i32* %1, align 4
  %139 = icmp eq i32 %138, 7
  br i1 %139, label %140, label %145

140:                                              ; preds = %124
  %141 = getelementptr inbounds i8, i8* %16, i64 0
  %142 = load i8, i8* %141, align 16
  %143 = icmp ne i8 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %140, %124
  %146 = phi i1 [ false, %124 ], [ %144, %140 ]
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %1, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = call i32 @SetLastError(i32 -559038737)
  %151 = call i32 @COUNTOF(i8* %16)
  %152 = call i32 @memset(i8* %16, i32 0, i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @NUO, align 4
  %155 = load i32, i32* @LOCALE_SDAYNAME1, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @GetLocaleInfoA(i32 %153, i32 %156, i8* %16, i32 3)
  store i32 %157, i32* %1, align 4
  %158 = load i32, i32* %1, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %145
  %161 = call i8* (...) @GetLastError()
  %162 = load i8*, i8** @ERROR_INSUFFICIENT_BUFFER, align 8
  %163 = icmp eq i8* %161, %162
  br label %164

164:                                              ; preds = %160, %145
  %165 = phi i1 [ false, %145 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = call i8* (...) @GetLastError()
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %167)
  %169 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %16)
  %174 = call i32 @SetLastError(i32 -559038737)
  %175 = call i32 @COUNTOF(i8* %16)
  %176 = call i32 @memset(i8* %16, i32 0, i32 %175)
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* @NUO, align 4
  %179 = load i32, i32* @LOCALE_SDAYNAME1, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @GetLocaleInfoA(i32 %177, i32 %180, i8* %16, i32 10)
  store i32 %181, i32* %1, align 4
  %182 = load i32, i32* %1, align 4
  %183 = icmp eq i32 %182, 7
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %1, align 4
  %186 = call i8* (...) @GetLastError()
  %187 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %185, i8* %186)
  %188 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %16)
  %193 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %193)
  ret void
}

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLocaleInfoA(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @COUNTOF(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
