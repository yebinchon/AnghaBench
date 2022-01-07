; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_UrlCanonicalizeW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_UrlCanonicalizeW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@winehqW = common dso_local global i8* null, align 8
@URL_WININET_COMPATIBILITY = common dso_local global i32 0, align 4
@URL_ESCAPE_UNSAFE = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"got 0x%x with %u and size %u for %u (expected 'E_POINTER' and size %u)\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"got 0x%x with %u and size %u for %u (expected 'S_OK' and size %u)\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"http://www.winehq.org/X\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Incorrect char chopping for char %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UrlCanonicalizeW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UrlCanonicalizeW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i8*, i8** @winehqW, align 8
  %15 = call i32 @lstrlenW(i8* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i8* %13, i8 signext 35, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %13, i64 %26
  store i8 0, i8* %27, align 1
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i8*, i8** @winehqW, align 8
  %30 = load i32, i32* @URL_WININET_COMPATIBILITY, align 4
  %31 = load i32, i32* @URL_ESCAPE_UNSAFE, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @pUrlCanonicalizeW(i8* %29, i8* %13, i32* %3, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @E_POINTER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %0
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br label %42

42:                                               ; preds = %37, %0
  %43 = phi i1 [ false, %0 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %5, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (...) @GetLastError()
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @lstrlenW(i8* %13)
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48, i32 %49, i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i8* %13, i8 signext 35, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %13, i64 %62
  store i8 0, i8* %63, align 1
  %64 = call i32 @SetLastError(i32 -559038737)
  %65 = load i8*, i8** @winehqW, align 8
  %66 = load i32, i32* @URL_WININET_COMPATIBILITY, align 4
  %67 = load i32, i32* @URL_ESCAPE_UNSAFE, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @pUrlCanonicalizeW(i8* %65, i8* %13, i32* %3, i32 %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @E_POINTER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %42
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  %77 = icmp eq i32 %74, %76
  br label %78

78:                                               ; preds = %73, %42
  %79 = phi i1 [ false, %42 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %5, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (...) @GetLastError()
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @lstrlenW(i8* %13)
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %80, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83, i32 %84, i32 %85, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memset(i8* %13, i8 signext 35, i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %13, i64 %99
  store i8 0, i8* %100, align 1
  %101 = call i32 @SetLastError(i32 -559038737)
  %102 = load i8*, i8** @winehqW, align 8
  %103 = load i32, i32* @URL_WININET_COMPATIBILITY, align 4
  %104 = load i32, i32* @URL_ESCAPE_UNSAFE, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @pUrlCanonicalizeW(i8* %102, i8* %13, i32* %3, i32 %105)
  store i64 %106, i64* %5, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %78
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  br label %114

114:                                              ; preds = %110, %78
  %115 = phi i1 [ false, %78 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %5, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 (...) @GetLastError()
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @lstrlenW(i8* %13)
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 1
  %130 = trunc i64 %129 to i32
  %131 = call i32 @memset(i8* %13, i8 signext 35, i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %13, i64 %134
  store i8 0, i8* %135, align 1
  %136 = call i32 @SetLastError(i32 -559038737)
  %137 = load i8*, i8** @winehqW, align 8
  %138 = load i32, i32* @URL_WININET_COMPATIBILITY, align 4
  %139 = load i32, i32* @URL_ESCAPE_UNSAFE, align 4
  %140 = or i32 %138, %139
  %141 = call i64 @pUrlCanonicalizeW(i8* %137, i8* %13, i32* %3, i32 %140)
  store i64 %141, i64* %5, align 8
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @S_OK, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %114
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp eq i32 %146, %147
  br label %149

149:                                              ; preds = %145, %114
  %150 = phi i1 [ false, %114 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* %5, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i32 (...) @GetLastError()
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @lstrlenW(i8* %13)
  %157 = load i32, i32* %4, align 4
  %158 = call i32 (i32, i8*, i32, ...) @ok(i32 %151, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  store i32 1, i32* %6, align 4
  br label %159

159:                                              ; preds = %192, %149
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 65536
  br i1 %161, label %162, label %195

162:                                              ; preds = %159
  %163 = load i32, i32* @CP_ACP, align 4
  %164 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %165 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %166 = call i32 @ARRAY_SIZE(i8* %165)
  %167 = call i32 @MultiByteToWideChar(i32 %163, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* %164, i32 %166)
  %168 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %169 = call i32 @lstrlenW(i8* %168)
  %170 = sub nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %6, align 4
  %172 = trunc i32 %171 to i8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %174
  store i8 %172, i8* %175, align 1
  %176 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  store i32 %176, i32* %4, align 4
  %177 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %178 = call i64 @pUrlCanonicalizeW(i8* %177, i8* %13, i32* %4, i32 0)
  %179 = call i32 @lstrlenW(i8* %13)
  %180 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %181 = call i32 @lstrlenW(i8* %180)
  %182 = icmp slt i32 %179, %181
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp sle i32 %185, 32
  %187 = zext i1 %186 to i32
  %188 = icmp eq i32 %184, %187
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %6, align 4
  %191 = call i32 (i32, i8*, i32, ...) @ok(i32 %189, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %162
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %159

195:                                              ; preds = %159
  %196 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %196)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @pUrlCanonicalizeW(i8*, i8*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
