; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_serialize_functions.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_serialize_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ATTR_ENCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"AlignSize\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SIZE_T\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Encode\00", align 1
@ATTR_DECODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_serialize_functions(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ATTR_ENCODE, align 4
  %11 = call i64 @is_attr(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = call i32 @write_serialize_function(i32* %14, %struct.TYPE_6__* %15, %struct.TYPE_6__* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = call i32 @write_serialize_function(i32* %18, %struct.TYPE_6__* %19, %struct.TYPE_6__* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null)
  br label %22

22:                                               ; preds = %13, %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ATTR_DECODE, align 4
  %27 = call i64 @is_attr(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = call i32 @write_serialize_function(i32* %30, %struct.TYPE_6__* %31, %struct.TYPE_6__* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = call i32 @write_serialize_function(i32* %34, %struct.TYPE_6__* %35, %struct.TYPE_6__* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* null)
  br label %38

38:                                               ; preds = %29, %22
  ret void
}

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local i32 @write_serialize_function(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
