; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_set_string.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.command = type { i32 }
%struct.string = type { i64 }

@CONF_UNSET_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"is a duplicate\00", align 1
@NC_OK = common dso_local global i64 0, align 8
@CONF_ERROR = common dso_local global i8* null, align 8
@CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @conf_set_string(%struct.conf* %0, %struct.command* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca %struct.command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.string*, align 8
  %11 = alloca %struct.string*, align 8
  store %struct.conf* %0, %struct.conf** %5, align 8
  store %struct.command* %1, %struct.command** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load %struct.command*, %struct.command** %6, align 8
  %16 = getelementptr inbounds %struct.command, %struct.command* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = bitcast i32* %19 to %struct.string*
  store %struct.string* %20, %struct.string** %10, align 8
  %21 = load %struct.string*, %struct.string** %10, align 8
  %22 = getelementptr inbounds %struct.string, %struct.string* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CONF_UNSET_PTR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.conf*, %struct.conf** %5, align 8
  %29 = getelementptr inbounds %struct.conf, %struct.conf* %28, i32 0, i32 0
  %30 = call %struct.string* @array_top(i32* %29)
  store %struct.string* %30, %struct.string** %11, align 8
  %31 = load %struct.string*, %struct.string** %10, align 8
  %32 = load %struct.string*, %struct.string** %11, align 8
  %33 = call i64 @string_duplicate(%struct.string* %31, %struct.string* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @NC_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i8*, i8** @CONF_ERROR, align 8
  store i8* %38, i8** %4, align 8
  br label %41

39:                                               ; preds = %27
  %40 = load i8*, i8** @CONF_OK, align 8
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %39, %37, %26
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local %struct.string* @array_top(i32*) #1

declare dso_local i64 @string_duplicate(%struct.string*, %struct.string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
