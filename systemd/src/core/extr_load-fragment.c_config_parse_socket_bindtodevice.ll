; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_socket_bindtodevice.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_socket_bindtodevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid interface name, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_socket_bindtodevice(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca %struct.TYPE_2__*, align 8
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
  %23 = load i8*, i8** %20, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %22, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i8*, i8** %17, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %19, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %20, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = call i64 @isempty(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %10
  %37 = load i8*, i8** %19, align 8
  %38 = call i64 @streq(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36, %10
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mfree(i32 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %11, align 4
  br label %67

47:                                               ; preds = %36
  %48 = load i8*, i8** %19, align 8
  %49 = call i32 @ifname_valid(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i8*, i8** %19, align 8
  %57 = call i32 @log_syntax(i8* %52, i32 %53, i8* %54, i32 %55, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store i32 0, i32* %11, align 4
  br label %67

58:                                               ; preds = %47
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %19, align 8
  %62 = call i64 @free_and_strdup(i32* %60, i8* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 (...) @log_oom()
  store i32 %65, i32* %11, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %64, %51, %40
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @mfree(i32) #1

declare dso_local i32 @ifname_valid(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
