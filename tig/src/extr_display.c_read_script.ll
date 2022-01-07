; ModuleID = '/home/carl/AnghaBench/tig/src/extr_display.c_read_script.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_display.c_read_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i8* }
%struct.key = type { i32 }

@read_script.input_buffer = internal global %struct.buffer zeroinitializer, align 8
@read_script.line = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<Enter>\00", align 1
@script_io = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Error reading script: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*)* @read_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_script(%struct.key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key*, align 8
  %4 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  br label %5

5:                                                ; preds = %43, %38, %1
  %6 = load i8*, i8** @read_script.line, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i8*, i8** @read_script.line, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i1 [ true, %5 ], [ %12, %8 ]
  br i1 %14, label %15, label %44

15:                                               ; preds = %13
  %16 = load i8*, i8** getelementptr inbounds (%struct.buffer, %struct.buffer* @read_script.input_buffer, i32 0, i32 0), align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.buffer, %struct.buffer* @read_script.input_buffer, i32 0, i32 0), align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 58
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** @read_script.line, align 8
  %24 = call i32 @memset(%struct.buffer* @read_script.input_buffer, i32 0, i32 8)
  br label %43

25:                                               ; preds = %18, %15
  %26 = call i32 @io_get(i32* @script_io, %struct.buffer* @read_script.input_buffer, i8 signext 10, i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 @io_done(i32* @script_io)
  store i32 0, i32* %2, align 4
  br label %55

30:                                               ; preds = %25
  %31 = load i8*, i8** getelementptr inbounds (%struct.buffer, %struct.buffer* @read_script.input_buffer, i32 0, i32 0), align 8
  %32 = load i8*, i8** getelementptr inbounds (%struct.buffer, %struct.buffer* @read_script.input_buffer, i32 0, i32 0), align 8
  %33 = call i64 @strspn(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %5

39:                                               ; preds = %30
  %40 = load i8*, i8** getelementptr inbounds (%struct.buffer, %struct.buffer* @read_script.input_buffer, i32 0, i32 0), align 8
  store i8* %40, i8** @read_script.line, align 8
  br label %41

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %23
  br label %5

44:                                               ; preds = %13
  %45 = load %struct.key*, %struct.key** %3, align 8
  %46 = call i32 @get_key_value(i8** @read_script.line, %struct.key* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @get_status_message(i32 %51)
  %53 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %44
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @memset(%struct.buffer*, i32, i32) #1

declare dso_local i32 @io_get(i32*, %struct.buffer*, i8 signext, i32) #1

declare dso_local i32 @io_done(i32*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @get_key_value(i8**, %struct.key*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @get_status_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
