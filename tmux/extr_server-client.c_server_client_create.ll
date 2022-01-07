; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_create.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i64, i32*, i32*, i32, i32*, %struct.TYPE_3__, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@server_proc = common dso_local global i32 0, align 4
@server_client_dispatch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"gettimeofday failed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@CLIENT_FOCUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@server_client_repeat_timer = common dso_local global i32 0, align 4
@server_client_click_timer = common dso_local global i32 0, align 4
@clients = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"new client %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.client* @server_client_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.client*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @setblocking(i32 %4, i32 0)
  %6 = call %struct.client* @xcalloc(i32 1, i32 168)
  store %struct.client* %6, %struct.client** %3, align 8
  %7 = load %struct.client*, %struct.client** %3, align 8
  %8 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @server_proc, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @server_client_dispatch, align 4
  %12 = load %struct.client*, %struct.client** %3, align 8
  %13 = call i32 @proc_add_peer(i32 %9, i32 %10, i32 %11, %struct.client* %12)
  %14 = load %struct.client*, %struct.client** %3, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 23
  store i32 %13, i32* %15, align 4
  %16 = load %struct.client*, %struct.client** %3, align 8
  %17 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 21
  %18 = call i64 @gettimeofday(i32* %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.client*, %struct.client** %3, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 22
  %25 = load %struct.client*, %struct.client** %3, align 8
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 21
  %27 = call i32 @memcpy(i32* %24, i32* %26, i32 4)
  %28 = call i32 (...) @environ_create()
  %29 = load %struct.client*, %struct.client** %3, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 20
  store i32 %28, i32* %30, align 8
  %31 = load %struct.client*, %struct.client** %3, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  %33 = load %struct.client*, %struct.client** %3, align 8
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 19
  store i32* null, i32** %34, align 8
  %35 = load %struct.client*, %struct.client** %3, align 8
  %36 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 18
  %37 = call i32 @TAILQ_INIT(i32* %36)
  %38 = call i8* (...) @evbuffer_new()
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.client*, %struct.client** %3, align 8
  %41 = getelementptr inbounds %struct.client, %struct.client* %40, i32 0, i32 17
  store i32* %39, i32** %41, align 8
  %42 = load %struct.client*, %struct.client** %3, align 8
  %43 = getelementptr inbounds %struct.client, %struct.client* %42, i32 0, i32 17
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %22
  %47 = call i32 @fatalx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %22
  %49 = call i8* (...) @evbuffer_new()
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.client*, %struct.client** %3, align 8
  %52 = getelementptr inbounds %struct.client, %struct.client* %51, i32 0, i32 16
  store i32* %50, i32** %52, align 8
  %53 = load %struct.client*, %struct.client** %3, align 8
  %54 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 16
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 @fatalx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %48
  %60 = call i8* (...) @evbuffer_new()
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.client*, %struct.client** %3, align 8
  %63 = getelementptr inbounds %struct.client, %struct.client* %62, i32 0, i32 15
  store i32* %61, i32** %63, align 8
  %64 = load %struct.client*, %struct.client** %3, align 8
  %65 = getelementptr inbounds %struct.client, %struct.client* %64, i32 0, i32 15
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 @fatalx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %59
  %71 = load %struct.client*, %struct.client** %3, align 8
  %72 = getelementptr inbounds %struct.client, %struct.client* %71, i32 0, i32 11
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 -1, i32* %73, align 8
  %74 = load %struct.client*, %struct.client** %3, align 8
  %75 = getelementptr inbounds %struct.client, %struct.client* %74, i32 0, i32 14
  store i32* null, i32** %75, align 8
  %76 = load %struct.client*, %struct.client** %3, align 8
  %77 = getelementptr inbounds %struct.client, %struct.client* %76, i32 0, i32 13
  store i32* null, i32** %77, align 8
  %78 = load %struct.client*, %struct.client** %3, align 8
  %79 = getelementptr inbounds %struct.client, %struct.client* %78, i32 0, i32 12
  store i32* null, i32** %79, align 8
  %80 = load %struct.client*, %struct.client** %3, align 8
  %81 = getelementptr inbounds %struct.client, %struct.client* %80, i32 0, i32 11
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 80, i32* %82, align 4
  %83 = load %struct.client*, %struct.client** %3, align 8
  %84 = getelementptr inbounds %struct.client, %struct.client* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 24, i32* %85, align 8
  %86 = load %struct.client*, %struct.client** %3, align 8
  %87 = call i32 @status_init(%struct.client* %86)
  %88 = load %struct.client*, %struct.client** %3, align 8
  %89 = getelementptr inbounds %struct.client, %struct.client* %88, i32 0, i32 10
  store i32* null, i32** %89, align 8
  %90 = load %struct.client*, %struct.client** %3, align 8
  %91 = getelementptr inbounds %struct.client, %struct.client* %90, i32 0, i32 9
  %92 = call i32 @TAILQ_INIT(i32* %91)
  %93 = load %struct.client*, %struct.client** %3, align 8
  %94 = getelementptr inbounds %struct.client, %struct.client* %93, i32 0, i32 8
  store i32* null, i32** %94, align 8
  %95 = load %struct.client*, %struct.client** %3, align 8
  %96 = getelementptr inbounds %struct.client, %struct.client* %95, i32 0, i32 7
  store i32* null, i32** %96, align 8
  %97 = load %struct.client*, %struct.client** %3, align 8
  %98 = getelementptr inbounds %struct.client, %struct.client* %97, i32 0, i32 6
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @CLIENT_FOCUSED, align 4
  %100 = load %struct.client*, %struct.client** %3, align 8
  %101 = getelementptr inbounds %struct.client, %struct.client* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = call %struct.TYPE_4__* @key_bindings_get_table(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %105 = load %struct.client*, %struct.client** %3, align 8
  %106 = getelementptr inbounds %struct.client, %struct.client* %105, i32 0, i32 4
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %106, align 8
  %107 = load %struct.client*, %struct.client** %3, align 8
  %108 = getelementptr inbounds %struct.client, %struct.client* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.client*, %struct.client** %3, align 8
  %114 = getelementptr inbounds %struct.client, %struct.client* %113, i32 0, i32 3
  %115 = load i32, i32* @server_client_repeat_timer, align 4
  %116 = load %struct.client*, %struct.client** %3, align 8
  %117 = call i32 @evtimer_set(i32* %114, i32 %115, %struct.client* %116)
  %118 = load %struct.client*, %struct.client** %3, align 8
  %119 = getelementptr inbounds %struct.client, %struct.client* %118, i32 0, i32 2
  %120 = load i32, i32* @server_client_click_timer, align 4
  %121 = load %struct.client*, %struct.client** %3, align 8
  %122 = call i32 @evtimer_set(i32* %119, i32 %120, %struct.client* %121)
  %123 = load %struct.client*, %struct.client** %3, align 8
  %124 = load i32, i32* @entry, align 4
  %125 = call i32 @TAILQ_INSERT_TAIL(i32* @clients, %struct.client* %123, i32 %124)
  %126 = load %struct.client*, %struct.client** %3, align 8
  %127 = call i32 @log_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.client* %126)
  %128 = load %struct.client*, %struct.client** %3, align 8
  ret %struct.client* %128
}

declare dso_local i32 @setblocking(i32, i32) #1

declare dso_local %struct.client* @xcalloc(i32, i32) #1

declare dso_local i32 @proc_add_peer(i32, i32, i32, %struct.client*) #1

declare dso_local i64 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @environ_create(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @evbuffer_new(...) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @status_init(%struct.client*) #1

declare dso_local %struct.TYPE_4__* @key_bindings_get_table(i8*, i32) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.client*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.client*, i32) #1

declare dso_local i32 @log_debug(i8*, %struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
