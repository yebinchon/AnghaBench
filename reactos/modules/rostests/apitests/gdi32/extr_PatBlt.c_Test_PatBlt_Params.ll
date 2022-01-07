; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_PatBlt.c_Test_PatBlt_Params.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_PatBlt.c_Test_PatBlt_Params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hdcTarget = common dso_local global i64 0, align 8
@PATCOPY = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"index %ld failed, but should succeed\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"index %ld succeeded, but should fail\0A\00", align 1
@PATINVERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_PatBlt_Params() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i64, i64* @hdcTarget, align 8
  %6 = load i32, i32* @PATCOPY, align 4
  %7 = and i32 %6, 16711680
  %8 = call i32 @PatBlt(i64 %5, i32 0, i32 0, i32 1, i32 1, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @ok_long(i32 %9, i32 1)
  %11 = load i64, i64* @hdcTarget, align 8
  %12 = load i32, i32* @PATCOPY, align 4
  %13 = and i32 %12, 16711680
  %14 = or i32 %13, -1426010641
  %15 = call i32 @PatBlt(i64 %11, i32 0, i32 0, i32 1, i32 1, i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @ok_long(i32 %16, i32 1)
  %18 = call i32 @SetLastError(i32 0)
  %19 = load i64, i64* @hdcTarget, align 8
  %20 = load i32, i32* @SRCCOPY, align 4
  %21 = call i32 @PatBlt(i64 %19, i32 0, i32 0, i32 1, i32 1, i32 %20)
  %22 = call i32 @ok_long(i32 %21, i32 0)
  %23 = call i32 @ok_err(i32 0)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %93, %0
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %96

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = shl i32 %28, 16
  store i32 %29, i32* %3, align 4
  %30 = load i64, i64* @hdcTarget, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @PatBlt(i64 %30, i32 0, i32 0, i32 1, i32 1, i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %80, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %80, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %80, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 15
  br i1 %43, label %80, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 80
  br i1 %46, label %80, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 85
  br i1 %49, label %80, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 90
  br i1 %52, label %80, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = icmp eq i32 %54, 95
  br i1 %55, label %80, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %57, 160
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 165
  br i1 %61, label %80, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %63, 170
  br i1 %64, label %80, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 175
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %2, align 4
  %70 = icmp eq i32 %69, 240
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %72, 245
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %75, 250
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %2, align 4
  %79 = icmp eq i32 %78, 255
  br i1 %79, label %80, label %86

80:                                               ; preds = %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %27
  %81 = load i32, i32* %1, align 4
  %82 = icmp eq i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %2, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %92

86:                                               ; preds = %77
  %87 = load i32, i32* %1, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %2, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %24

96:                                               ; preds = %24
  %97 = load i64, i64* @hdcTarget, align 8
  %98 = load i32, i32* @PATCOPY, align 4
  %99 = load i32, i32* @PATINVERT, align 4
  %100 = call i32 @MAKEROP4(i32 %98, i32 %99)
  %101 = call i32 @PatBlt(i64 %97, i32 0, i32 0, i32 1, i32 1, i32 %100)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @ok_long(i32 %102, i32 1)
  %104 = load i64, i64* @hdcTarget, align 8
  %105 = load i32, i32* @PATCOPY, align 4
  %106 = load i32, i32* @SRCCOPY, align 4
  %107 = call i32 @MAKEROP4(i32 %105, i32 %106)
  %108 = call i32 @PatBlt(i64 %104, i32 0, i32 0, i32 1, i32 1, i32 %107)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* %1, align 4
  %110 = call i32 @ok_long(i32 %109, i32 1)
  %111 = load i64, i64* @hdcTarget, align 8
  %112 = load i32, i32* @SRCCOPY, align 4
  %113 = load i32, i32* @PATCOPY, align 4
  %114 = call i32 @MAKEROP4(i32 %112, i32 %113)
  %115 = call i32 @PatBlt(i64 %111, i32 0, i32 0, i32 1, i32 1, i32 %114)
  store i32 %115, i32* %1, align 4
  %116 = load i32, i32* %1, align 4
  %117 = call i32 @ok_long(i32 %116, i32 0)
  %118 = call i64 @CreateICA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* null)
  store i64 %118, i64* %4, align 8
  %119 = load i64, i64* %4, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32 @SetLastError(i32 0)
  %124 = load i64, i64* %4, align 8
  %125 = load i32, i32* @PATCOPY, align 4
  %126 = call i32 @PatBlt(i64 %124, i32 0, i32 0, i32 1, i32 1, i32 %125)
  %127 = call i32 @ok_long(i32 %126, i32 1)
  %128 = call i32 @ok_err(i32 0)
  %129 = load i64, i64* %4, align 8
  %130 = call i32 @DeleteDC(i64 %129)
  %131 = call i64 @CreateCompatibleDC(i32* null)
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i64, i64* %4, align 8
  %137 = load i32, i32* @PATCOPY, align 4
  %138 = call i32 @PatBlt(i64 %136, i32 0, i32 0, i32 1, i32 1, i32 %137)
  %139 = call i32 @ok_long(i32 %138, i32 1)
  %140 = call i32 @ok_err(i32 0)
  %141 = load i64, i64* %4, align 8
  %142 = call i32 @DeleteDC(i64 %141)
  ret void
}

declare dso_local i32 @PatBlt(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_err(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @MAKEROP4(i32, i32) #1

declare dso_local i64 @CreateICA(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @DeleteDC(i64) #1

declare dso_local i64 @CreateCompatibleDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
