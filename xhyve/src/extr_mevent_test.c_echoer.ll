; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_mevent_test.c_echoer.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_mevent_test.c_echoer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esync = type { i32, i32 }
%struct.mevent = type { i32 }

@EVF_READ = common dso_local global i32 0, align 4
@echoer_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not allocate echoer event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @echoer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @echoer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.esync, align 4
  %4 = alloca %struct.mevent*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = getelementptr inbounds %struct.esync, %struct.esync* %3, i32 0, i32 1
  %12 = call i32 @pthread_mutex_init(i32* %11, i32* null)
  %13 = getelementptr inbounds %struct.esync, %struct.esync* %3, i32 0, i32 0
  %14 = call i32 @pthread_cond_init(i32* %13, i32* null)
  %15 = getelementptr inbounds %struct.esync, %struct.esync* %3, i32 0, i32 1
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EVF_READ, align 4
  %19 = load i32, i32* @echoer_callback, align 4
  %20 = call %struct.mevent* @mevent_add(i32 %17, i32 %18, i32 %19, %struct.esync* %3)
  store %struct.mevent* %20, %struct.mevent** %4, align 8
  %21 = load %struct.mevent*, %struct.mevent** %4, align 8
  %22 = icmp eq %struct.mevent* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %48, %26
  %28 = getelementptr inbounds %struct.esync, %struct.esync* %3, i32 0, i32 0
  %29 = getelementptr inbounds %struct.esync, %struct.esync* %3, i32 0, i32 1
  %30 = call i32 @pthread_cond_wait(i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %36 = call i32 @read(i32 %34, i8* %35, i32 128)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @write(i32 %40, i8* %41, i32 %42)
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @write(i32 0, i8* %44, i32 %45)
  br label %48

47:                                               ; preds = %33
  br label %49

48:                                               ; preds = %39
  br label %27

49:                                               ; preds = %47, %27
  %50 = load %struct.mevent*, %struct.mevent** %4, align 8
  %51 = call i32 @mevent_delete_close(%struct.mevent* %50)
  %52 = getelementptr inbounds %struct.esync, %struct.esync* %3, i32 0, i32 1
  %53 = call i32 @pthread_mutex_unlock(i32* %52)
  %54 = getelementptr inbounds %struct.esync, %struct.esync* %3, i32 0, i32 1
  %55 = call i32 @pthread_mutex_destroy(i32* %54)
  %56 = getelementptr inbounds %struct.esync, %struct.esync* %3, i32 0, i32 0
  %57 = call i32 @pthread_cond_destroy(i32* %56)
  ret i8* null
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.mevent* @mevent_add(i32, i32, i32, %struct.esync*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @mevent_delete_close(%struct.mevent*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
