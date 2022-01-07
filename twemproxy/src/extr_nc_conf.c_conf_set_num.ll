; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_set_num.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_set_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.command = type { i32 }
%struct.string = type { i32, i32 }

@CONF_UNSET_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"is a duplicate\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"is not a number\00", align 1
@CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @conf_set_num(%struct.conf* %0, %struct.command* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca %struct.command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.string*, align 8
  store %struct.conf* %0, %struct.conf** %5, align 8
  store %struct.command* %1, %struct.command** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load %struct.command*, %struct.command** %6, align 8
  %16 = getelementptr inbounds %struct.command, %struct.command* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CONF_UNSET_NUM, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %43

25:                                               ; preds = %3
  %26 = load %struct.conf*, %struct.conf** %5, align 8
  %27 = getelementptr inbounds %struct.conf, %struct.conf* %26, i32 0, i32 0
  %28 = call %struct.string* @array_top(i32* %27)
  store %struct.string* %28, %struct.string** %11, align 8
  %29 = load %struct.string*, %struct.string** %11, align 8
  %30 = getelementptr inbounds %struct.string, %struct.string* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.string*, %struct.string** %11, align 8
  %33 = getelementptr inbounds %struct.string, %struct.string* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nc_atoi(i32 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %43

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i8*, i8** @CONF_OK, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %39, %38, %24
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local %struct.string* @array_top(i32*) #1

declare dso_local i32 @nc_atoi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
