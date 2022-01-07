; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-clientsocket.c_lreadstdin.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-clientsocket.c_lreadstdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i64, i64, i8**, i32 }

@QUEUE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lreadstdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lreadstdin(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_upvalueindex(i32 1)
  %8 = call %struct.queue* @lua_touserdata(i32* %6, i32 %7)
  store %struct.queue* %8, %struct.queue** %4, align 8
  %9 = load %struct.queue*, %struct.queue** %4, align 8
  %10 = getelementptr inbounds %struct.queue, %struct.queue* %9, i32 0, i32 3
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.queue*, %struct.queue** %4, align 8
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.queue*, %struct.queue** %4, align 8
  %16 = getelementptr inbounds %struct.queue, %struct.queue* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.queue*, %struct.queue** %4, align 8
  %21 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 3
  %22 = call i32 @pthread_mutex_unlock(i32* %21)
  store i32 0, i32* %2, align 4
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.queue*, %struct.queue** %4, align 8
  %25 = getelementptr inbounds %struct.queue, %struct.queue* %24, i32 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = load %struct.queue*, %struct.queue** %4, align 8
  %28 = getelementptr inbounds %struct.queue, %struct.queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %5, align 8
  %32 = load %struct.queue*, %struct.queue** %4, align 8
  %33 = getelementptr inbounds %struct.queue, %struct.queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* @QUEUE_SIZE, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load %struct.queue*, %struct.queue** %4, align 8
  %40 = getelementptr inbounds %struct.queue, %struct.queue* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %23
  %42 = load %struct.queue*, %struct.queue** %4, align 8
  %43 = getelementptr inbounds %struct.queue, %struct.queue* %42, i32 0, i32 3
  %44 = call i32 @pthread_mutex_unlock(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @lua_pushstring(i32* %45, i8* %46)
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @free(i8* %48)
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %41, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.queue* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
