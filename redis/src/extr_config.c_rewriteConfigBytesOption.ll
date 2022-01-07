; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigBytesOption.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigBytesOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rewriteConfigState = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigBytesOption(%struct.rewriteConfigState* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rewriteConfigState*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @rewriteConfigFormatMemory(i8* %16, i32 64, i64 %17)
  %19 = call i32 (...) @sdsempty()
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %22 = call i32 @sdscatprintf(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %23, i8* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @rewriteConfigFormatMemory(i8*, i32, i64) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
