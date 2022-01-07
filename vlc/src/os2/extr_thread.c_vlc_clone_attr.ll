; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_clone_attr.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_clone_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_thread = type { i8* (i8*)*, i32, i32, i32, i64, i32, i32, i64, i32*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@vlc_entry = common dso_local global i32 0, align 4
@PRTYS_THREAD = common dso_local global i32 0, align 4
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
  store %struct.vlc_thread** %0, %struct.vlc_thread*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* (i8*)* %2, i8* (i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = call %struct.vlc_thread* @malloc(i32 64)
  store %struct.vlc_thread* %13, %struct.vlc_thread** %12, align 8
  %14 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %15 = icmp eq %struct.vlc_thread* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %6, align 4
  br label %109

21:                                               ; preds = %5
  %22 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %23 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %24 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %23, i32 0, i32 0
  store i8* (i8*)* %22, i8* (i8*)** %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %27 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %26, i32 0, i32 9
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %30 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %32 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %34 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %33, i32 0, i32 3
  store i32 0, i32* %34, align 8
  %35 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %36 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %35, i32 0, i32 8
  store i32* null, i32** %36, align 8
  %37 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %38 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %37, i32 0, i32 6
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i64 @DosCreateEventSem(i32* null, i32* %38, i32 0, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %93

43:                                               ; preds = %21
  %44 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %45 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %44, i32 0, i32 5
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i64 @DosCreateEventSem(i32* null, i32* %45, i32 0, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %93

50:                                               ; preds = %43
  %51 = load i32, i32* @AF_LOCAL, align 4
  %52 = load i32, i32* @SOCK_STREAM, align 4
  %53 = call i64 @socket(i32 %51, i32 %52, i32 0)
  %54 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %55 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %57 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %93

61:                                               ; preds = %50
  %62 = load i32, i32* @vlc_entry, align 4
  %63 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %64 = call i64 @_beginthread(i32 %62, i32* null, i32 1048576, %struct.vlc_thread* %63)
  %65 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %66 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %65, i32 0, i32 7
  store i64 %64, i64* %66, align 8
  %67 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %68 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %93

73:                                               ; preds = %61
  %74 = load %struct.vlc_thread**, %struct.vlc_thread*** %7, align 8
  %75 = icmp ne %struct.vlc_thread** %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %78 = load %struct.vlc_thread**, %struct.vlc_thread*** %7, align 8
  store %struct.vlc_thread* %77, %struct.vlc_thread** %78, align 8
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* @PRTYS_THREAD, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @HIBYTE(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @LOBYTE(i32 %86)
  %88 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %89 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @DosSetPriority(i32 %83, i32 %85, i32 %87, i64 %90)
  br label %92

92:                                               ; preds = %82, %79
  store i32 0, i32* %6, align 4
  br label %109

93:                                               ; preds = %72, %60, %49, %42
  %94 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %95 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @soclose(i64 %96)
  %98 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %99 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @DosCloseEventSem(i32 %100)
  %102 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %103 = getelementptr inbounds %struct.vlc_thread, %struct.vlc_thread* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @DosCloseEventSem(i32 %104)
  %106 = load %struct.vlc_thread*, %struct.vlc_thread** %12, align 8
  %107 = call i32 @free(%struct.vlc_thread* %106)
  %108 = load i32, i32* @ENOMEM, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %93, %92, %19
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.vlc_thread* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @DosCreateEventSem(i32*, i32*, i32, i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @_beginthread(i32, i32*, i32, %struct.vlc_thread*) #1

declare dso_local i32 @DosSetPriority(i32, i32, i32, i64) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @soclose(i64) #1

declare dso_local i32 @DosCloseEventSem(i32) #1

declare dso_local i32 @free(%struct.vlc_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
