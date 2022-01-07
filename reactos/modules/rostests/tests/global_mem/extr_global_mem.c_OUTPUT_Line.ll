; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_OUTPUT_Line.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_OUTPUT_Line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_BUFFER_SIZE = common dso_local global i32 0, align 4
@DISPLAY_COLUMNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"| %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OUTPUT_Line(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @LINE_BUFFER_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @DISPLAY_COLUMNS, align 4
  %11 = add nsw i32 %10, 2
  %12 = call i32 @memset(i8* %9, i32 0, i32 %11)
  %13 = load i32, i32* @DISPLAY_COLUMNS, align 4
  %14 = sub nsw i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %1
  %20 = load i32, i32* @DISPLAY_COLUMNS, align 4
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %37, %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DISPLAY_COLUMNS, align 4
  %25 = sub nsw i32 %24, 2
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %22

40:                                               ; preds = %35, %22
  %41 = getelementptr inbounds i8, i8* %9, i64 2
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @memcpy(i8* %41, i8* %42, i32 %44)
  %46 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 124, i8* %46, align 16
  %47 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 32, i8* %47, align 1
  %48 = call i64 @strlen(i8* %9)
  %49 = getelementptr inbounds i8, i8* %9, i64 %48
  store i8 10, i8* %49, align 1
  %50 = call i32 @printf(i8* %9)
  %51 = load i8*, i8** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  call void @OUTPUT_Line(i8* %55)
  br label %60

56:                                               ; preds = %1
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = call i32 @printf(i8* %9)
  br label %60

60:                                               ; preds = %56, %40
  %61 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
