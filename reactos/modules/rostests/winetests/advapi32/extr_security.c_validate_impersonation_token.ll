; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_validate_impersonation_token.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_validate_impersonation_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TokenType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"GetTokenInformation error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"GetTokenInformation should return required buffer length\0A\00", align 1
@TokenPrimary = common dso_local global i32 0, align 4
@TokenImpersonation = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"expected TokenPrimary or TokenImpersonation, got %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TokenImpersonationLevel = common dso_local global i32 0, align 4
@SecurityImpersonation = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"expected SecurityImpersonation, got %d\0A\00", align 1
@TokenDefaultDacl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"GetTokenInformation should fail\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"expected ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"GetTokenInformation returned empty default DACL\0A\00", align 1
@TokenOwner = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"GetTokenInformation returned empty token owner\0A\00", align 1
@TokenPrimaryGroup = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"GetTokenInformation returned empty token primary group\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @validate_impersonation_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_impersonation_token(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 -559038737, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TokenType, align 4
  %13 = call i32 @GetTokenInformation(i32 %11, i32 %12, i32* %8, i32 4, i32* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TokenPrimary, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @TokenImpersonation, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i1 [ true, %2 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @TokenImpersonation, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  br label %133

41:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  %42 = call i32 @SetLastError(i32 -559038737)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TokenImpersonationLevel, align 4
  %45 = call i32 @GetTokenInformation(i32 %43, i32 %44, i32* %9, i32 4, i32* %7)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %50, 4
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @SecurityImpersonation, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  store i32 -559038737, i32* %7, align 4
  %60 = call i32 @SetLastError(i32 -559038737)
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @TokenDefaultDacl, align 4
  %63 = call i32 @GetTokenInformation(i32 %61, i32 %62, i32* null, i32 0, i32* %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 (...) @GetLastError()
  %70 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 (...) @GetLastError()
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, -559038737
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ugt i64 %80, 4
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  store i32 -559038737, i32* %7, align 4
  %84 = call i32 @SetLastError(i32 -559038737)
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @TokenOwner, align 4
  %87 = call i32 @GetTokenInformation(i32 %85, i32 %86, i32* null, i32 0, i32* %7)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 (...) @GetLastError()
  %94 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, -559038737
  %101 = zext i1 %100 to i32
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ugt i64 %104, 4
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  store i32 -559038737, i32* %7, align 4
  %108 = call i32 @SetLastError(i32 -559038737)
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @TokenPrimaryGroup, align 4
  %111 = call i32 @GetTokenInformation(i32 %109, i32 %110, i32* null, i32 0, i32* %7)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %117 = call i32 (...) @GetLastError()
  %118 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 (...) @GetLastError()
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, -559038737
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ugt i64 %128, 4
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %41, %39
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetTokenInformation(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
