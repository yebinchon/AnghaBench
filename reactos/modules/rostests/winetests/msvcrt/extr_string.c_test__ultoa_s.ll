; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__ultoa_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__ultoa_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Expected _ultoa_s to return EINVAL, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected errno to be EINVAL, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Expected the output buffer to be untouched\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Expected the output buffer to be null terminated\0A\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Expected _ultoa_s to return ERANGE, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Expected errno to be ERANGE, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\00765\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Expected the output buffer to be null terminated with truncated output\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\007654321\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Expected _ultoa_s to return 0, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"Expected output buffer string to be \2212345678\22, got \22%s\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"1010101010101010\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"Expected output buffer string to be \221010101010101010\22, got \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"nell\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Expected output buffer string to be \22nell\22, got \22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"hag\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"Expected output buffer string to be \22hag\22, got \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__ultoa_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__ultoa_s() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [33 x i8], align 16
  %3 = load i64, i64* @EBADF, align 8
  store i64 %3, i64* @errno, align 8
  %4 = call i64 @p_ultoa_s(i32 0, i8* null, i32 0, i32 0)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @EINVAL, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @EINVAL, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* @errno, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i8 signext 88, i32 33)
  %19 = load i64, i64* @EBADF, align 8
  store i64 %19, i64* @errno, align 8
  %20 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %21 = call i64 @p_ultoa_s(i32 0, i8* %20, i32 0, i32 0)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @EINVAL, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINVAL, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* @errno, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 88
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %40 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i8 signext 88, i32 33)
  %42 = load i64, i64* @EBADF, align 8
  store i64 %42, i64* @errno, align 8
  %43 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %44 = call i64 @p_ultoa_s(i32 0, i8* %43, i32 33, i32 0)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @EINVAL, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %1, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EINVAL, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* @errno, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %63 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %64 = call i32 @memset(i8* %63, i8 signext 88, i32 33)
  %65 = load i64, i64* @EBADF, align 8
  store i64 %65, i64* @errno, align 8
  %66 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %67 = call i64 @p_ultoa_s(i32 0, i8* %66, i32 33, i32 64)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @EINVAL, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %1, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @EINVAL, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* @errno, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %81 = load i8, i8* %80, align 16
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %86 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %87 = call i32 @memset(i8* %86, i8 signext 88, i32 33)
  %88 = load i64, i64* @EBADF, align 8
  store i64 %88, i64* @errno, align 8
  %89 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %90 = call i64 @p_ultoa_s(i32 12345678, i8* %89, i32 4, i32 10)
  store i64 %90, i64* %1, align 8
  %91 = load i64, i64* %1, align 8
  %92 = load i64, i64* @ERANGE, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %1, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @ERANGE, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* @errno, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %101)
  %103 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %104 = call i32 @memcmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %109 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %110 = call i32 @memset(i8* %109, i8 signext 88, i32 33)
  %111 = load i64, i64* @EBADF, align 8
  store i64 %111, i64* @errno, align 8
  %112 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %113 = call i64 @p_ultoa_s(i32 12345678, i8* %112, i32 8, i32 10)
  store i64 %113, i64* %1, align 8
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* @ERANGE, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %1, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  %120 = load i64, i64* @errno, align 8
  %121 = load i64, i64* @ERANGE, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* @errno, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %124)
  %126 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %127 = call i32 @memcmp(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %132 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %133 = call i64 @p_ultoa_s(i32 12345678, i8* %132, i32 9, i32 10)
  store i64 %133, i64* %1, align 8
  %134 = load i64, i64* %1, align 8
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %1, align 8
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %137)
  %139 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i8* %144)
  %146 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %147 = call i64 @p_ultoa_s(i32 43690, i8* %146, i32 33, i32 2)
  store i64 %147, i64* %1, align 8
  %148 = load i64, i64* %1, align 8
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load i64, i64* %1, align 8
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %151)
  %153 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i64 0, i64 0), i8* %158)
  %160 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %161 = call i64 @p_ultoa_s(i32 1092009, i8* %160, i32 33, i32 36)
  store i64 %161, i64* %1, align 8
  %162 = load i64, i64* %1, align 8
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = load i64, i64* %1, align 8
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %165)
  %167 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %173 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i8* %172)
  %174 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %175 = call i64 @p_ultoa_s(i32 5704, i8* %174, i32 33, i32 18)
  store i64 %175, i64* %1, align 8
  %176 = load i64, i64* %1, align 8
  %177 = icmp eq i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = load i64, i64* %1, align 8
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %179)
  %181 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %187 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i8* %186)
  ret void
}

declare dso_local i64 @p_ultoa_s(i32, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
