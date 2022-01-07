; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-fn.c_server_lock_client.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-fn.c_server_lock_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CLIENT_CONTROL = common dso_local global i32 0, align 4
@CLIENT_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"lock-command\00", align 1
@MAX_IMSGSIZE = common dso_local global i64 0, align 8
@IMSG_HEADER_SIZE = common dso_local global i64 0, align 8
@TTYC_SMCUP = common dso_local global i32 0, align 4
@TTYC_CLEAR = common dso_local global i32 0, align 4
@TTYC_E3 = common dso_local global i32 0, align 4
@MSG_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_lock_client(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca i8*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CLIENT_CONTROL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  %12 = load %struct.client*, %struct.client** %2, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CLIENT_SUSPENDED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %84

19:                                               ; preds = %11
  %20 = load %struct.client*, %struct.client** %2, align 8
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @options_get_string(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %19
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = add nsw i64 %32, 1
  %34 = load i64, i64* @MAX_IMSGSIZE, align 8
  %35 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %36 = sub nsw i64 %34, %35
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %19
  br label %84

39:                                               ; preds = %30
  %40 = load %struct.client*, %struct.client** %2, align 8
  %41 = getelementptr inbounds %struct.client, %struct.client* %40, i32 0, i32 2
  %42 = call i32 @tty_stop_tty(%struct.TYPE_5__* %41)
  %43 = load %struct.client*, %struct.client** %2, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 2
  %45 = load %struct.client*, %struct.client** %2, align 8
  %46 = getelementptr inbounds %struct.client, %struct.client* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TTYC_SMCUP, align 4
  %50 = call i32 @tty_term_string(i32 %48, i32 %49)
  %51 = call i32 @tty_raw(%struct.TYPE_5__* %44, i32 %50)
  %52 = load %struct.client*, %struct.client** %2, align 8
  %53 = getelementptr inbounds %struct.client, %struct.client* %52, i32 0, i32 2
  %54 = load %struct.client*, %struct.client** %2, align 8
  %55 = getelementptr inbounds %struct.client, %struct.client* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TTYC_CLEAR, align 4
  %59 = call i32 @tty_term_string(i32 %57, i32 %58)
  %60 = call i32 @tty_raw(%struct.TYPE_5__* %53, i32 %59)
  %61 = load %struct.client*, %struct.client** %2, align 8
  %62 = getelementptr inbounds %struct.client, %struct.client* %61, i32 0, i32 2
  %63 = load %struct.client*, %struct.client** %2, align 8
  %64 = getelementptr inbounds %struct.client, %struct.client* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TTYC_E3, align 4
  %68 = call i32 @tty_term_string(i32 %66, i32 %67)
  %69 = call i32 @tty_raw(%struct.TYPE_5__* %62, i32 %68)
  %70 = load i32, i32* @CLIENT_SUSPENDED, align 4
  %71 = load %struct.client*, %struct.client** %2, align 8
  %72 = getelementptr inbounds %struct.client, %struct.client* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.client*, %struct.client** %2, align 8
  %76 = getelementptr inbounds %struct.client, %struct.client* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MSG_LOCK, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = add nsw i64 %81, 1
  %83 = call i32 @proc_send(i32 %77, i32 %78, i32 -1, i8* %79, i64 %82)
  br label %84

84:                                               ; preds = %39, %38, %18, %10
  ret void
}

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tty_stop_tty(%struct.TYPE_5__*) #1

declare dso_local i32 @tty_raw(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tty_term_string(i32, i32) #1

declare dso_local i32 @proc_send(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
