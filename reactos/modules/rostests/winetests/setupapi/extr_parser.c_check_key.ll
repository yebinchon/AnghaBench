; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_check_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"missing key %s\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"last error set to %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bad key %s/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @check_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_key(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @get_string_field(i32* %7, i32 0)
  store i8* %8, i8** %5, align 8
  %9 = call i8* (...) @GetLastError()
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** @ERROR_INVALID_PARAMETER, align 8
  %24 = icmp eq i8* %22, %23
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi i1 [ true, %12 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i32, i8*, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %45

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcmp(i8* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i32, i8*, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %30, %25
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i8* @get_string_field(i32*, i32) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
