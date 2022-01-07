; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lempar.c_yyTraceShift.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lempar.c_yyTraceShift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@yyTraceFILE = common dso_local global i64 0, align 8
@YYNSTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s%s '%s', go to state %d\0A\00", align 1
@yyTracePrompt = common dso_local global i8* null, align 8
@yyTokenName = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s%s '%s', pending reduce %d\0A\00", align 1
@YY_MIN_REDUCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i8*)* @yyTraceShift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yyTraceShift(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* @yyTraceFILE, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @YYNSTATE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i64, i64* @yyTraceFILE, align 8
  %15 = load i8*, i8** @yyTracePrompt, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32*, i32** @yyTokenName, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @fprintf(i64 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i32 %24, i32 %25)
  br label %43

27:                                               ; preds = %9
  %28 = load i64, i64* @yyTraceFILE, align 8
  %29 = load i8*, i8** @yyTracePrompt, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32*, i32** @yyTokenName, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @YY_MIN_REDUCE, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @fprintf(i64 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %27, %13
  br label %44

44:                                               ; preds = %43, %3
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
