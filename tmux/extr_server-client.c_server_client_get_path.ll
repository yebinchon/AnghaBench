; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_get_path.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @server_client_get_path(%struct.client* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @xstrdup(i8* %19)
  store i8* %20, i8** %6, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.client*, %struct.client** %4, align 8
  %23 = call i32 @server_client_get_cwd(%struct.client* %22, i32* null)
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @xasprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @realpath(i8* %27, i8* %13)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @free(i8* %33)
  %35 = call i8* @xstrdup(i8* %13)
  store i8* %35, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @xasprintf(i8**, i8*, i32, i8*) #2

declare dso_local i32 @server_client_get_cwd(%struct.client*, i32*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
