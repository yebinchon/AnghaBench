; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_generate_random.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_generate_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32 }
%struct.tms = type { i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_random(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca %struct.tms, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @read(i32 %17, i32* %18, i32 32)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %71

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32*, i32** %2, align 8
  store i32* %27, i32** %6, align 8
  %28 = call i32 (...) @getpid()
  %29 = call i32 (...) @getppid()
  %30 = shl i32 %29, 16
  %31 = or i32 %28, %30
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = call i32 (...) @getuid()
  %35 = call i32 (...) @getgid()
  %36 = shl i32 %35, 16
  %37 = or i32 %34, %36
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = call i32 @times(%struct.tms* %4)
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = bitcast i32* %44 to %struct.timeval*
  %46 = call i32 @gettimeofday(%struct.timeval* %45, i32* null)
  %47 = call i32 @stat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %3)
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 7
  store i32 %57, i32* %59, align 4
  %60 = call i32 @MD5_Init(i32* %5)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @MD5_Update(i32* %5, i32* %61, i32 16)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @MD5_Final(i32* %63, i32* %5)
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 16
  %67 = call i32 @MD5_Update(i32* %5, i32* %66, i32 16)
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 16
  %70 = call i32 @MD5_Final(i32* %69, i32* %5)
  br label %71

71:                                               ; preds = %26, %24
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @times(%struct.tms*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @MD5_Init(i32*) #1

declare dso_local i32 @MD5_Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5_Final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
