; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_get_cwd.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_get_cwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.client = type { i8*, %struct.session* }
%struct.session = type { i8* }

@cfg_finished = common dso_local global i32 0, align 4
@cfg_client = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @server_client_get_cwd(%struct.client* %0, %struct.session* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca i8*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %struct.session* %1, %struct.session** %5, align 8
  %7 = load i32, i32* @cfg_finished, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_client, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_client, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %3, align 8
  br label %68

16:                                               ; preds = %9, %2
  %17 = load %struct.client*, %struct.client** %4, align 8
  %18 = icmp ne %struct.client* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.client*, %struct.client** %4, align 8
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 1
  %22 = load %struct.session*, %struct.session** %21, align 8
  %23 = icmp eq %struct.session* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.client*, %struct.client** %4, align 8
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.client*, %struct.client** %4, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %3, align 8
  br label %68

33:                                               ; preds = %24, %19, %16
  %34 = load %struct.session*, %struct.session** %5, align 8
  %35 = icmp ne %struct.session* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.session*, %struct.session** %5, align 8
  %38 = getelementptr inbounds %struct.session, %struct.session* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.session*, %struct.session** %5, align 8
  %43 = getelementptr inbounds %struct.session, %struct.session* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %3, align 8
  br label %68

45:                                               ; preds = %36, %33
  %46 = load %struct.client*, %struct.client** %4, align 8
  %47 = icmp ne %struct.client* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load %struct.client*, %struct.client** %4, align 8
  %50 = getelementptr inbounds %struct.client, %struct.client* %49, i32 0, i32 1
  %51 = load %struct.session*, %struct.session** %50, align 8
  store %struct.session* %51, %struct.session** %5, align 8
  %52 = icmp ne %struct.session* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.session*, %struct.session** %5, align 8
  %55 = getelementptr inbounds %struct.session, %struct.session* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.session*, %struct.session** %5, align 8
  %60 = getelementptr inbounds %struct.session, %struct.session* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %3, align 8
  br label %68

62:                                               ; preds = %53, %48, %45
  %63 = call i8* (...) @find_home()
  store i8* %63, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %3, align 8
  br label %68

67:                                               ; preds = %62
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %68

68:                                               ; preds = %67, %65, %58, %41, %29, %12
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

declare dso_local i8* @find_home(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
