; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_DHT_getfriendip.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_DHT_getfriendip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@MAX_FRIEND_CLIENTS = common dso_local global i64 0, align 8
@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DHT_getfriendip(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = call i32 @ip_reset(i32* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %88, %3
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %18
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @id_equal(i32 %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %24
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %83, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @MAX_FRIEND_CLIENTS, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 %48
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %10, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @id_equal(i32 %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %40
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  store i64 0, i64* %12, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %11, align 8
  br label %59

59:                                               ; preds = %76, %56
  %60 = load i64, i64* %12, align 8
  %61 = icmp ult i64 %60, 2
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %67 = call i32 @is_timeout(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = bitcast %struct.TYPE_9__* %70 to i8*
  %74 = bitcast %struct.TYPE_9__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  store i32 1, i32* %4, align 4
  br label %92

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %11, align 8
  br label %59

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %40
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %36

86:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %92

87:                                               ; preds = %24
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %18

91:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %86, %69
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ip_reset(i32*) #1

declare dso_local i64 @id_equal(i32, i32*) #1

declare dso_local i32 @is_timeout(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
