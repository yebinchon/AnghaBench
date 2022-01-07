; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_environment.c_AppendUserEnvironmentVariable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_environment.c_AppendUserEnvironmentVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i64 }

@LPTR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 59, i32 0], align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"RtlSetEnvironmentVariable() failed (Status %lx)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @AppendUserEnvironmentVariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AppendUserEnvironmentVariable(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %9, i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 4096, i32* %14, align 8
  %15 = load i32, i32* @LPTR, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @LocalAlloc(i32 %15, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %3
  %26 = load i32, i32* @UNICODE_NULL, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %26, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RtlQueryEnvironmentVariable_U(i32 %31, %struct.TYPE_8__* %9, %struct.TYPE_8__* %10)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @NT_SUCCESS(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 @RtlAppendUnicodeToString(%struct.TYPE_8__* %10, i8* bitcast ([2 x i32]* @.str to i8*))
  br label %38

38:                                               ; preds = %36, %25
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @RtlAppendUnicodeToString(%struct.TYPE_8__* %10, i8* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @RtlSetEnvironmentVariable(i32* %41, %struct.TYPE_8__* %9, %struct.TYPE_8__* %10)
  store i32 %42, i32* %8, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @LocalFree(i32* %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @NT_SUCCESS(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %38
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %49, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlQueryEnvironmentVariable_U(i32, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlAppendUnicodeToString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @RtlSetEnvironmentVariable(i32*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
