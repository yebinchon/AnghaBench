; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/pendmoves/extr_pendmoves.c_DisplayPendingOps.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/pendmoves/extr_pendmoves.c_DisplayPendingOps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Source: %s\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"\09 *** Source file lookup error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Target: %s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @DisplayPendingOps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisplayPendingOps(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %18 = load i64*, i64** %3, align 8
  store i64* %18, i64** %13, align 8
  br label %19

19:                                               ; preds = %113, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %122

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %39, %23
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i64*, i64** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %29, %25
  %37 = phi i1 [ false, %25 ], [ %35, %29 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %25

42:                                               ; preds = %36
  %43 = load i64*, i64** %13, align 8
  %44 = call i64 @_tcslen(i64* %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i64*, i64** %13, align 8
  %47 = call i64* @BeautifyPath(i64* %46, i32* %9)
  store i64* %47, i64** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %122

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i64*, i64** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64* %58, i64** %13, align 8
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %74, %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64*, i64** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %64, %60
  %72 = phi i1 [ false, %60 ], [ %70, %64 ]
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %60

77:                                               ; preds = %71
  %78 = load i64*, i64** %13, align 8
  %79 = call i64 @_tcslen(i64* %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i64*, i64** %13, align 8
  %82 = call i64* @BeautifyPath(i64* %81, i32* %10)
  store i64* %82, i64** %12, align 8
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = load i64*, i64** %3, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64* %89, i64** %13, align 8
  %90 = load i32, i32* @stdout, align 4
  %91 = call i64* @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %92 = load i64*, i64** %11, align 8
  %93 = call i32 @_ftprintf(i32 %90, i64* %91, i64* %92)
  %94 = load i64*, i64** %11, align 8
  %95 = call i64 @GetFileAttributes(i64* %94)
  %96 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %77
  %99 = load i32, i32* @stdout, align 4
  %100 = call i64* @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i64* (...) @GetLastError()
  %102 = call i32 @_ftprintf(i32 %99, i64* %100, i64* %101)
  br label %103

103:                                              ; preds = %98, %77
  %104 = load i32, i32* @stdout, align 4
  %105 = call i64* @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i64*, i64** %12, align 8
  %107 = call i64 @_tcslen(i64* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i64*, i64** %12, align 8
  br label %113

111:                                              ; preds = %103
  %112 = call i64* @_T(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i64* [ %110, %109 ], [ %112, %111 ]
  %115 = call i32 @_ftprintf(i32 %104, i64* %105, i64* %114)
  %116 = load i64*, i64** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64* %119, i64** %13, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %19

122:                                              ; preds = %50, %19
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i64 @_tcslen(i64*) #1

declare dso_local i64* @BeautifyPath(i64*, i32*) #1

declare dso_local i32 @_ftprintf(i32, i64*, i64*) #1

declare dso_local i64* @_T(i8*) #1

declare dso_local i64 @GetFileAttributes(i64*) #1

declare dso_local i64* @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
