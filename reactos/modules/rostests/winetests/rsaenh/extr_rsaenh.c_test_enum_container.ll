; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_enum_container.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_enum_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@hProv = common dso_local global i32 0, align 4
@PP_ENUMCONTAINERS = common dso_local global i32 0, align 4
@CRYPT_FIRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Expected dwBufferLen to be (MAX_PATH + 1), it was : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%d, %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_enum_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_enum_container() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = add nsw i32 %6, 2
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %5, align 8
  %12 = call i32 @SetLastError(i32 -559038737)
  %13 = load i32, i32* @hProv, align 4
  %14 = load i32, i32* @PP_ENUMCONTAINERS, align 4
  %15 = load i32, i32* @CRYPT_FIRST, align 4
  %16 = call i64 @CryptGetProvParam(i32 %13, i32 %14, i32* null, i32* %3, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %0
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = add nsw i32 %27, 1
  %29 = icmp ne i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @broken(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %25, %0
  %34 = phi i1 [ true, %0 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 (i32, i8*, i64, ...) @ok(i32 %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = mul nuw i64 4, %8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @hProv, align 4
  %42 = load i32, i32* @PP_ENUMCONTAINERS, align 4
  %43 = load i32, i32* @CRYPT_FIRST, align 4
  %44 = call i64 @CryptGetProvParam(i32 %41, i32 %42, i32* %10, i32* %3, i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load i32, i32* %3, align 4
  %49 = mul nuw i64 4, %8
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %48, %50
  br label %52

52:                                               ; preds = %47, %33
  %53 = phi i1 [ false, %33 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 (...) @GetLastError()
  %56 = call i32 (i32, i8*, i64, ...) @ok(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %66, %52
  %58 = bitcast i32* %10 to i8*
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* @TRUE, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %57
  %64 = mul nuw i64 4, %8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @hProv, align 4
  %68 = load i32, i32* @PP_ENUMCONTAINERS, align 4
  %69 = call i64 @CryptGetProvParam(i32 %67, i32 %68, i32* %10, i32* %3, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %57, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = call i64 (...) @GetLastError()
  %76 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %5, align 8
  %82 = call i64 (...) @GetLastError()
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %84)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @CryptGetProvParam(i32, i32, i32*, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
