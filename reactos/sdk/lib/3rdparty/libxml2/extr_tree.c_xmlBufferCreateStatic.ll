; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufferCreateStatic.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufferCreateStatic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"creating buffer\00", align 1
@XML_BUFFER_ALLOC_IMMUTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @xmlBufferCreateStatic(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %35

13:                                               ; preds = %9
  %14 = call i64 @xmlMalloc(i32 4)
  %15 = inttoptr i64 %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %35

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @XML_BUFFER_ALLOC_IMMUTABLE, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %3, align 8
  br label %35

35:                                               ; preds = %20, %18, %12
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %36
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlTreeErrMemory(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
