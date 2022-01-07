; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, %struct.session* }
%struct.session = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"default-shell\00", align 1
@global_s_options = common dso_local global i32 0, align 4
@MSG_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_client_exec(%struct.client* %0, i8* %1) #0 {
  %3 = alloca %struct.client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.client*, %struct.client** %3, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 1
  %12 = load %struct.session*, %struct.session** %11, align 8
  store %struct.session* %12, %struct.session** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %63

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load %struct.session*, %struct.session** %5, align 8
  %24 = icmp ne %struct.session* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.session*, %struct.session** %5, align 8
  %27 = getelementptr inbounds %struct.session, %struct.session* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @options_get_string(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  br label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @global_s_options, align 4
  %32 = call i8* @options_get_string(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %38, %39
  %41 = call i8* @xmalloc(i64 %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load %struct.client*, %struct.client** %3, align 8
  %53 = getelementptr inbounds %struct.client, %struct.client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MSG_EXEC, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @proc_send(i32 %54, i32 %55, i32 -1, i8* %56, i64 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %33, %17
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @proc_send(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
