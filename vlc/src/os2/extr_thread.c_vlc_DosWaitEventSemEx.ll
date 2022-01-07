; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_DosWaitEventSemEx.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_DosWaitEventSemEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.vlc_thread = type { i64, i32 }

@NULLHANDLE = common dso_local global i64 0, align 8
@DCMW_WAIT_ANY = common dso_local global i32 0, align 4
@ERROR_INTERRUPT = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @vlc_DosWaitEventSemEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_DosWaitEventSemEx(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.TYPE_3__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlc_thread*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call %struct.vlc_thread* (...) @vlc_thread_self()
  store %struct.vlc_thread* %12, %struct.vlc_thread** %11, align 8
  %13 = load %struct.vlc_thread*, %struct.vlc_thread** %11, align 8
  %14 = icmp eq %struct.vlc_thread* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.vlc_thread*, %struct.vlc_thread** %11, align 8
  %17 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15, %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @NULLHANDLE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DosWaitEventSem(i64 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @DosSleep(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %85

31:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @NULLHANDLE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %7, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %7, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 16
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %35, %31
  %49 = load %struct.vlc_thread*, %struct.vlc_thread** %11, align 8
  %50 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %7, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %7, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 65535, i32* %60, align 16
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %65 = load i32, i32* @DCMW_WAIT_ANY, align 4
  %66 = call i32 @DosCreateMuxWaitSem(i32* null, i32* %6, i32 %63, %struct.TYPE_3__* %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @DosWaitMuxWaitSem(i32 %67, i32 %68, i32* %8)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @DosCloseMuxWaitSem(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %48
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %85

76:                                               ; preds = %48
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 65535
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.vlc_thread*, %struct.vlc_thread** %11, align 8
  %81 = call i32 @vlc_cancel_self(%struct.vlc_thread* %80)
  %82 = load i32, i32* @ERROR_INTERRUPT, align 4
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @NO_ERROR, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %79, %74, %28, %24
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.vlc_thread* @vlc_thread_self(...) #1

declare dso_local i32 @DosWaitEventSem(i64, i32) #1

declare dso_local i32 @DosSleep(i32) #1

declare dso_local i32 @DosCreateMuxWaitSem(i32*, i32*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @DosWaitMuxWaitSem(i32, i32, i32*) #1

declare dso_local i32 @DosCloseMuxWaitSem(i32) #1

declare dso_local i32 @vlc_cancel_self(%struct.vlc_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
