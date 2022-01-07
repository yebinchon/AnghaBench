; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_conf-parser.c_config_parse_bool.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_conf-parser.c_config_parse_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to parse boolean value%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", ignoring\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_bool(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %25 = load i8*, i8** %20, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = load i32, i32* %18, align 4
  store i32 %27, i32* %24, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %17, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %19, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %20, align 8
  %35 = call i32 @assert(i8* %34)
  %36 = load i8*, i8** %19, align 8
  %37 = call i32 @parse_boolean(i8* %36)
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %22, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %10
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %24, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i8*, i8** %19, align 8
  %51 = call i32 @log_syntax(i8* %41, i32 %42, i8* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50)
  %52 = load i32, i32* %24, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load i32, i32* @ENOEXEC, align 4
  %56 = sub nsw i32 0, %55
  br label %58

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  store i32 %59, i32* %11, align 4
  br label %63

60:                                               ; preds = %10
  %61 = load i32, i32* %22, align 4
  %62 = load i32*, i32** %23, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %58
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
