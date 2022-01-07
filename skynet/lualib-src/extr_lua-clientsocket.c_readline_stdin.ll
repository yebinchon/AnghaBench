; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-clientsocket.c_readline_stdin.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-clientsocket.c_readline_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i8**, i64, i64, i32 }

@stdin = common dso_local global i32 0, align 4
@QUEUE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @readline_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readline_stdin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.queue*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.queue*
  store %struct.queue* %8, %struct.queue** %3, align 8
  br label %9

9:                                                ; preds = %66, %1
  %10 = load i32, i32* @stdin, align 4
  %11 = call i32 @feof(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %70

14:                                               ; preds = %9
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %16 = load i32, i32* @stdin, align 4
  %17 = call i32* @fgets(i8* %15, i32 1024, i32 %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %14
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %23 = call i32 @strlen(i8* %22)
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i8* @malloc(i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load %struct.queue*, %struct.queue** %3, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 3
  %38 = call i32 @pthread_mutex_lock(i32* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.queue*, %struct.queue** %3, align 8
  %41 = getelementptr inbounds %struct.queue, %struct.queue* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load %struct.queue*, %struct.queue** %3, align 8
  %44 = getelementptr inbounds %struct.queue, %struct.queue* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* %39, i8** %46, align 8
  %47 = load %struct.queue*, %struct.queue** %3, align 8
  %48 = getelementptr inbounds %struct.queue, %struct.queue* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* @QUEUE_SIZE, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %21
  %54 = load %struct.queue*, %struct.queue** %3, align 8
  %55 = getelementptr inbounds %struct.queue, %struct.queue* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %21
  %57 = load %struct.queue*, %struct.queue** %3, align 8
  %58 = getelementptr inbounds %struct.queue, %struct.queue* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.queue*, %struct.queue** %3, align 8
  %61 = getelementptr inbounds %struct.queue, %struct.queue* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %56
  %67 = load %struct.queue*, %struct.queue** %3, align 8
  %68 = getelementptr inbounds %struct.queue, %struct.queue* %67, i32 0, i32 3
  %69 = call i32 @pthread_mutex_unlock(i32* %68)
  br label %9

70:                                               ; preds = %9
  ret i8* null
}

declare dso_local i32 @feof(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
