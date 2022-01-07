; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_oob_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_oob_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 (i32, i32*, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32)* @tcp_oob_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_oob_callback(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %73

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %11, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32* @get_tcp_connection(%struct.TYPE_6__* %28, i32 %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %73

34:                                               ; preds = %19
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @find_tcp_connection_to(%struct.TYPE_6__* %35, i32* %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32* @get_connection(%struct.TYPE_6__* %38, i32 %39)
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %34
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @tcp_connection_in_conn(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @tcp_data_callback(i8* %49, i32 %50, i32 0, i32* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %73

54:                                               ; preds = %43, %34
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32 (i32, i32*, i32, i32*, i32)*, i32 (i32, i32*, i32, i32*, i32)** %56, align 8
  %58 = icmp ne i32 (i32, i32*, i32, i32*, i32)* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32 (i32, i32*, i32, i32*, i32)*, i32 (i32, i32*, i32, i32*, i32)** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 %62(i32 %65, i32* %66, i32 %67, i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %54
  br label %72

72:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %48, %33, %18
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32* @get_tcp_connection(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @find_tcp_connection_to(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @get_connection(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @tcp_connection_in_conn(i32*, i32) #1

declare dso_local i32 @tcp_data_callback(i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
