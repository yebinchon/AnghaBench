; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetLogicalDriveStringsW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetLogicalDriveStringsW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"GetLogicalDriveStringsW not available\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"GetLogicalDriveStringsW not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"size2 = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"buf changed\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"device name '%c' is not uppercase\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ptr[1] = %c, expected ':'\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ptr[2] = %c expected '\\'\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"ptr[3] = %c expected nullbyte\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"buf[size2] is not nullbyte\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetLogicalDriveStringsW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetLogicalDriveStringsW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = call i32 (i32, i8*, ...) @ok(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = call i32 @pGetLogicalDriveStringsW(i32 0, i8* null)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = call i64 (...) @GetLastError()
  %12 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @win_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %125

16:                                               ; preds = %10, %0
  %17 = load i32, i32* %1, align 4
  %18 = srem i32 %17, 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8* @HeapAlloc(i32 %23, i32 0, i32 %27)
  store i8* %28, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @pGetLogicalDriveStringsW(i32 2, i8* %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* %1, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @pGetLogicalDriveStringsW(i32 %44, i8* %45)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %1, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %3, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %112, %16
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = icmp ult i8* %56, %60
  br i1 %61, label %62, label %115

62:                                               ; preds = %55
  %63 = load i8*, i8** %4, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 65, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 90
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = load i8*, i8** %4, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 58
  %84 = zext i1 %83 to i32
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 92
  %95 = zext i1 %94 to i32
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = icmp ne i8 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %72
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  store i8* %114, i8** %4, align 8
  br label %55

115:                                              ; preds = %55
  %116 = load i8*, i8** %4, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %122 = call i32 (...) @GetProcessHeap()
  %123 = load i8*, i8** %3, align 8
  %124 = call i32 @HeapFree(i32 %122, i32 0, i8* %123)
  br label %125

125:                                              ; preds = %115, %14
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pGetLogicalDriveStringsW(i32, i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
