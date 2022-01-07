; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__wcsupr_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__wcsupr_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test__wcsupr_s.mixedString = internal constant [16 x i8] c"MiXeDlowerUPPER\00", align 16
@test__wcsupr_s.expectedString = internal constant [16 x i8] c"MIXEDLOWERUPPER\00", align 16
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Expected _wcsupr_s to fail with EINVAL, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected errno to be EINVAL, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Expected the buffer to be unchanged\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Expected _wcsupr_s to succeed, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Expected the first buffer character to be null\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Expected the string to be fully upper-case\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__wcsupr_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__wcsupr_s() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.mixedString, i64 0, i64 0))
  %5 = mul nsw i32 2, %4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @EBADF, align 4
  store i32 %9, i32* @errno, align 4
  %10 = call i32 @p_wcsupr_s(i8* null, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @errno, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EBADF, align 4
  store i32 %23, i32* @errno, align 4
  %24 = call i32 @ARRAY_SIZE(i8* %8)
  %25 = call i32 @p_wcsupr_s(i8* null, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EBADF, align 4
  store i32 %38, i32* @errno, align 4
  %39 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %39, align 16
  %40 = call i32 @p_wcsupr_s(i8* %8, i32 0)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @EINVAL, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds i8, i8* %8, i64 0
  %54 = load i8, i8* %53, align 16
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %59 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %59, align 16
  %60 = call i32 @p_wcsupr_s(i8* %8, i32 1)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds i8, i8* %8, i64 0
  %67 = load i8, i8* %66, align 16
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EBADF, align 4
  store i32 %72, i32* @errno, align 4
  %73 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 120, i8* %73, align 16
  %74 = call i32 @p_wcsupr_s(i8* %8, i32 0)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @EINVAL, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @errno, align 4
  %82 = load i32, i32* @EINVAL, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds i8, i8* %8, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @EBADF, align 4
  store i32 %93, i32* @errno, align 4
  %94 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 120, i8* %94, align 16
  %95 = call i32 @p_wcsupr_s(i8* %8, i32 1)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @EINVAL, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @errno, align 4
  %103 = load i32, i32* @EINVAL, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* @errno, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds i8, i8* %8, i64 0
  %109 = load i8, i8* %108, align 16
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %114 = call i32 @wcscpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.mixedString, i64 0, i64 0))
  %115 = load i32, i32* @EBADF, align 4
  store i32 %115, i32* @errno, align 4
  %116 = call i32 @p_wcsupr_s(i8* %8, i32 0)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @EINVAL, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %3, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @errno, align 4
  %124 = load i32, i32* @EINVAL, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* @errno, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = getelementptr inbounds i8, i8* %8, i64 0
  %130 = load i8, i8* %129, align 16
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %135 = call i32 @wcscpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.mixedString, i64 0, i64 0))
  %136 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.mixedString, i64 0, i64 0))
  %137 = call i32 @p_wcsupr_s(i8* %8, i32 %136)
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* %3, align 4
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %3, align 4
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = call i32 @wcscmp(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.expectedString, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %148 = call i32 @wcscpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.mixedString, i64 0, i64 0))
  %149 = load i32, i32* @EBADF, align 4
  store i32 %149, i32* @errno, align 4
  %150 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.mixedString, i64 0, i64 0))
  %151 = sub nsw i32 %150, 1
  %152 = call i32 @p_wcsupr_s(i8* %8, i32 %151)
  store i32 %152, i32* %3, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @EINVAL, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %3, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @errno, align 4
  %160 = load i32, i32* @EINVAL, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* @errno, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = getelementptr inbounds i8, i8* %8, i64 0
  %166 = load i8, i8* %165, align 16
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %171 = call i32 @wcscpy(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.mixedString, i64 0, i64 0))
  %172 = call i32 @ARRAY_SIZE(i8* %8)
  %173 = call i32 @p_wcsupr_s(i8* %8, i32 %172)
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* %3, align 4
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %3, align 4
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  %179 = call i32 @wcscmp(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test__wcsupr_s.expectedString, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %184)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @p_wcsupr_s(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @wcscpy(i8*, i8*) #1

declare dso_local i32 @wcscmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
