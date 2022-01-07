; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetLogicalDriveStringsA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetLogicalDriveStringsA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"GetLogicalDriveStringsA not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"size2 = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"buf changed\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"device name '%c' is not uppercase\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"ptr[1] = %c, expected ':'\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ptr[2] = %c expected '\\'\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"ptr[3] = %c expected nullbyte\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"buf[size2] is not nullbyte\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetLogicalDriveStringsA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetLogicalDriveStringsA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = call i32 (i32, i8*, ...) @ok(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @pGetLogicalDriveStringsA(i32 0, i8* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = srem i32 %7, 4
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i32, i32* %1, align 4
  %15 = call i8* @HeapAlloc(i32 %13, i32 0, i32 %14)
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @pGetLogicalDriveStringsA(i32 2, i8* %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* %1, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @pGetLogicalDriveStringsA(i32 %31, i8* %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %1, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %3, align 8
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %99, %0
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = icmp ult i8* %43, %47
  br i1 %48, label %49, label %102

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 65, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 90
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ false, %49 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 58
  %71 = zext i1 %70 to i32
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 92
  %82 = zext i1 %81 to i32
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %59
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  store i8* %101, i8** %4, align 8
  br label %42

102:                                              ; preds = %42
  %103 = load i8*, i8** %4, align 8
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %109 = call i32 (...) @GetProcessHeap()
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @HeapFree(i32 %109, i32 0, i8* %110)
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pGetLogicalDriveStringsA(i32, i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
