; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_acls.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_REVISION = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"InitializeAcl is not implemented\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [103 x i8] c"InitializeAcl with too small a buffer should have failed with ERROR_INSUFFICIENT_BUFFER instead of %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [101 x i8] c"InitializeAcl with too large a buffer should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@ACL_REVISION1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [92 x i8] c"InitializeAcl(ACL_REVISION1) should have failed with ERROR_INVALID_PARAMETER instead of %d\0A\00", align 1
@ACL_REVISION2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"InitializeAcl(ACL_REVISION2) failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"IsValidAcl failed with error %d\0A\00", align 1
@ACL_REVISION3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"InitializeAcl(ACL_REVISION3) failed with error %d\0A\00", align 1
@ACL_REVISION4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"InitializeAcl(ACL_REVISION4) failed with error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"ACL_REVISION4 is not implemented on NT4\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"InitializeAcl(-1) failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_acls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_acls() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* %2, align 4
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @ACL_REVISION, align 4
  %9 = call i32 @InitializeAcl(i32 %7, i32 3, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %0
  %13 = call i64 (...) @GetLastError()
  %14 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %115

18:                                               ; preds = %12, %0
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = call i64 (...) @GetLastError()
  %23 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 (...) @GetLastError()
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = call i32 @SetLastError(i32 -559038737)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @ACL_REVISION, align 4
  %33 = call i32 @InitializeAcl(i32 %31, i32 -1, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = call i64 (...) @GetLastError()
  %38 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %25
  %41 = phi i1 [ false, %25 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 (...) @GetLastError()
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @ACL_REVISION1, align 4
  %48 = call i32 @InitializeAcl(i32 %46, i32 256, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = call i64 (...) @GetLastError()
  %53 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %51, %40
  %56 = phi i1 [ false, %40 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @ACL_REVISION2, align 4
  %62 = call i32 @InitializeAcl(i32 %60, i32 256, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i64 (...) @GetLastError()
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @IsValidAcl(i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i64 (...) @GetLastError()
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @ACL_REVISION3, align 4
  %73 = call i32 @InitializeAcl(i32 %71, i32 256, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i64 (...) @GetLastError()
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @IsValidAcl(i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i64 (...) @GetLastError()
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %80)
  %82 = call i32 @SetLastError(i32 -559038737)
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @ACL_REVISION4, align 4
  %85 = call i32 @InitializeAcl(i32 %83, i32 256, i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = call i64 (...) @GetLastError()
  %87 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %55
  %90 = load i32, i32* %3, align 4
  %91 = call i64 (...) @GetLastError()
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @IsValidAcl(i32 %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i64 (...) @GetLastError()
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %96)
  br label %100

98:                                               ; preds = %55
  %99 = call i32 @win_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %89
  %101 = call i32 @SetLastError(i32 -559038737)
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @InitializeAcl(i32 %102, i32 256, i32 -1)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = call i64 (...) @GetLastError()
  %108 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi i1 [ false, %100 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = call i64 (...) @GetLastError()
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %110, %16
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @InitializeAcl(i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IsValidAcl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
