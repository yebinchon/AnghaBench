; ModuleID = '/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_sqlErrorCallback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_sqlErrorCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@SQLITE_ERROR = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SQLITE_SCHEMA = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(info) %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(errcode=%d) %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @sqlErrorCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlErrorCallback(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @UNUSED_PARAMETER(i8* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SQLITE_ERROR, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %49

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 255
  %19 = load i32, i32* @SQLITE_SCHEMA, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %49

25:                                               ; preds = %21, %16
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  %31 = load i32, i32* @SQLITE_BUSY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %49

37:                                               ; preds = %33, %28, %25
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load i32, i32* @SQLITE_NOTICE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @logMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %15, %24, %36, %45, %42
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32 @logMessage(i8*, i8*) #1

declare dso_local i32 @errorMessage(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
