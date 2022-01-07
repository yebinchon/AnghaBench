; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_add_to_close.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_add_to_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__, i32, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@LCLIENT_LENGTH = common dso_local global i32 0, align 4
@LCLIENT_NODES = common dso_local global i32 0, align 4
@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i64, i1)* @add_to_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_close(%struct.TYPE_14__* %0, i32* %1, i64 %2, i1 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32* %1, i32** %8, align 8
  %17 = zext i1 %3 to i8
  store i8 %17, i8* %9, align 1
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bit_by_bit_cmp(i32* %18, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @LCLIENT_LENGTH, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @LCLIENT_LENGTH, align 4
  %28 = sub i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %26, %4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %105, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @LCLIENT_NODES, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @LCLIENT_NODES, align 4
  %40 = mul i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 %43
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %12, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %50 = call i64 @is_timeout(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %104

52:                                               ; preds = %34
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %58 = call i64 @is_timeout(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %52
  %61 = load i8, i8* %9, align 1
  %62 = trunc i8 %61 to i1
  br i1 %62, label %103, label %63

63:                                               ; preds = %60
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %13, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %14, align 8
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %13, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %14, align 8
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @id_copy(i32 %82, i32* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = bitcast %struct.TYPE_12__* %86 to i8*
  %88 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 8, i1 false)
  %89 = call i32 (...) @unix_time()
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = call i32 @ip_reset(i32* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %102 = call i32 @memset(%struct.TYPE_13__* %101, i32 0, i32 40)
  br label %103

103:                                              ; preds = %79, %60
  store i32 0, i32* %5, align 4
  br label %109

104:                                              ; preds = %52, %34
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %30

108:                                              ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %103
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @bit_by_bit_cmp(i32*, i32) #1

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i32 @id_copy(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @ip_reset(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
