; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/nameserverlist/extr_nameserverlist.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/nameserverlist/extr_nameserverlist.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to alloc %d bytes.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%d Bytes allocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%c%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = call i32 @GetNetworkParams(%struct.TYPE_9__* null, i64* %6)
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.TYPE_9__* @malloc(i64 %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = trunc i32 %16 to i8
  %18 = call i32 (i8*, i8, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8 signext %17)
  store i32 1, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = trunc i64 %20 to i32
  %22 = trunc i32 %21 to i8
  %23 = call i32 (i8*, i8, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8 signext %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = call i32 @GetNetworkParams(%struct.TYPE_9__* %24, i64* %6)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  br label %28

28:                                               ; preds = %45, %19
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp eq %struct.TYPE_8__* %32, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 42, i32 32
  %39 = trunc i32 %38 to i8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, i8, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8 signext %39, i32 %43)
  br label %45

45:                                               ; preds = %31
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %8, align 8
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = call i32 @free(%struct.TYPE_9__* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @GetNetworkParams(%struct.TYPE_9__*, i64*) #1

declare dso_local %struct.TYPE_9__* @malloc(i64) #1

declare dso_local i32 @printf(i8*, i8 signext, ...) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
