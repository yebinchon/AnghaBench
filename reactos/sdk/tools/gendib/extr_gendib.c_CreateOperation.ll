; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateOperation.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateOperation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"*DestPtr\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(USHORT) \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"*((PUSHORT) DestPtr)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"(UCHAR) \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"*((PUCHAR) DestPtr)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@ROPCODE_GENERIC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"%sDIB_DoRop(BltInfo->Rop4, %s, Source, Pattern)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%sSource\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%sPattern\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*, i32, i32)* @CreateOperation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateOperation(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @MARK(i32* %14)
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 32, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 (i32*, i8*, ...) @Output(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %27)
  %29 = load i64, i64* @ROPCODE_GENERIC, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 (i32*, i8*, ...) @Output(i32* %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %36, i8* %37)
  br label %74

39:                                               ; preds = %25
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %13, align 8
  br label %43

43:                                               ; preds = %70, %39
  %44 = load i8*, i8** %13, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 0, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load i8*, i8** %13, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %64 [
    i32 83, label %52
    i32 80, label %56
    i32 68, label %60
  ]

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (i32*, i8*, ...) @Output(i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  br label %70

56:                                               ; preds = %48
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (i32*, i8*, ...) @Output(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %58)
  br label %70

60:                                               ; preds = %48
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 (i32*, i8*, ...) @Output(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %62)
  br label %70

64:                                               ; preds = %48
  %65 = load i32*, i32** %6, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 (i32*, i8*, ...) @Output(i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %64, %60, %56, %52
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %13, align 8
  br label %43

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %73, %34
  ret void
}

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @Output(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
