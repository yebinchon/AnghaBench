; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_RealGetWindowClass.c_Test_ClassAtoms.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_RealGetWindowClass.c_Test_ClassAtoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@ControlsList = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [19 x i8] c"No reference Atom\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"First Control Class Atom 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%S class atom did not match %x:%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"GetClassName returned incorrect name\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_ClassAtoms() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i64, align 8
  %5 = load i8**, i8*** @ControlsList, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i64 @GetClassInfoW(i32* null, i8* %7, %struct.TYPE_3__* %3)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %68

13:                                               ; preds = %0
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %63, %13
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 17
  br i1 %18, label %19, label %68

19:                                               ; preds = %16
  %20 = load i8**, i8*** @ControlsList, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @lstrcmpW(i8* %24, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %19
  %28 = load i8**, i8*** @ControlsList, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @GetClassInfoW(i32* null, i8* %32, %struct.TYPE_3__* %3)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %27
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %1, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i8**, i8*** @ControlsList, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %1, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %45, i64 %46, i64 %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** @ControlsList, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @lstrcmpW(i8* %50, i8* %55)
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %36, %27
  br label %62

62:                                               ; preds = %61, %19
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %1, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %1, align 8
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %16

68:                                               ; preds = %11, %16
  ret void
}

declare dso_local i64 @GetClassInfoW(i32*, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @trace(i8*, i64) #1

declare dso_local i64 @lstrcmpW(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
