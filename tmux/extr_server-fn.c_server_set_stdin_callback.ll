; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-fn.c_server_set_stdin_callback.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-fn.c_server_set_stdin_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, void (%struct.client*, i32, i8*)*, i8*, i32, i64, i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"no client with stdin\00", align 1
@CLIENT_TERMINAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"stdin is a tty\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"stdin is in use\00", align 1
@MSG_STDIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_set_stdin_callback(%struct.client* %0, void (%struct.client*, i32, i8*)* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.client*, align 8
  %7 = alloca void (%struct.client*, i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store %struct.client* %0, %struct.client** %6, align 8
  store void (%struct.client*, i32, i8*)* %1, void (%struct.client*, i32, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %10 = load %struct.client*, %struct.client** %6, align 8
  %11 = icmp eq %struct.client* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.client*, %struct.client** %6, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %4
  %18 = call i8* @xstrdup(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i8**, i8*** %9, align 8
  store i8* %18, i8** %19, align 8
  store i32 -1, i32* %5, align 4
  br label %67

20:                                               ; preds = %12
  %21 = load %struct.client*, %struct.client** %6, align 8
  %22 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CLIENT_TERMINAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = call i8* @xstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8**, i8*** %9, align 8
  store i8* %28, i8** %29, align 8
  store i32 -1, i32* %5, align 4
  br label %67

30:                                               ; preds = %20
  %31 = load %struct.client*, %struct.client** %6, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 1
  %33 = load void (%struct.client*, i32, i8*)*, void (%struct.client*, i32, i8*)** %32, align 8
  %34 = icmp ne void (%struct.client*, i32, i8*)* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i8* @xstrdup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8**, i8*** %9, align 8
  store i8* %36, i8** %37, align 8
  store i32 -1, i32* %5, align 4
  br label %67

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.client*, %struct.client** %6, align 8
  %41 = getelementptr inbounds %struct.client, %struct.client* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load void (%struct.client*, i32, i8*)*, void (%struct.client*, i32, i8*)** %7, align 8
  %43 = load %struct.client*, %struct.client** %6, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 1
  store void (%struct.client*, i32, i8*)* %42, void (%struct.client*, i32, i8*)** %44, align 8
  %45 = load %struct.client*, %struct.client** %6, align 8
  %46 = getelementptr inbounds %struct.client, %struct.client* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.client*, %struct.client** %6, align 8
  %50 = getelementptr inbounds %struct.client, %struct.client* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load %struct.client*, %struct.client** %6, align 8
  %55 = getelementptr inbounds %struct.client, %struct.client* %54, i32 0, i32 1
  %56 = load void (%struct.client*, i32, i8*)*, void (%struct.client*, i32, i8*)** %55, align 8
  %57 = load %struct.client*, %struct.client** %6, align 8
  %58 = load %struct.client*, %struct.client** %6, align 8
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  call void %56(%struct.client* %57, i32 1, i8* %60)
  br label %61

61:                                               ; preds = %53, %38
  %62 = load %struct.client*, %struct.client** %6, align 8
  %63 = getelementptr inbounds %struct.client, %struct.client* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MSG_STDIN, align 4
  %66 = call i32 @proc_send(i32 %64, i32 %65, i32 -1, i32* null, i32 0)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %35, %27, %17
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @proc_send(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
