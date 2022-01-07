; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_open.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, i32 }

@CLIENT_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can't use /dev/tty\00", align 1
@CLIENT_TERMINAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"not a terminal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_client_open(%struct.client* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca i8**, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %struct.client*, %struct.client** %4, align 8
  %7 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CLIENT_CONTROL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.client*, %struct.client** %4, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call i8* @xstrdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8**, i8*** %5, align 8
  store i8* %20, i8** %21, align 8
  store i32 -1, i32* %3, align 4
  br label %40

22:                                               ; preds = %13
  %23 = load %struct.client*, %struct.client** %4, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CLIENT_TERMINAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = call i8* @xstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i8**, i8*** %5, align 8
  store i8* %30, i8** %31, align 8
  store i32 -1, i32* %3, align 4
  br label %40

32:                                               ; preds = %22
  %33 = load %struct.client*, %struct.client** %4, align 8
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 1
  %35 = load i8**, i8*** %5, align 8
  %36 = call i64 @tty_open(i32* %34, i8** %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %29, %19, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @tty_open(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
