; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_util.c_argError.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_util.c_argError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Entry = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"unrecognized %s \22%s\22: must be \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"or %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*)* @argError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @argError(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.Entry*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 (i8*, i8*, ...) @testPrintError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.Entry*
  store %struct.Entry* %15, %struct.Entry** %9, align 8
  br label %16

16:                                               ; preds = %31, %4
  %17 = load %struct.Entry*, %struct.Entry** %9, align 8
  %18 = getelementptr inbounds %struct.Entry, %struct.Entry* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 (i8*, i8*, ...) @testPrintError(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.Entry*, %struct.Entry** %9, align 8
  %29 = getelementptr inbounds %struct.Entry, %struct.Entry* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %27
  %32 = load %struct.Entry*, %struct.Entry** %9, align 8
  %33 = bitcast %struct.Entry* %32 to i8*
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to %struct.Entry*
  store %struct.Entry* %37, %struct.Entry** %9, align 8
  br label %16

38:                                               ; preds = %16
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 (i8*, i8*, ...) @testPrintError(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  ret void
}

declare dso_local i32 @testPrintError(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
