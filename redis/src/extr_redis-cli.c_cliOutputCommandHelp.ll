; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliOutputCommandHelp.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliOutputCommandHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commandHelp = type { i8*, i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [29 x i8] c"\0D\0A  \1B[1m%s\1B[0m \1B[90m%s\1B[0m\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"  \1B[33msummary:\1B[0m %s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"  \1B[33msince:\1B[0m %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"  \1B[33mgroup:\1B[0m %s\0D\0A\00", align 1
@commandGroups = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commandHelp*, i32)* @cliOutputCommandHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cliOutputCommandHelp(%struct.commandHelp* %0, i32 %1) #0 {
  %3 = alloca %struct.commandHelp*, align 8
  %4 = alloca i32, align 4
  store %struct.commandHelp* %0, %struct.commandHelp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.commandHelp*, %struct.commandHelp** %3, align 8
  %6 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.commandHelp*, %struct.commandHelp** %3, align 8
  %9 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %10)
  %12 = load %struct.commandHelp*, %struct.commandHelp** %3, align 8
  %13 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load %struct.commandHelp*, %struct.commandHelp** %3, align 8
  %17 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i8**, i8*** @commandGroups, align 8
  %24 = load %struct.commandHelp*, %struct.commandHelp** %3, align 8
  %25 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
