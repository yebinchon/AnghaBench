; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_cevent.c_pipe_callback.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_cevent.c_pipe_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_8__*, i32)* }

@CEVENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"no handler for event type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pipe_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %7, align 8
  %15 = load i32, i32* @CEVENT_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CEVENT_SIZE, align 4
  %21 = call i32 @seaf_pipe_readn(i32 %19, i8* %18, i32 %20)
  %22 = load i32, i32* @CEVENT_SIZE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %51

25:                                               ; preds = %3
  %26 = bitcast i8* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %8, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_6__* @g_hash_table_lookup(i32 %29, i32 %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %12, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = icmp eq %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %40)
  store i32 1, i32* %11, align 4
  br label %51

42:                                               ; preds = %25
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %45(%struct.TYPE_8__* %46, i32 %49)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %42, %37, %24
  %52 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %55 [
    i32 0, label %54
    i32 1, label %54
  ]

54:                                               ; preds = %51, %51
  ret void

55:                                               ; preds = %51
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @seaf_pipe_readn(i32, i8*, i32) #2

declare dso_local %struct.TYPE_6__* @g_hash_table_lookup(i32, i32) #2

declare dso_local i32 @g_warning(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
