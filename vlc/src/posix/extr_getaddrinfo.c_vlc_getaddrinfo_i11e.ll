; ModuleID = '/home/carl/AnghaBench/vlc/src/posix/extr_getaddrinfo.c_vlc_getaddrinfo_i11e.c'
source_filename = "/home/carl/AnghaBench/vlc/src/posix/extr_getaddrinfo.c_vlc_getaddrinfo_i11e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }
%struct.vlc_gai_req = type { i8*, i8*, i32, %struct.addrinfo*, i32, %struct.addrinfo* }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EAI_NONAME = common dso_local global i32 0, align 4
@vlc_gai_thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_getaddrinfo_i11e(i8* %0, i32 %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo**, align 8
  %10 = alloca %struct.vlc_gai_req, align 8
  %11 = alloca [6 x i8], align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %9, align 8
  %13 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 0
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 1
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 3
  store %struct.addrinfo* null, %struct.addrinfo** %17, align 8
  %18 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 4
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 5
  %20 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %20, %struct.addrinfo** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @snprintf(i8* %24, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = icmp uge i64 %26, 6
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EAI_NONAME, align 4
  store i32 %29, i32* %5, align 4
  br label %58

30:                                               ; preds = %23
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %32 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  br label %33

33:                                               ; preds = %30, %4
  %34 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 4
  %35 = call i32 @vlc_sem_init(i32* %34, i32 0)
  %36 = load i32, i32* @vlc_gai_thread, align 4
  %37 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %38 = call i64 @vlc_clone(i32* %12, i32 %36, %struct.vlc_gai_req* %10, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 4
  %42 = call i32 @vlc_sem_destroy(i32* %41)
  %43 = load i32, i32* @EAI_SYSTEM, align 4
  store i32 %43, i32* %5, align 4
  br label %58

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 4
  %46 = call i32 @vlc_sem_wait_i11e(i32* %45)
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @vlc_cancel(i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @vlc_join(i32 %49, i32* null)
  %51 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 4
  %52 = call i32 @vlc_sem_destroy(i32* %51)
  %53 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 3
  %54 = load %struct.addrinfo*, %struct.addrinfo** %53, align 8
  %55 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  store %struct.addrinfo* %54, %struct.addrinfo** %55, align 8
  %56 = getelementptr inbounds %struct.vlc_gai_req, %struct.vlc_gai_req* %10, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %44, %40, %28
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.vlc_gai_req*, i32) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32 @vlc_sem_wait_i11e(i32*) #1

declare dso_local i32 @vlc_cancel(i32) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
