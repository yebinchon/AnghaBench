; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_file_modify.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_file_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [33 x i8] c"Internal error: file_find failed\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Dropping %s\0A\00", align 1
@DELETED_FLAG = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Undeleting %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Internal error: file_modify\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_modify(%struct.TYPE_6__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.TYPE_6__** @file_find(%struct.TYPE_6__** %7, i8* %8)
  store %struct.TYPE_6__** %9, %struct.TYPE_6__*** %5, align 8
  %10 = icmp ne %struct.TYPE_6__** %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %34 [
    i32 129, label %18
    i32 128, label %24
  ]

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @file_name(i8* %19)
  %21 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i8, i8* @DELETED_FLAG, align 1
  %23 = load i8*, i8** %4, align 8
  store i8 %22, i8* %23, align 1
  br label %36

24:                                               ; preds = %13
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %4, align 8
  store i8 %29, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @file_name(i8* %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %36

34:                                               ; preds = %13
  %35 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %24, %18
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %6, align 8
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @free(%struct.TYPE_6__* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %45, align 8
  ret void
}

declare dso_local %struct.TYPE_6__** @file_find(%struct.TYPE_6__**, i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @file_name(i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
