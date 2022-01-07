; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_clone_attr.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_clone_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_thread = type { i8* (i8*)*, i32, i32*, %struct.TYPE_2__, i32*, i32, i8* }
%struct.TYPE_2__ = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@vlc_entry = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_thread**, i32, i8* (i8*)*, i8*, i32)* @vlc_clone_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_clone_attr(%struct.vlc_thread** %0, i32 %1, i8* (i8*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_thread**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8* (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vlc_thread*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.vlc_thread** %0, %struct.vlc_thread*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* (i8*)* %2, i8* (i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = call %struct.vlc_thread* @malloc(i32 64)
  store %struct.vlc_thread* %15, %struct.vlc_thread** %12, align 8
  %16 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %17 = icmp eq %struct.vlc_thread* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %6, align 4
  br label %84

23:                                               ; preds = %5
  %24 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %25 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %26 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %25, i32 0, i32 0
  store i8* (i8*)* %24, i8* (i8*)** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %29 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %31 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %33 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %32, i32 0, i32 5
  %34 = call i32 @atomic_init(i32* %33, i32 0)
  %35 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %36 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %38 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %41 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @InitializeCriticalSection(i32* %42)
  %44 = load i32, i32* @vlc_entry, align 4
  %45 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %46 = call i64 @_beginthreadex(i32* null, i32 0, i32 %44, %struct.vlc_thread* %45, i32 0, i32* null)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %23
  %50 = load i32, i32* @errno, align 4
  store i32 %50, i32* %14, align 4
  %51 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %52 = call i32 @free(%struct.vlc_thread* %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %84

54:                                               ; preds = %23
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* %13, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @CloseHandle(i32* %59)
  %61 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %62 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  br label %68

63:                                               ; preds = %54
  %64 = load i64, i64* %13, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %67 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.vlc_thread**, %struct.vlc_thread*** %7, align 8
  %70 = icmp ne %struct.vlc_thread** %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %73 = load %struct.vlc_thread**, %struct.vlc_thread*** %7, align 8
  store %struct.vlc_thread* %72, %struct.vlc_thread** %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %79 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @SetThreadPriority(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %74
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %49, %21
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.vlc_thread* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @InitializeCriticalSection(i32*) #1

declare dso_local i64 @_beginthreadex(i32*, i32, i32, %struct.vlc_thread*, i32, i32*) #1

declare dso_local i32 @free(%struct.vlc_thread*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @SetThreadPriority(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
