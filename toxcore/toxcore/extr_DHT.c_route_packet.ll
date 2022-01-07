; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_route_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_route_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }

@LCLIENT_LIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @route_packet(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %72, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @LCLIENT_LIST, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @id_equal(i32* %17, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %16
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %31
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %11, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = call i64 @ip_isset(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %27
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sendpacket(i32 %42, i32 %49, i32* %46, i32 %47)
  store i32 %50, i32* %5, align 4
  br label %76

51:                                               ; preds = %27
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = call i64 @ip_isset(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sendpacket(i32 %61, i32 %68, i32* %65, i32 %66)
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %51
  br label %75

71:                                               ; preds = %16
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %12

75:                                               ; preds = %70, %12
  store i32 -1, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %58, %39
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @id_equal(i32*, i32) #1

declare dso_local i64 @ip_isset(i32*) #1

declare dso_local i32 @sendpacket(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
