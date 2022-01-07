; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_loader.c_should_load_on_create_extension.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_loader.c_should_load_on_create_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@EXTENSION_NAME = common dso_local global i32 0, align 4
@loaded = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"extension \22%s\22 has already been loaded with another version\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"The loaded version is \22%s\22.\00", align 1
@soversion = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [112 x i8] c"Start a new session and execute CREATE EXTENSION as the first command. Make sure to pass the \22-X\22 flag to psql.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @should_load_on_create_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_load_on_create_extension(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EXTENSION_NAME, align 4
  %12 = call i64 @strcmp(i32 %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load i32, i32* @loaded, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %43

22:                                               ; preds = %18
  %23 = call i64 (...) @extension_exists()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %43

31:                                               ; preds = %25, %22
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @soversion, align 4
  %40 = call i32 @errdetail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @errhint(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %32, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %31, %30, %21, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @extension_exists(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
