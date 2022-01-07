; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_set_bool.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_set_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.command = type { i32 }
%struct.string = type { i32 }

@CONF_UNSET_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"is a duplicate\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"is not \22true\22 or \22false\22\00", align 1
@CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @conf_set_bool(%struct.conf* %0, %struct.command* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca %struct.command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.string*, align 8
  %11 = alloca %struct.string, align 4
  %12 = alloca %struct.string, align 4
  store %struct.conf* %0, %struct.conf** %5, align 8
  store %struct.command* %1, %struct.command** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.command*, %struct.command** %6, align 8
  %17 = getelementptr inbounds %struct.command, %struct.command* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CONF_UNSET_NUM, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %47

26:                                               ; preds = %3
  %27 = load %struct.conf*, %struct.conf** %5, align 8
  %28 = getelementptr inbounds %struct.conf, %struct.conf* %27, i32 0, i32 0
  %29 = call %struct.string* @array_top(i32* %28)
  store %struct.string* %29, %struct.string** %10, align 8
  %30 = call i32 @string_set_text(%struct.string* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @string_set_text(%struct.string* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.string*, %struct.string** %10, align 8
  %33 = call i64 @string_compare(%struct.string* %32, %struct.string* %11)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32*, i32** %9, align 8
  store i32 1, i32* %36, align 4
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.string*, %struct.string** %10, align 8
  %39 = call i64 @string_compare(%struct.string* %38, %struct.string* %12)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  br label %44

43:                                               ; preds = %37
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %47

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i8*, i8** @CONF_OK, align 8
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %45, %43, %25
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local %struct.string* @array_top(i32*) #1

declare dso_local i32 @string_set_text(%struct.string*, i8*) #1

declare dso_local i64 @string_compare(%struct.string*, %struct.string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
